//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Wed Aug  7 14:43:50 2024
//Host        : finn_dev_hannayan running 64-bit Ubuntu 22.04.1 LTS
//Command     : generate_target vmk180_thin.bd
//Design      : vmk180_thin
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "vmk180_thin,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vmk180_thin,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vmk180_thin.hwdef" *) 
module vmk180_thin
   ();

  wire [43:0]CIPS_0_M_AXI_GP0_ARADDR;
  wire [1:0]CIPS_0_M_AXI_GP0_ARBURST;
  wire [3:0]CIPS_0_M_AXI_GP0_ARCACHE;
  wire [15:0]CIPS_0_M_AXI_GP0_ARID;
  wire [7:0]CIPS_0_M_AXI_GP0_ARLEN;
  wire CIPS_0_M_AXI_GP0_ARLOCK;
  wire [2:0]CIPS_0_M_AXI_GP0_ARPROT;
  wire [3:0]CIPS_0_M_AXI_GP0_ARQOS;
  wire CIPS_0_M_AXI_GP0_ARREADY;
  wire [2:0]CIPS_0_M_AXI_GP0_ARSIZE;
  wire [15:0]CIPS_0_M_AXI_GP0_ARUSER;
  wire CIPS_0_M_AXI_GP0_ARVALID;
  wire [43:0]CIPS_0_M_AXI_GP0_AWADDR;
  wire [1:0]CIPS_0_M_AXI_GP0_AWBURST;
  wire [3:0]CIPS_0_M_AXI_GP0_AWCACHE;
  wire [15:0]CIPS_0_M_AXI_GP0_AWID;
  wire [7:0]CIPS_0_M_AXI_GP0_AWLEN;
  wire CIPS_0_M_AXI_GP0_AWLOCK;
  wire [2:0]CIPS_0_M_AXI_GP0_AWPROT;
  wire [3:0]CIPS_0_M_AXI_GP0_AWQOS;
  wire CIPS_0_M_AXI_GP0_AWREADY;
  wire [2:0]CIPS_0_M_AXI_GP0_AWSIZE;
  wire [15:0]CIPS_0_M_AXI_GP0_AWUSER;
  wire CIPS_0_M_AXI_GP0_AWVALID;
  wire [15:0]CIPS_0_M_AXI_GP0_BID;
  wire CIPS_0_M_AXI_GP0_BREADY;
  wire [1:0]CIPS_0_M_AXI_GP0_BRESP;
  wire CIPS_0_M_AXI_GP0_BVALID;
  wire [127:0]CIPS_0_M_AXI_GP0_RDATA;
  wire [15:0]CIPS_0_M_AXI_GP0_RID;
  wire CIPS_0_M_AXI_GP0_RLAST;
  wire CIPS_0_M_AXI_GP0_RREADY;
  wire [1:0]CIPS_0_M_AXI_GP0_RRESP;
  wire CIPS_0_M_AXI_GP0_RVALID;
  wire [127:0]CIPS_0_M_AXI_GP0_WDATA;
  wire CIPS_0_M_AXI_GP0_WLAST;
  wire CIPS_0_M_AXI_GP0_WREADY;
  wire [15:0]CIPS_0_M_AXI_GP0_WSTRB;
  wire CIPS_0_M_AXI_GP0_WVALID;
  wire CIPS_0_pl_clk0;
  wire CIPS_0_pl_resetn1;
  wire axi_intc_0_irq;
  wire clk_wizard_0_clk_out1;
  wire clk_wizard_0_locked;
  wire [8:0]icn_ctrl_M00_AXI_ARADDR;
  wire icn_ctrl_M00_AXI_ARREADY;
  wire icn_ctrl_M00_AXI_ARVALID;
  wire [8:0]icn_ctrl_M00_AXI_AWADDR;
  wire icn_ctrl_M00_AXI_AWREADY;
  wire icn_ctrl_M00_AXI_AWVALID;
  wire icn_ctrl_M00_AXI_BREADY;
  wire [1:0]icn_ctrl_M00_AXI_BRESP;
  wire icn_ctrl_M00_AXI_BVALID;
  wire [31:0]icn_ctrl_M00_AXI_RDATA;
  wire icn_ctrl_M00_AXI_RREADY;
  wire [1:0]icn_ctrl_M00_AXI_RRESP;
  wire icn_ctrl_M00_AXI_RVALID;
  wire [31:0]icn_ctrl_M00_AXI_WDATA;
  wire icn_ctrl_M00_AXI_WREADY;
  wire [3:0]icn_ctrl_M00_AXI_WSTRB;
  wire icn_ctrl_M00_AXI_WVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;

  vmk180_thin_CIPS_0_0 CIPS_0
       (.M_AXI_FPD_araddr(CIPS_0_M_AXI_GP0_ARADDR),
        .M_AXI_FPD_arburst(CIPS_0_M_AXI_GP0_ARBURST),
        .M_AXI_FPD_arcache(CIPS_0_M_AXI_GP0_ARCACHE),
        .M_AXI_FPD_arid(CIPS_0_M_AXI_GP0_ARID),
        .M_AXI_FPD_arlen(CIPS_0_M_AXI_GP0_ARLEN),
        .M_AXI_FPD_arlock(CIPS_0_M_AXI_GP0_ARLOCK),
        .M_AXI_FPD_arprot(CIPS_0_M_AXI_GP0_ARPROT),
        .M_AXI_FPD_arqos(CIPS_0_M_AXI_GP0_ARQOS),
        .M_AXI_FPD_arready(CIPS_0_M_AXI_GP0_ARREADY),
        .M_AXI_FPD_arsize(CIPS_0_M_AXI_GP0_ARSIZE),
        .M_AXI_FPD_aruser(CIPS_0_M_AXI_GP0_ARUSER),
        .M_AXI_FPD_arvalid(CIPS_0_M_AXI_GP0_ARVALID),
        .M_AXI_FPD_awaddr(CIPS_0_M_AXI_GP0_AWADDR),
        .M_AXI_FPD_awburst(CIPS_0_M_AXI_GP0_AWBURST),
        .M_AXI_FPD_awcache(CIPS_0_M_AXI_GP0_AWCACHE),
        .M_AXI_FPD_awid(CIPS_0_M_AXI_GP0_AWID),
        .M_AXI_FPD_awlen(CIPS_0_M_AXI_GP0_AWLEN),
        .M_AXI_FPD_awlock(CIPS_0_M_AXI_GP0_AWLOCK),
        .M_AXI_FPD_awprot(CIPS_0_M_AXI_GP0_AWPROT),
        .M_AXI_FPD_awqos(CIPS_0_M_AXI_GP0_AWQOS),
        .M_AXI_FPD_awready(CIPS_0_M_AXI_GP0_AWREADY),
        .M_AXI_FPD_awsize(CIPS_0_M_AXI_GP0_AWSIZE),
        .M_AXI_FPD_awuser(CIPS_0_M_AXI_GP0_AWUSER),
        .M_AXI_FPD_awvalid(CIPS_0_M_AXI_GP0_AWVALID),
        .M_AXI_FPD_bid(CIPS_0_M_AXI_GP0_BID),
        .M_AXI_FPD_bready(CIPS_0_M_AXI_GP0_BREADY),
        .M_AXI_FPD_bresp(CIPS_0_M_AXI_GP0_BRESP),
        .M_AXI_FPD_bvalid(CIPS_0_M_AXI_GP0_BVALID),
        .M_AXI_FPD_rdata(CIPS_0_M_AXI_GP0_RDATA),
        .M_AXI_FPD_rid(CIPS_0_M_AXI_GP0_RID),
        .M_AXI_FPD_rlast(CIPS_0_M_AXI_GP0_RLAST),
        .M_AXI_FPD_rready(CIPS_0_M_AXI_GP0_RREADY),
        .M_AXI_FPD_rresp(CIPS_0_M_AXI_GP0_RRESP),
        .M_AXI_FPD_rvalid(CIPS_0_M_AXI_GP0_RVALID),
        .M_AXI_FPD_wdata(CIPS_0_M_AXI_GP0_WDATA),
        .M_AXI_FPD_wlast(CIPS_0_M_AXI_GP0_WLAST),
        .M_AXI_FPD_wready(CIPS_0_M_AXI_GP0_WREADY),
        .M_AXI_FPD_wstrb(CIPS_0_M_AXI_GP0_WSTRB),
        .M_AXI_FPD_wvalid(CIPS_0_M_AXI_GP0_WVALID),
        .m_axi_fpd_aclk(clk_wizard_0_clk_out1),
        .pl0_ref_clk(CIPS_0_pl_clk0),
        .pl0_resetn(CIPS_0_pl_resetn1),
        .pl_ps_irq0(axi_intc_0_irq));
  vmk180_thin_axi_intc_0_0 axi_intc_0
       (.intr(1'b0),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(clk_wizard_0_clk_out1),
        .s_axi_araddr(icn_ctrl_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(icn_ctrl_M00_AXI_ARREADY),
        .s_axi_arvalid(icn_ctrl_M00_AXI_ARVALID),
        .s_axi_awaddr(icn_ctrl_M00_AXI_AWADDR),
        .s_axi_awready(icn_ctrl_M00_AXI_AWREADY),
        .s_axi_awvalid(icn_ctrl_M00_AXI_AWVALID),
        .s_axi_bready(icn_ctrl_M00_AXI_BREADY),
        .s_axi_bresp(icn_ctrl_M00_AXI_BRESP),
        .s_axi_bvalid(icn_ctrl_M00_AXI_BVALID),
        .s_axi_rdata(icn_ctrl_M00_AXI_RDATA),
        .s_axi_rready(icn_ctrl_M00_AXI_RREADY),
        .s_axi_rresp(icn_ctrl_M00_AXI_RRESP),
        .s_axi_rvalid(icn_ctrl_M00_AXI_RVALID),
        .s_axi_wdata(icn_ctrl_M00_AXI_WDATA),
        .s_axi_wready(icn_ctrl_M00_AXI_WREADY),
        .s_axi_wstrb(icn_ctrl_M00_AXI_WSTRB),
        .s_axi_wvalid(icn_ctrl_M00_AXI_WVALID));
  vmk180_thin_clk_wizard_0_0 clk_wizard_0
       (.clk_in1(CIPS_0_pl_clk0),
        .clk_out1_ce(1'b1),
        .clk_out1_clr_n(1'b1),
        .clk_out1_o3(clk_wizard_0_clk_out1),
        .locked(clk_wizard_0_locked),
        .resetn(CIPS_0_pl_resetn1));
  vmk180_thin_icn_ctrl_0 icn_ctrl
       (.M00_AXI_araddr(icn_ctrl_M00_AXI_ARADDR),
        .M00_AXI_arready(icn_ctrl_M00_AXI_ARREADY),
        .M00_AXI_arvalid(icn_ctrl_M00_AXI_ARVALID),
        .M00_AXI_awaddr(icn_ctrl_M00_AXI_AWADDR),
        .M00_AXI_awready(icn_ctrl_M00_AXI_AWREADY),
        .M00_AXI_awvalid(icn_ctrl_M00_AXI_AWVALID),
        .M00_AXI_bready(icn_ctrl_M00_AXI_BREADY),
        .M00_AXI_bresp(icn_ctrl_M00_AXI_BRESP),
        .M00_AXI_bvalid(icn_ctrl_M00_AXI_BVALID),
        .M00_AXI_rdata(icn_ctrl_M00_AXI_RDATA),
        .M00_AXI_rready(icn_ctrl_M00_AXI_RREADY),
        .M00_AXI_rresp(icn_ctrl_M00_AXI_RRESP),
        .M00_AXI_rvalid(icn_ctrl_M00_AXI_RVALID),
        .M00_AXI_wdata(icn_ctrl_M00_AXI_WDATA),
        .M00_AXI_wready(icn_ctrl_M00_AXI_WREADY),
        .M00_AXI_wstrb(icn_ctrl_M00_AXI_WSTRB),
        .M00_AXI_wvalid(icn_ctrl_M00_AXI_WVALID),
        .S00_AXI_araddr(CIPS_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(CIPS_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(CIPS_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(CIPS_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(CIPS_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(CIPS_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(CIPS_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(CIPS_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(CIPS_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(CIPS_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_aruser(CIPS_0_M_AXI_GP0_ARUSER),
        .S00_AXI_arvalid(CIPS_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(CIPS_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(CIPS_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(CIPS_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(CIPS_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(CIPS_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(CIPS_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(CIPS_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(CIPS_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(CIPS_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(CIPS_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awuser(CIPS_0_M_AXI_GP0_AWUSER),
        .S00_AXI_awvalid(CIPS_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(CIPS_0_M_AXI_GP0_BID),
        .S00_AXI_bready(CIPS_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(CIPS_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(CIPS_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(CIPS_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(CIPS_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(CIPS_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(CIPS_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(CIPS_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(CIPS_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(CIPS_0_M_AXI_GP0_WDATA),
        .S00_AXI_wlast(CIPS_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(CIPS_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(CIPS_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(CIPS_0_M_AXI_GP0_WVALID),
        .aclk(clk_wizard_0_clk_out1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  vmk180_thin_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wizard_0_locked),
        .ext_reset_in(CIPS_0_pl_resetn1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wizard_0_clk_out1));
endmodule
