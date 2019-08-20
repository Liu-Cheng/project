-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.1
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axi_interfaces_reverseBytes64 is
port (
    in_r : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of axi_interfaces_reverseBytes64 is 
    constant ap_true : BOOLEAN := true;
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal tmp_fu_43_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_fu_47_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_fu_57_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_9_fu_67_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_fu_107_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_fu_77_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_fu_87_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_97_p4 : STD_LOGIC_VECTOR (7 downto 0);


begin



    ap_return <= (((((((tmp_fu_43_p1 & tmp_1_fu_47_p4) & tmp_2_fu_57_p4) & tmp_9_fu_67_p4) & tmp_5_fu_107_p4) & tmp_s_fu_77_p4) & tmp_3_fu_87_p4) & tmp_4_fu_97_p4);
    tmp_1_fu_47_p4 <= in_r(15 downto 8);
    tmp_2_fu_57_p4 <= in_r(23 downto 16);
    tmp_3_fu_87_p4 <= in_r(55 downto 48);
    tmp_4_fu_97_p4 <= in_r(63 downto 56);
    tmp_5_fu_107_p4 <= in_r(39 downto 32);
    tmp_9_fu_67_p4 <= in_r(31 downto 24);
    tmp_fu_43_p1 <= in_r(8 - 1 downto 0);
    tmp_s_fu_77_p4 <= in_r(47 downto 40);
end behav;