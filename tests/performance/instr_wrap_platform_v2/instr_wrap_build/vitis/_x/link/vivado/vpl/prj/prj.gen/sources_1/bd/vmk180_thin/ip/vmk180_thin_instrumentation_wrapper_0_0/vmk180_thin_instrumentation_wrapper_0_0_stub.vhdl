-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Aug 15 10:46:36 2024
-- Host        : finn_dev_hannayan running 64-bit Ubuntu 22.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/instr_wrap_build/vitis/_x/link/vivado/vpl/prj/prj.gen/sources_1/bd/vmk180_thin/ip/vmk180_thin_instrumentation_wrapper_0_0/vmk180_thin_instrumentation_wrapper_0_0_stub.vhdl
-- Design      : vmk180_thin_instrumentation_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvm1802-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vmk180_thin_instrumentation_wrapper_0_0 is
  Port ( 
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_AWREADY : out STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_WVALID : in STD_LOGIC;
    s_axi_ctrl_WREADY : out STD_LOGIC;
    s_axi_ctrl_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_BVALID : out STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_ARREADY : out STD_LOGIC;
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_RVALID : out STD_LOGIC;
    s_axi_ctrl_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    finnix_TVALID : out STD_LOGIC;
    finnix_TREADY : in STD_LOGIC;
    finnix_TDATA : out STD_LOGIC_VECTOR ( 391 downto 0 );
    finnox_TVALID : in STD_LOGIC;
    finnox_TREADY : out STD_LOGIC;
    finnox_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end vmk180_thin_instrumentation_wrapper_0_0;

architecture stub of vmk180_thin_instrumentation_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_ctrl_AWADDR[6:0],s_axi_ctrl_AWVALID,s_axi_ctrl_AWREADY,s_axi_ctrl_WDATA[31:0],s_axi_ctrl_WSTRB[3:0],s_axi_ctrl_WVALID,s_axi_ctrl_WREADY,s_axi_ctrl_BRESP[1:0],s_axi_ctrl_BVALID,s_axi_ctrl_BREADY,s_axi_ctrl_ARADDR[6:0],s_axi_ctrl_ARVALID,s_axi_ctrl_ARREADY,s_axi_ctrl_RDATA[31:0],s_axi_ctrl_RRESP[1:0],s_axi_ctrl_RVALID,s_axi_ctrl_RREADY,ap_clk,ap_rst_n,finnix_TVALID,finnix_TREADY,finnix_TDATA[391:0],finnox_TVALID,finnox_TREADY,finnox_TDATA[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "instrumentation_wrapper,Vivado 2022.2";
begin
end;
