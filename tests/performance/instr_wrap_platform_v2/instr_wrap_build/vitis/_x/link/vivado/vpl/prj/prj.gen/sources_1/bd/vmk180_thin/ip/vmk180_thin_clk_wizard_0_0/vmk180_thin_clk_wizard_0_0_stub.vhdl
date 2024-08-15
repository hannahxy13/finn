-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Aug 15 10:46:21 2024
-- Host        : finn_dev_hannayan running 64-bit Ubuntu 22.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/instr_wrap_build/vitis/_x/link/vivado/vpl/prj/prj.gen/sources_1/bd/vmk180_thin/ip/vmk180_thin_clk_wizard_0_0/vmk180_thin_clk_wizard_0_0_stub.vhdl
-- Design      : vmk180_thin_clk_wizard_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvm1802-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vmk180_thin_clk_wizard_0_0 is
  Port ( 
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1_o1 : out STD_LOGIC;
    clk_out1_o2 : out STD_LOGIC;
    clk_out1_o3 : out STD_LOGIC;
    clk_out1_o4 : out STD_LOGIC;
    clk_out1_ce : in STD_LOGIC;
    clk_out1_clr_n : in STD_LOGIC
  );

end vmk180_thin_clk_wizard_0_0;

architecture stub of vmk180_thin_clk_wizard_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "resetn,locked,clk_in1,clk_out1_o1,clk_out1_o2,clk_out1_o3,clk_out1_o4,clk_out1_ce,clk_out1_clr_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vmk180_thin_clk_wizard_0_0_clk_wiz_top,Vivado 2022.2";
begin
end;
