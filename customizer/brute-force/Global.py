#!/usr/bin/env python

class Global_Def(object):
    Home = "/home/liucheng/gitrepo/"
    Benchmark_Dir = Home + "project/benchmark/"
    Scheduler_Dir = Home + "project/scheduler/"
    Customizer_Dir = Home + "project/customizer/brute-force/"

class MM_Para(object):
    Mat_Len = 128
    Max_Loop_Level = 3 
    Max_Loop_Unrolling_Vec = [Mat_Len, Mat_Len, Mat_Len]

class Fir_Para(object):
    In_Len = 128
    Coeff_Len = 64
    Max_Loop_Level = 2
    Max_Loop_Unrolling_Vec = [Coeff_Len, In_Len]

class Kmean_Para(object):
    Node_Num = 128
    Centroid_Num = 4
    Node_Dim = 2
    Max_Loop_Level = 3
    Max_Loop_Unrolling_Vec = [Node_Dim, Centroid_Num, Node_Num]

class Sobel_Para(object):
    Fig_Row = 128
    Fig_Col = 128
    Max_Loop_Level = 4
    Max_Loop_Unrolling_Vec = [Fig_Row, Fig_Col, 3, 3]

class SCGRA_Para(object):
    Min_SCGRA_Row = 2
    Min_SCGRA_Col = 2
    Min_SCGRA = 4
    Max_SCGRA = 100
    Min_In_Buffer_Depth = 0.5 # number of Ki/1024
    Max_In_Buffer_Depth = 32 # number of Ki/1024
    Min_Out_Buffer_Depth = 0.5 # number of Ki/1024
    Max_Out_Buffer_Depth = 32 # number of Ki/1024
    Min_IO_Buffer_Width = 32
    Max_IO_Buffer_Width = 32
    Min_Inst_Mem_Depth = 0.5 # number of Ki/1024
    Max_Inst_Mem_Depth = 4 # number of ki/1024
    Min_Inst_Mem_Width = 72
    Max_Inst_Mem_Width = 72
    Max_Data_Mem_Width = 32
    Min_Data_Mem_Width = 32
    Max_Data_Mem_Depth = 256 # number of data that each PE can accommodate
    Min_Data_Mem_Depth = 16 # number of data that each PE can accommodate
    Total_PBRAM = 288 # number of 18kb primitive BRAM block