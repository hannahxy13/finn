// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Aug 14 10:04:12 2024
// Host        : finn_dev_hannayan running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vmk180_thin_clk_wizard_0_0_stub.v
// Design      : vmk180_thin_clk_wizard_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvm1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vmk180_thin_clk_wizard_0_0_clk_wiz_top,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(resetn, locked, clk_in1, clk_out1_o1, 
  clk_out1_o2, clk_out1_o3, clk_out1_o4, clk_out1_ce, clk_out1_clr_n)
/* synthesis syn_black_box black_box_pad_pin="resetn,locked,clk_in1,clk_out1_o1,clk_out1_o2,clk_out1_o3,clk_out1_o4,clk_out1_ce,clk_out1_clr_n" */;
  input resetn;
  output locked;
  input clk_in1;
  output clk_out1_o1;
  output clk_out1_o2;
  output clk_out1_o3;
  output clk_out1_o4;
  input clk_out1_ce;
  input clk_out1_clr_n;
endmodule
