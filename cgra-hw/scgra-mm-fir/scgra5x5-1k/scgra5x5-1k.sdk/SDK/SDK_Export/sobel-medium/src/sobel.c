/*****************************************************************************/
/*
 * This is a vector addition program. While the addition part is
 * performed on FPGA and the rest is handled by CPU. The basic flow
 * works in the following step:
 * 1) Software initialization data and DMA devices.
 * 2) Move source data from CPU to FPGA through DMA.
 * 3) Hardware computation on FPGA. When it is done, it send an interruption to CPU.
 * 4) CPU get to fetch the result when it gets the interruption signal.
 * 5) Software complete the program.
 *
 *****************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include "xscutimer.h"
#include "common.h"

XDmaPs XDma;
XScuGic XGic;
XScuTimer PS_Timer;

int Dma_Channel0_Flag=0;
int Computation_Done_Flag=0;
int PS_Timer_Flag = 0;
int Overflow_Cnt=0;

u32 t0;
u32 t1;
long int cnt0;
long int cnt1;

unsigned char Fig_In[R][C];
unsigned char ARM_Fig_Out[R][C];
int FPGA_Fig_Out[R][C];
int Const_Num=5;

int Scu_Timer_Setup(XScuTimer *PS_TimerPtr, u16 Timer_Device_ID);
int Interruption_Setup(XScuGic *XGic_Ptr, XDmaPs *XDma_Ptr);
void Scu_Timer_Start(XScuTimer * PS_TimerPtr);
int XDma_PS_Setup(u16 DeviceId, XDmaPs* XDma_Ptr);
void Timer_Intr_Handler(void *CallBackRef);
void GPIO_Move(int* Data_Ptr, u32 Buffer_Addr, int Length, int Is_Out);
int XDma_PS_Move(u32 Src_Addr, u32 Dst_Addr, int Length, unsigned int Channel);
void Dma_Done_Handler(unsigned int Channel, XDmaPs_Cmd *Dma_Cmd, void *CallbackRef);
void Computation_Done_ISR(void *Any_Ptr);
void CPU_Compute();
void FPGA_Compute();
int FPGA_Acc();
int Verification();
void Init();
void PS_Timer_Start();
long long PS_Timer_Return();
void Load_Ctrl_Words();
void Sobel_Kernel();
void Input_Pack(int rit, int cit);
void Output_Depack(int rit, int cit);
void FPGA_Kernel(u32 Block_In_Addr, u32 Block_Out_Addr, int PE_En);

/*----------------------------------------------------------------------------------------
 * This program assumes that neighboring work-items only have overlap in the first row.
 * As a result, the first row of data are assumed to be invalid and they are written to
 * location 0 of the output buffer. However, we can't use the same method to solve the column
 * overlap between neighboring work-items. As four pixels are integrated as an integer while only
 * the first column of pixels are invalid, we can't have the integer output of a work-item overlap
 * previous work-item or written to somewhere invalid. Although we may allocate more memory location
 * to handle multiple work-items in each kernel. Picking the valid output pixels will cost a lot.
 * --------------------------------------------------------------------------------------*/
int main() {

	printf("--------------------------------------------------------------------------------\n\r");
	printf("Sobel Edge Detector Figure Size is %d x %d !\n\r", R, C);
	printf("--------------------------------------------------------------------------------\n\r");

	Init();

	Scu_Timer_Setup(&PS_Timer, TIMER_DEVICE_ID);

	Interruption_Setup(&XGic, &XDma);

	Scu_Timer_Start(&PS_Timer);

	FPGA_Acc();

	CPU_Compute();

	Verification();

	return XST_SUCCESS;
}

void Init(){

	int i;
	int j;
	for(i=0; i<R; i++){
		for(j=0; j<C; j++){
			Fig_In[i][j] = (i+j)%256;
		}
	}

}

void PS_Timer_Start(){

	cnt0 = Overflow_Cnt;
	t0 = XScuTimer_GetCounterValue(&PS_Timer);

}

long long PS_Timer_Return(){

	long long cycles;
	t1 = XScuTimer_GetCounterValue(&PS_Timer);
	cnt1 = Overflow_Cnt;
	cycles = (cnt1 - cnt0)*TIMER_LOAD_VALUE + (int)t0 - (int) t1;
	return cycles;

}

/* ------------------------------------------------------------
 * Move the controlling words to the BRAM using GPIO.
 * They could be removed in future as we may initialize it at
 * bit stream updating step.
 ------------------------------------------------------------*/
void Load_Ctrl_Words(){

	int i;
	for (i=0; i<INST_NUM; i++) {
		Xil_Out32(Bram2_Base_Addr + i*4, SrcMemCtrlWords[i]);
		Xil_Out32(Bram3_Base_Addr + i*4, ResultMemCtrlWords[i]);
	}

}

/* When the input data size is small, GPIO is used for moving data. */
void GPIO_Move(int* Data_Ptr, u32 Buffer_Addr, int Length, int Is_Out){

	int i;
	if(Is_Out){
		for(i=0; i<Length; i++){
			Xil_Out32(Buffer_Addr+i*4, *(Data_Ptr+i));
		}
	}
	else{
		for(i=0; i<Length; i++){
			*(Data_Ptr+i)=(int)Xil_In32(Buffer_Addr+i*4);
		}
	}

}

int Verification(){

	int i;
	int j;

	for(i=1; i<R-1; i++){
		for(j=1; j<C-1; j++){
			if(ARM_Fig_Out[i][j]!=FPGA_Fig_Out[i][j]){
				printf("Verification failed! ARM_Fig_Out[%d][%d]=%d, FPGA_Fig_Out[%d][%d]=%d\n\r", i, j, ARM_Fig_Out[i][j], i, j, FPGA_Fig_Out[i][j]);
				return XST_FAILURE;
			}
		}
	}

	printf("Verification passed!\n\r");

	return XST_SUCCESS;

}

void FPGA_Compute(){

	Xil_Out32(SW_IO_Addr, 0x01);
	while(Xil_In32(HW_IO_Addr)!=0x01);
	Xil_Out32(SW_IO_Addr, 0x00);

}

int FPGA_Acc(void){

	u32 Input_Buffer_Addr = Bram0_Base_Addr;
	int Print_En;
	u32 Block_In_Addr;
	u32 Block_Out_Addr;
	int rit;
	int cit;

	/* System initialization */
	PS_Timer_Start();
	XDma_PS_Setup(DMA_DEVICE_ID, &XDma);
	printf("System initialization time: %lld!\n\r", PS_Timer_Return());

	Load_Ctrl_Words();

	/* Move invariant data from main memory to FPGA. */
	PS_Timer_Start();

	Input_Buffer_Addr = Bram0_Base_Addr;
	GPIO_Move(Const_In, Input_Buffer_Addr, Const_Num, 1);

	Input_Buffer_Addr = Bram0_Base_Addr + (Const_Num + BR*BC/4)*4;
	//XDma_PS_Move((u32)(&Gx[0][0]), Input_Buffer_Addr, 3*3, 0);
	GPIO_Move(&Gx[0][0], Input_Buffer_Addr, 9, 1);

	Input_Buffer_Addr = Bram0_Base_Addr + (Const_Num + BR*BC/4 + 3*3)*4;
	//GPIO_Move(&Gy[0][0], Input_Buffer_Addr, 9, 1); /*No idea why it is wrong*/
	XDma_PS_Move((u32)(&Gy[0][0]), Input_Buffer_Addr, 3*3, 0);


	printf("Time consumption of moving invariant data to FPGA: %lld cycles!\n\r", PS_Timer_Return());

	for(rit=0; rit<(R-2)/(BR-2); rit++){
		for(cit=0; cit<(C-2)/(BC-2); cit++){

			PS_Timer_Start();
			Input_Pack(rit, cit);
			Block_In_Addr = (u32)(&Block_Fig_In[0]);
			Block_Out_Addr = (u32)(&Block_Fig_Out[0]);
			if(rit==0 && cit==0){
				Print_En = 1;
			}
			else{
				Print_En = 0;
			}
			if(rit==0 && cit==0){
				printf("Time consumption of input data organization: %lld cycles!\n\r", PS_Timer_Return());
			}

			FPGA_Kernel(Block_In_Addr, Block_Out_Addr, Print_En);

			PS_Timer_Start();
			Output_Depack(rit, cit);
			if(rit==0 && cit==0){
				printf("Time consumption of output data organization: %lld cycles!\n\r", PS_Timer_Return());
			}
		}
	}

	return XST_SUCCESS;
}

void FPGA_Kernel(u32 Block_In_Addr, u32 Block_Out_Addr, int PE_En){

	int Input_Buffer_Addr;
	int Output_Buffer_Addr;

	PS_Timer_Start();
	Input_Buffer_Addr = Bram0_Base_Addr + Const_Num*4;
	XDma_PS_Move(Block_In_Addr, Input_Buffer_Addr, BR*BC/4, 0);
	if(PE_En){
		printf("Time consumption of moving input data to FPGA: %lld cycles!\n\r", PS_Timer_Return());
	}

	/* Computation on FPGA. */
	PS_Timer_Start();
	FPGA_Compute();
	if(PE_En){
		printf("Time consumption of FPGA computation: %lld cycles!\n\r", PS_Timer_Return());
	}

	/* Move the FPGA computation result back to main memory. */
	PS_Timer_Start();

	Xil_DCacheFlushRange(Block_Out_Addr, BR*BC);
	Output_Buffer_Addr = Bram1_Base_Addr;
	XDma_PS_Move(Output_Buffer_Addr, Block_Out_Addr, BR*BC/4, 0);
	if(PE_En){
		printf("Time consumption of moving result from FPGA to main memory: %lld cycles!\n\r", PS_Timer_Return());
	}

}

void Scu_Timer_Start(XScuTimer * PS_TimerPtr) {

	XScuTimer_EnableAutoReload(PS_TimerPtr);

	XScuTimer_LoadTimer(PS_TimerPtr, TIMER_LOAD_VALUE);

	XScuTimer_Start(PS_TimerPtr);

}

int XDma_PS_Setup(u16 DeviceId, XDmaPs* XDma_Ptr) {
	int Status;

	XDmaPs_Config *DmaCfgPtr;

	/*Initialize the DMA Driver */
	DmaCfgPtr = XDmaPs_LookupConfig(DeviceId);
	if (DmaCfgPtr == NULL) {
		return XST_FAILURE;
	}
	Status = XDmaPs_CfgInitialize(XDma_Ptr, DmaCfgPtr, DmaCfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}

int XDma_PS_Move(u32 Src_Addr, u32 Dst_Addr, int Length, unsigned int Channel) {

	int Status;
	XDmaPs *DmaPtr = &XDma;
	XDmaPs_Cmd Dma_Cmd;

	memset(&Dma_Cmd, 0, sizeof(XDmaPs_Cmd));
	Dma_Cmd.ChanCtrl.SrcBurstSize = 4;
	Dma_Cmd.ChanCtrl.SrcBurstLen = 16;
	Dma_Cmd.ChanCtrl.SrcInc = 1;
	Dma_Cmd.ChanCtrl.DstBurstSize = 4;
	Dma_Cmd.ChanCtrl.DstBurstLen = 16;
	Dma_Cmd.ChanCtrl.DstInc = 1;
	Dma_Cmd.BD.SrcAddr = Src_Addr;
	Dma_Cmd.BD.DstAddr = Dst_Addr;
	Dma_Cmd.BD.Length = Length * sizeof(int);

	/* Set the Done interrupt handler */
	XDmaPs_SetDoneHandler(DmaPtr, Channel, Dma_Done_Handler, (void *) (Channel));

	Status = XDmaPs_Start(DmaPtr, Channel, &Dma_Cmd, 0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while(Dma_Channel0_Flag==0);
	Dma_Channel0_Flag=0;

	return XST_SUCCESS;

}

void Computation_Done_ISR(void* Any_Ptr){

	/*
	XGpio *XGioPtr = (XGpio*)AnyPtr;

	Disable the interrupt.
	XGpio_InterruptDisable(XGioPtr, COMPUTATION_DONE_INTR);
	Computation_Done_Flag=1;

	Clear the interrupt
	(void)XGpio_InterruptClear(XGioPtr, XGPIO_IR_MASK);

	Enable the interrupt
	XGpio_InterruptEnable(XGioPtr, XGPIO_IR_MASK);
	*/

}

/*****************************************************************************/
/*
 * Dma_Done_Handler.
 *
 * @param	Channel is the Channel number.
 * @param	Dma_Cmd is the Dma Command.
 * @param	CallbackRef is the callback reference data.
 *
 * @return	None.
 *
 * @note		None.
 *
 ******************************************************************************/
void Dma_Done_Handler(unsigned int Channel, XDmaPs_Cmd *Dma_Cmd, void *CallbackRef) {

	volatile int *Checked = (volatile int *) CallbackRef;
	int Status = 1;

	if(Channel==0){
		Dma_Channel0_Flag=1;
	}

	*Checked = Status;
}

/*****************************************************************************/
/**
*
* This function tests the functioning of the Cortex A9 Scu Private Timer driver
* and hardware using interrupts.
*
* @param	IntcInstancePtr is a pointer to the instance of XScuGic driver.
* @param	TimerInstancePtr is a pointer to the instance of XScuTimer
*		driver.
* @param	Timer_Device_ID is the Device ID of the XScuTimer device.
* @param	TimerIntrId is the Interrupt Id of the XScuTimer device.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int Scu_Timer_Setup(XScuTimer * PS_TimerPtr, u16 Timer_Device_ID){

	XScuTimer_Config *ConfigPtr;
    XStatus Status;

	ConfigPtr = XScuTimer_LookupConfig(Timer_Device_ID);
	Status = XScuTimer_CfgInitialize(PS_TimerPtr, ConfigPtr, ConfigPtr->BaseAddr);

	if (Status != XST_SUCCESS) {
		xil_printf("SCU Timer Interrupt initialization Failed\r\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int Interruption_Setup(XScuGic *XGic_Ptr, XDmaPs *XDma_Ptr) {
	int Status;
	XScuGic_Config *GicConfig;

	/*--------------------------------------------------------------------
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 *------------------------------------------------------------------*/
	GicConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(XGic_Ptr, GicConfig,
			GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*------------------------------------------------------------------
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 *----------------------------------------------------------------*/
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler, XGic_Ptr);

	/*--------------------------------------------------------------------
	 * Connect the device driver handlers that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the specific
	 * interrupt processing for the device
	 *------------------------------------------------------------------*/

	//Connect to the Computation done ISR
	/*Status=XScuGic_Connect(XGic_Ptr, COMPUTATION_DONE_INTR,
	 (Xil_ExceptionHandler)Computation_Done_ISR, &XGio);
	 if (Status != XST_SUCCESS) {
	 return XST_FAILURE;
	 }*/

	/*Connect the timer interruption ISR*/
	Status = XScuGic_Connect(XGic_Ptr, TIMER_IRPT_INTR,
			(Xil_ExceptionHandler) Timer_Intr_Handler, (void *)&PS_Timer);

	/* Connect the Fault ISR */
	Status = XScuGic_Connect(XGic_Ptr, DMA_FAULT_INTR,
			(Xil_InterruptHandler) XDmaPs_FaultISR, (void *) XDma_Ptr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Connect the Done ISR for all 8 channels of DMA 0 */
	Status = XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_0,
			(Xil_InterruptHandler) XDmaPs_DoneISR_0, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_1,
			(Xil_InterruptHandler) XDmaPs_DoneISR_1, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_2,
			(Xil_InterruptHandler) XDmaPs_DoneISR_2, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_3,
			(Xil_InterruptHandler) XDmaPs_DoneISR_3, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_4,
			(Xil_InterruptHandler) XDmaPs_DoneISR_4, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_5,
			(Xil_InterruptHandler) XDmaPs_DoneISR_5, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_6,
			(Xil_InterruptHandler) XDmaPs_DoneISR_6, (void *) XDma_Ptr);
	Status |= XScuGic_Connect(XGic_Ptr, DMA_DONE_INTR_7,
			(Xil_InterruptHandler) XDmaPs_DoneISR_7, (void *) XDma_Ptr);

	if (Status != XST_SUCCESS)
		return XST_FAILURE;

	/*Enable the interrupts for the device*/
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_0);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_1);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_2);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_3);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_4);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_5);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_6);
	XScuGic_Enable(XGic_Ptr, DMA_DONE_INTR_7);
	XScuGic_Enable(XGic_Ptr, DMA_FAULT_INTR);
	XScuGic_Enable(XGic_Ptr, TIMER_IRPT_INTR);
	XScuTimer_EnableInterrupt(&PS_Timer);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler, XGic_Ptr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;

}

/*****************************************************************************/
/**
*
* This function is the Interrupt handler for the Timer interrupt of the
* Timer device. It is called on the expiration of the timer counter in
* interrupt context.
*
* @param	CallBackRef is a pointer to the callback function.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void Timer_Intr_Handler(void *CallBackRef) {
	XScuTimer *PS_TimerPtr = (XScuTimer *) CallBackRef;

	PS_Timer_Flag = 1;
	Overflow_Cnt++;

	if (XScuTimer_IsExpired(PS_TimerPtr)) {
		XScuTimer_ClearInterruptStatus(PS_TimerPtr);
	}
}

void CPU_Compute(){

	PS_Timer_Start();
	Sobel_Kernel();
	printf("Time consumption of ARM computation: %lld!\n\r", PS_Timer_Return());


}

void Sobel_Kernel(){

	int i;
	int j;
	int p;
	int q;
	unsigned char* fPtr = (unsigned char*) Fig_In;
	for(i=0; i<R; i++){
		for(j=0; j<C; j++){
			int sumx=0;
			int sumy=0;
			if(i==0 || j==0 || i==R-1 || j==C-1){
				ARM_Fig_Out[i][j] = 0;
			}
			else{
				for(p=-1; p<=1; p++){
					for(q=-1; q<=1; q++){
						sumx += fPtr[(i+p)*C+(j+q)]*Gx[p+1][q+1];
						sumy += fPtr[(i+p)*C+(j+q)]*Gy[p+1][q+1];
					}
				}
				int sum=abs(sumx)+abs(sumy);

				if(sum>255){
					ARM_Fig_Out[i][j] = 0;
				}
				else{
					ARM_Fig_Out[i][j] = 255-sum;
				}
			}
		}
	}

}


/* Move part of the input data to a block of input for a single FPGA execution */
void Input_Pack(int rit, int cit){

	//Move a block of pixl to Block_Sig_In
	int i;
	int j;
	int ID=0;
	int Row_Offset = rit*(BR-2);
	int Col_Offset = cit*(BC-2);
	for(i=0; i<BR; i++){
		for(j=0; j<BC; j=j+4){
			int Pixl0, Pixl1, Pixl2, Pixl3;
			Pixl0=(unsigned int)Fig_In[Row_Offset+i][Col_Offset];
			Pixl1=(unsigned int)Fig_In[Row_Offset+i][Col_Offset+1]<<8;
			Pixl2=(unsigned int)Fig_In[Row_Offset+i][Col_Offset+2]<<16;
			Pixl3=(unsigned int)Fig_In[Row_Offset+i][Col_Offset+3]<<24;
			Block_Fig_In[ID]=Pixl0+Pixl1+Pixl2+Pixl3;
			ID++;
		}
	}

}

void Output_Depack(int rit, int cit){

	//Move result Block_Fig_Out back to FPGA_Fig_Out
	unsigned char* Ptr = (unsigned char*) Block_Fig_Out;
	int i;
	int j;
	int Row_Offset = rit*(BR-2);
	int Col_Offset = cit*(BC-2);
	for(i=1; i<BR-1; i++){
		for(j=1; j<BC-1; j++){
			FPGA_Fig_Out[Row_Offset+i][Col_Offset+j] = Ptr[i*BC+j];
		}
	}

}
