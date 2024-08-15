//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Wed Aug  7 11:35:27 2024
//Host        : finn_dev_hannayan running 64-bit Ubuntu 22.04.1 LTS
//Command     : generate_target finn_design.bd
//Design      : finn_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MatrixVectorActivation_0_imp_MT0NP
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [55:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [159:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [159:0]MatrixVectorActivation_0_out_V_TDATA;
  wire MatrixVectorActivation_0_out_V_TREADY;
  wire MatrixVectorActivation_0_out_V_TVALID;
  wire [783:0]MatrixVectorActivation_0_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_0_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_0_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [55:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_0_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[55:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[159:0] = MatrixVectorActivation_0_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_0_out_V_TVALID;
  finn_design_MatrixVectorActivation_0_0 MatrixVectorActivation_0
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_0_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_0_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_0_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_0_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_0_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_0_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_0_wstrm_0 MatrixVectorActivation_0_wstrm
       (.ap_clk(ap_clk_1),
        .ap_clk2x(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_0_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_0_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_0_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MatrixVectorActivation_1_imp_16PJ27U
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [55:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [55:0]MatrixVectorActivation_1_out_V_TDATA;
  wire MatrixVectorActivation_1_out_V_TREADY;
  wire MatrixVectorActivation_1_out_V_TVALID;
  wire [63:0]MatrixVectorActivation_1_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_1_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_1_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_1_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[55:0] = MatrixVectorActivation_1_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_1_out_V_TVALID;
  finn_design_MatrixVectorActivation_1_0 MatrixVectorActivation_1
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_1_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_1_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_1_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_1_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_1_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_1_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_1_wstrm_0 MatrixVectorActivation_1_wstrm
       (.ap_clk(ap_clk_1),
        .ap_clk2x(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_1_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_1_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_1_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MatrixVectorActivation_2_imp_1U5U4NE
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [55:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [55:0]MatrixVectorActivation_2_out_V_TDATA;
  wire MatrixVectorActivation_2_out_V_TREADY;
  wire MatrixVectorActivation_2_out_V_TVALID;
  wire [63:0]MatrixVectorActivation_2_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_2_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_2_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_2_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[55:0] = MatrixVectorActivation_2_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_2_out_V_TVALID;
  finn_design_MatrixVectorActivation_2_0 MatrixVectorActivation_2
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_2_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_2_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_2_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_2_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_2_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_2_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_2_wstrm_0 MatrixVectorActivation_2_wstrm
       (.ap_clk(ap_clk_1),
        .ap_clk2x(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_2_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_2_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_2_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MatrixVectorActivation_3_imp_WP21D1
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [71:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [71:0]MatrixVectorActivation_3_out_V_TDATA;
  wire MatrixVectorActivation_3_out_V_TREADY;
  wire MatrixVectorActivation_3_out_V_TVALID;
  wire [79:0]MatrixVectorActivation_3_wstrm_m_axis_0_TDATA;
  wire MatrixVectorActivation_3_wstrm_m_axis_0_TREADY;
  wire MatrixVectorActivation_3_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign MatrixVectorActivation_3_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[71:0] = MatrixVectorActivation_3_out_V_TDATA;
  assign out_V_tvalid = MatrixVectorActivation_3_out_V_TVALID;
  finn_design_MatrixVectorActivation_3_0 MatrixVectorActivation_3
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(MatrixVectorActivation_3_out_V_TDATA),
        .out_V_TREADY(MatrixVectorActivation_3_out_V_TREADY),
        .out_V_TVALID(MatrixVectorActivation_3_out_V_TVALID),
        .weights_V_TDATA(MatrixVectorActivation_3_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MatrixVectorActivation_3_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MatrixVectorActivation_3_wstrm_m_axis_0_TVALID));
  finn_design_MatrixVectorActivation_3_wstrm_0 MatrixVectorActivation_3_wstrm
       (.ap_clk(ap_clk_1),
        .ap_clk2x(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MatrixVectorActivation_3_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MatrixVectorActivation_3_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MatrixVectorActivation_3_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

(* CORE_GENERATION_INFO = "finn_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=finn_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=42,numReposBlks=38,numNonXlnxBlks=4,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=10,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "finn_design.hwdef" *) 
module finn_design
   (ap_clk,
    ap_rst_n,
    m_axis_0_tdata,
    m_axis_0_tkeep,
    m_axis_0_tlast,
    m_axis_0_tready,
    m_axis_0_tstrb,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axis_0:m_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 303030303, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 303030303, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output [0:0]m_axis_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output [0:0]m_axis_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) input m_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output [0:0]m_axis_0_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output m_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 303030303, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 49, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [391:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) output s_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) input s_axis_0_tvalid;

  wire [7:0]LabelSelect_Batch_0_out_V_TDATA;
  wire LabelSelect_Batch_0_out_V_TREADY;
  wire LabelSelect_Batch_0_out_V_TVALID;
  wire [159:0]MatrixVectorActivation_0_out_V_TDATA;
  wire MatrixVectorActivation_0_out_V_TREADY;
  wire MatrixVectorActivation_0_out_V_TVALID;
  wire [55:0]MatrixVectorActivation_1_out_V_TDATA;
  wire MatrixVectorActivation_1_out_V_TREADY;
  wire MatrixVectorActivation_1_out_V_TVALID;
  wire [55:0]MatrixVectorActivation_2_out_V_TDATA;
  wire MatrixVectorActivation_2_out_V_TREADY;
  wire MatrixVectorActivation_2_out_V_TVALID;
  wire [71:0]MatrixVectorActivation_3_out_V_TDATA;
  wire MatrixVectorActivation_3_out_V_TREADY;
  wire MatrixVectorActivation_3_out_V_TVALID;
  wire [15:0]StreamingDataWidthConverter_rtl_0_out_V_TDATA;
  wire StreamingDataWidthConverter_rtl_0_out_V_TREADY;
  wire StreamingDataWidthConverter_rtl_0_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_rtl_1_out_V_TDATA;
  wire StreamingDataWidthConverter_rtl_1_out_V_TREADY;
  wire StreamingDataWidthConverter_rtl_1_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_rtl_2_out_V_TDATA;
  wire StreamingDataWidthConverter_rtl_2_out_V_TREADY;
  wire StreamingDataWidthConverter_rtl_2_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_rtl_3_out_V_TDATA;
  wire StreamingDataWidthConverter_rtl_3_out_V_TREADY;
  wire StreamingDataWidthConverter_rtl_3_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_rtl_4_out_V_TDATA;
  wire StreamingDataWidthConverter_rtl_4_out_V_TREADY;
  wire StreamingDataWidthConverter_rtl_4_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_rtl_5_out_V_TDATA;
  wire StreamingDataWidthConverter_rtl_5_out_V_TREADY;
  wire StreamingDataWidthConverter_rtl_5_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_rtl_6_out_V_TDATA;
  wire StreamingDataWidthConverter_rtl_6_out_V_TREADY;
  wire StreamingDataWidthConverter_rtl_6_out_V_TVALID;
  wire [391:0]StreamingFIFO_0_out_V_TDATA;
  wire StreamingFIFO_0_out_V_TREADY;
  wire StreamingFIFO_0_out_V_TVALID;
  wire [55:0]StreamingFIFO_10_out_V_TDATA;
  wire StreamingFIFO_10_out_V_TREADY;
  wire StreamingFIFO_10_out_V_TVALID;
  wire [7:0]StreamingFIFO_11_out_V_TDATA;
  wire StreamingFIFO_11_out_V_TREADY;
  wire StreamingFIFO_11_out_V_TVALID;
  wire [7:0]StreamingFIFO_12_out_V_TDATA;
  wire StreamingFIFO_12_out_V_TREADY;
  wire StreamingFIFO_12_out_V_TVALID;
  wire [7:0]StreamingFIFO_13_out_V_TDATA;
  wire StreamingFIFO_13_out_V_TREADY;
  wire StreamingFIFO_13_out_V_TVALID;
  wire [71:0]StreamingFIFO_14_out_V_TDATA;
  wire StreamingFIFO_14_out_V_TREADY;
  wire StreamingFIFO_14_out_V_TVALID;
  wire [7:0]StreamingFIFO_15_out_V_TDATA;
  wire StreamingFIFO_15_out_V_TREADY;
  wire StreamingFIFO_15_out_V_TVALID;
  wire [7:0]StreamingFIFO_16_out_V_TDATA;
  wire StreamingFIFO_16_out_V_TREADY;
  wire StreamingFIFO_16_out_V_TVALID;
  wire [55:0]StreamingFIFO_1_out_V_TDATA;
  wire StreamingFIFO_1_out_V_TREADY;
  wire StreamingFIFO_1_out_V_TVALID;
  wire [159:0]StreamingFIFO_2_out_V_TDATA;
  wire StreamingFIFO_2_out_V_TREADY;
  wire StreamingFIFO_2_out_V_TVALID;
  wire [15:0]StreamingFIFO_3_out_V_TDATA;
  wire StreamingFIFO_3_out_V_TREADY;
  wire StreamingFIFO_3_out_V_TVALID;
  wire [7:0]StreamingFIFO_4_out_V_TDATA;
  wire StreamingFIFO_4_out_V_TREADY;
  wire StreamingFIFO_4_out_V_TVALID;
  wire [7:0]StreamingFIFO_5_out_V_TDATA;
  wire StreamingFIFO_5_out_V_TREADY;
  wire StreamingFIFO_5_out_V_TVALID;
  wire [55:0]StreamingFIFO_6_out_V_TDATA;
  wire StreamingFIFO_6_out_V_TREADY;
  wire StreamingFIFO_6_out_V_TVALID;
  wire [7:0]StreamingFIFO_7_out_V_TDATA;
  wire StreamingFIFO_7_out_V_TREADY;
  wire StreamingFIFO_7_out_V_TVALID;
  wire [7:0]StreamingFIFO_8_out_V_TDATA;
  wire StreamingFIFO_8_out_V_TREADY;
  wire StreamingFIFO_8_out_V_TVALID;
  wire [7:0]StreamingFIFO_9_out_V_TDATA;
  wire StreamingFIFO_9_out_V_TREADY;
  wire StreamingFIFO_9_out_V_TVALID;
  wire [7:0]TLastMarker_0_out_V_TDATA;
  wire [0:0]TLastMarker_0_out_V_TKEEP;
  wire [0:0]TLastMarker_0_out_V_TLAST;
  wire TLastMarker_0_out_V_TREADY;
  wire [0:0]TLastMarker_0_out_V_TSTRB;
  wire TLastMarker_0_out_V_TVALID;
  wire [55:0]Thresholding_Batch_0_out_V_TDATA;
  wire Thresholding_Batch_0_out_V_TREADY;
  wire Thresholding_Batch_0_out_V_TVALID;
  wire [7:0]Thresholding_Batch_1_out_V_TDATA;
  wire Thresholding_Batch_1_out_V_TREADY;
  wire Thresholding_Batch_1_out_V_TVALID;
  wire [7:0]Thresholding_Batch_2_out_V_TDATA;
  wire Thresholding_Batch_2_out_V_TREADY;
  wire Thresholding_Batch_2_out_V_TVALID;
  wire [7:0]Thresholding_Batch_3_out_V_TDATA;
  wire Thresholding_Batch_3_out_V_TREADY;
  wire Thresholding_Batch_3_out_V_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [391:0]in0_V_0_1_TDATA;
  wire in0_V_0_1_TREADY;
  wire in0_V_0_1_TVALID;

  assign TLastMarker_0_out_V_TREADY = m_axis_0_tready;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign in0_V_0_1_TDATA = s_axis_0_tdata[391:0];
  assign in0_V_0_1_TVALID = s_axis_0_tvalid;
  assign m_axis_0_tdata[7:0] = TLastMarker_0_out_V_TDATA;
  assign m_axis_0_tkeep[0] = TLastMarker_0_out_V_TKEEP;
  assign m_axis_0_tlast[0] = TLastMarker_0_out_V_TLAST;
  assign m_axis_0_tstrb[0] = TLastMarker_0_out_V_TSTRB;
  assign m_axis_0_tvalid = TLastMarker_0_out_V_TVALID;
  assign s_axis_0_tready = in0_V_0_1_TREADY;
  finn_design_LabelSelect_Batch_0_0 LabelSelect_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_15_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_15_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_15_out_V_TVALID),
        .out_V_TDATA(LabelSelect_Batch_0_out_V_TDATA),
        .out_V_TREADY(LabelSelect_Batch_0_out_V_TREADY),
        .out_V_TVALID(LabelSelect_Batch_0_out_V_TVALID));
  MatrixVectorActivation_0_imp_MT0NP MatrixVectorActivation_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_1_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_1_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_1_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_0_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_0_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_0_out_V_TVALID));
  MatrixVectorActivation_1_imp_16PJ27U MatrixVectorActivation_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_5_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_5_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_5_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_1_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_1_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_1_out_V_TVALID));
  MatrixVectorActivation_2_imp_1U5U4NE MatrixVectorActivation_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_9_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_9_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_9_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_2_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_2_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_2_out_V_TVALID));
  MatrixVectorActivation_3_imp_WP21D1 MatrixVectorActivation_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_13_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_13_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_13_out_V_TVALID),
        .out_V_tdata(MatrixVectorActivation_3_out_V_TDATA),
        .out_V_tready(MatrixVectorActivation_3_out_V_TREADY),
        .out_V_tvalid(MatrixVectorActivation_3_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_rtl_0_0 StreamingDataWidthConverter_rtl_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_2_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_2_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_rtl_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_rtl_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_rtl_0_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_rtl_1_0 StreamingDataWidthConverter_rtl_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_4_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_4_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_rtl_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_rtl_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_rtl_1_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_rtl_2_0 StreamingDataWidthConverter_rtl_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_rtl_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_rtl_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_rtl_2_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_rtl_3_0 StreamingDataWidthConverter_rtl_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_8_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_8_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_8_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_rtl_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_rtl_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_rtl_3_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_rtl_4_0 StreamingDataWidthConverter_rtl_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_10_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_10_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_10_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_rtl_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_rtl_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_rtl_4_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_rtl_5_0 StreamingDataWidthConverter_rtl_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_12_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_12_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_12_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_rtl_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_rtl_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_rtl_5_out_V_TVALID));
  finn_design_StreamingDataWidthConverter_rtl_6_0 StreamingDataWidthConverter_rtl_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_14_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_14_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_14_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_rtl_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_rtl_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_rtl_6_out_V_TVALID));
  finn_design_StreamingFIFO_0_0 StreamingFIFO_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(in0_V_0_1_TDATA),
        .in0_V_TREADY(in0_V_0_1_TREADY),
        .in0_V_TVALID(in0_V_0_1_TVALID),
        .out_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_0_out_V_TVALID));
  finn_design_StreamingFIFO_1_0 StreamingFIFO_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(Thresholding_Batch_0_out_V_TDATA),
        .in0_V_TREADY(Thresholding_Batch_0_out_V_TREADY),
        .in0_V_TVALID(Thresholding_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_1_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_1_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_1_out_V_TVALID));
  finn_design_StreamingFIFO_10_0 StreamingFIFO_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_2_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_2_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_2_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_10_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_10_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_10_out_V_TVALID));
  finn_design_StreamingFIFO_11_0 StreamingFIFO_11
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_rtl_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_rtl_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_rtl_4_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_11_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_11_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_11_out_V_TVALID));
  finn_design_StreamingFIFO_12_0 StreamingFIFO_12
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(Thresholding_Batch_3_out_V_TDATA),
        .in0_V_TREADY(Thresholding_Batch_3_out_V_TREADY),
        .in0_V_TVALID(Thresholding_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_12_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_12_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_12_out_V_TVALID));
  finn_design_StreamingFIFO_13_0 StreamingFIFO_13
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_rtl_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_rtl_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_rtl_5_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_13_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_13_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_13_out_V_TVALID));
  finn_design_StreamingFIFO_14_0 StreamingFIFO_14
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_3_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_3_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_14_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_14_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_14_out_V_TVALID));
  finn_design_StreamingFIFO_15_0 StreamingFIFO_15
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_rtl_6_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_rtl_6_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_rtl_6_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_15_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_15_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_15_out_V_TVALID));
  finn_design_StreamingFIFO_16_0 StreamingFIFO_16
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(LabelSelect_Batch_0_out_V_TDATA),
        .in0_V_TREADY(LabelSelect_Batch_0_out_V_TREADY),
        .in0_V_TVALID(LabelSelect_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_16_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_16_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_16_out_V_TVALID));
  finn_design_StreamingFIFO_2_0 StreamingFIFO_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_0_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_0_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_2_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_2_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_2_out_V_TVALID));
  finn_design_StreamingFIFO_3_0 StreamingFIFO_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_rtl_0_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_rtl_0_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_rtl_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_3_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_3_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_3_out_V_TVALID));
  finn_design_StreamingFIFO_4_0 StreamingFIFO_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(Thresholding_Batch_1_out_V_TDATA),
        .in0_V_TREADY(Thresholding_Batch_1_out_V_TREADY),
        .in0_V_TVALID(Thresholding_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_4_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_4_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_4_out_V_TVALID));
  finn_design_StreamingFIFO_5_0 StreamingFIFO_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_rtl_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_rtl_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_rtl_1_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_5_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_5_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_5_out_V_TVALID));
  finn_design_StreamingFIFO_6_0 StreamingFIFO_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(MatrixVectorActivation_1_out_V_TDATA),
        .in0_V_TREADY(MatrixVectorActivation_1_out_V_TREADY),
        .in0_V_TVALID(MatrixVectorActivation_1_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_6_out_V_TVALID));
  finn_design_StreamingFIFO_7_0 StreamingFIFO_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_rtl_2_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_rtl_2_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_rtl_2_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_7_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_7_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_7_out_V_TVALID));
  finn_design_StreamingFIFO_8_0 StreamingFIFO_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(Thresholding_Batch_2_out_V_TDATA),
        .in0_V_TREADY(Thresholding_Batch_2_out_V_TREADY),
        .in0_V_TVALID(Thresholding_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_8_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_8_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_8_out_V_TVALID));
  finn_design_StreamingFIFO_9_0 StreamingFIFO_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_rtl_3_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_rtl_3_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_rtl_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_9_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_9_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_9_out_V_TVALID));
  finn_design_TLastMarker_0_0 TLastMarker_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_16_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_16_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_16_out_V_TVALID),
        .out_V_TDATA(TLastMarker_0_out_V_TDATA),
        .out_V_TKEEP(TLastMarker_0_out_V_TKEEP),
        .out_V_TLAST(TLastMarker_0_out_V_TLAST),
        .out_V_TREADY(TLastMarker_0_out_V_TREADY),
        .out_V_TSTRB(TLastMarker_0_out_V_TSTRB),
        .out_V_TVALID(TLastMarker_0_out_V_TVALID));
  finn_design_Thresholding_Batch_0_0 Thresholding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_0_out_V_TVALID),
        .out_V_TDATA(Thresholding_Batch_0_out_V_TDATA),
        .out_V_TREADY(Thresholding_Batch_0_out_V_TREADY),
        .out_V_TVALID(Thresholding_Batch_0_out_V_TVALID));
  finn_design_Thresholding_Batch_1_0 Thresholding_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_3_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_3_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_3_out_V_TVALID),
        .out_V_TDATA(Thresholding_Batch_1_out_V_TDATA),
        .out_V_TREADY(Thresholding_Batch_1_out_V_TREADY),
        .out_V_TVALID(Thresholding_Batch_1_out_V_TVALID));
  finn_design_Thresholding_Batch_2_0 Thresholding_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_7_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_7_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_7_out_V_TVALID),
        .out_V_TDATA(Thresholding_Batch_2_out_V_TDATA),
        .out_V_TREADY(Thresholding_Batch_2_out_V_TREADY),
        .out_V_TVALID(Thresholding_Batch_2_out_V_TVALID));
  finn_design_Thresholding_Batch_3_0 Thresholding_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_11_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_11_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_11_out_V_TVALID),
        .out_V_TDATA(Thresholding_Batch_3_out_V_TDATA),
        .out_V_TREADY(Thresholding_Batch_3_out_V_TREADY),
        .out_V_TVALID(Thresholding_Batch_3_out_V_TVALID));
endmodule
