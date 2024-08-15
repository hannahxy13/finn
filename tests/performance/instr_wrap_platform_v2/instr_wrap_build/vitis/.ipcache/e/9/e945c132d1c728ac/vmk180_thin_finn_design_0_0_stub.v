// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Aug 15 10:47:45 2024
// Host        : finn_dev_hannayan running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vmk180_thin_finn_design_0_0_stub.v
// Design      : vmk180_thin_finn_design_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvm1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "finn_design_wrapper,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, m_axis_0_tdata, 
  m_axis_0_tkeep, m_axis_0_tlast, m_axis_0_tready, m_axis_0_tstrb, m_axis_0_tvalid, 
  s_axis_0_tdata, s_axis_0_tready, s_axis_0_tvalid)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,m_axis_0_tdata[7:0],m_axis_0_tkeep[0:0],m_axis_0_tlast[0:0],m_axis_0_tready,m_axis_0_tstrb[0:0],m_axis_0_tvalid,s_axis_0_tdata[391:0],s_axis_0_tready,s_axis_0_tvalid" */;
  input ap_clk;
  input ap_rst_n;
  output [7:0]m_axis_0_tdata;
  output [0:0]m_axis_0_tkeep;
  output [0:0]m_axis_0_tlast;
  input m_axis_0_tready;
  output [0:0]m_axis_0_tstrb;
  output m_axis_0_tvalid;
  input [391:0]s_axis_0_tdata;
  output s_axis_0_tready;
  input s_axis_0_tvalid;
endmodule
