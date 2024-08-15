-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Aug 15 10:47:50 2024
-- Host        : finn_dev_hannayan running 64-bit Ubuntu 22.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/instr_wrap_build/vitis/_x/link/vivado/vpl/prj/prj.gen/sources_1/bd/vmk180_thin/ip/vmk180_thin_finn_design_0_0/vmk180_thin_finn_design_0_0_stub.vhdl
-- Design      : vmk180_thin_finn_design_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvm1802-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vmk180_thin_finn_design_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m_axis_0_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_0_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_0_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_0_tready : in STD_LOGIC;
    m_axis_0_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_0_tvalid : out STD_LOGIC;
    s_axis_0_tdata : in STD_LOGIC_VECTOR ( 391 downto 0 );
    s_axis_0_tready : out STD_LOGIC;
    s_axis_0_tvalid : in STD_LOGIC
  );

end vmk180_thin_finn_design_0_0;

architecture stub of vmk180_thin_finn_design_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,m_axis_0_tdata[7:0],m_axis_0_tkeep[0:0],m_axis_0_tlast[0:0],m_axis_0_tready,m_axis_0_tstrb[0:0],m_axis_0_tvalid,s_axis_0_tdata[391:0],s_axis_0_tready,s_axis_0_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "finn_design_wrapper,Vivado 2022.2";
begin
end;
