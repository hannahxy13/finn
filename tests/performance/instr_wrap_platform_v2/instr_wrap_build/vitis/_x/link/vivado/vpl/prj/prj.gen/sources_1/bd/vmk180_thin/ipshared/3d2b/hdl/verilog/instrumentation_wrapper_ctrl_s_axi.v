// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module instrumentation_wrapper_ctrl_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [31:0]                   cfg,
    output wire [31:0]                   status_i,
    input  wire [31:0]                   status_o,
    input  wire                          status_o_ap_vld,
    input  wire [31:0]                   latency,
    input  wire                          latency_ap_vld,
    input  wire [31:0]                   interval,
    input  wire                          interval_ap_vld,
    input  wire [31:0]                   checksum,
    input  wire                          checksum_ap_vld
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of cfg
//        bit 31~0 - cfg[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of status_i
//        bit 31~0 - status_i[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of status_o
//        bit 31~0 - status_o[31:0] (Read)
// 0x24 : Control signal of status_o
//        bit 0  - status_o_ap_vld (Read/COR)
//        others - reserved
// 0x28 : Data signal of latency
//        bit 31~0 - latency[31:0] (Read)
// 0x2c : Control signal of latency
//        bit 0  - latency_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of interval
//        bit 31~0 - interval[31:0] (Read)
// 0x3c : Control signal of interval
//        bit 0  - interval_ap_vld (Read/COR)
//        others - reserved
// 0x48 : Data signal of checksum
//        bit 31~0 - checksum[31:0] (Read)
// 0x4c : Control signal of checksum
//        bit 0  - checksum_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_CFG_DATA_0      = 7'h10,
    ADDR_CFG_CTRL        = 7'h14,
    ADDR_STATUS_I_DATA_0 = 7'h18,
    ADDR_STATUS_I_CTRL   = 7'h1c,
    ADDR_STATUS_O_DATA_0 = 7'h20,
    ADDR_STATUS_O_CTRL   = 7'h24,
    ADDR_LATENCY_DATA_0  = 7'h28,
    ADDR_LATENCY_CTRL    = 7'h2c,
    ADDR_INTERVAL_DATA_0 = 7'h38,
    ADDR_INTERVAL_CTRL   = 7'h3c,
    ADDR_CHECKSUM_DATA_0 = 7'h48,
    ADDR_CHECKSUM_CTRL   = 7'h4c,
    WRIDLE               = 2'd0,
    WRDATA               = 2'd1,
    WRRESP               = 2'd2,
    WRRESET              = 2'd3,
    RDIDLE               = 2'd0,
    RDDATA               = 2'd1,
    RDRESET              = 2'd2,
    ADDR_BITS                = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_cfg = 'b0;
    reg  [31:0]                   int_status_i = 'b0;
    reg                           int_status_o_ap_vld;
    reg  [31:0]                   int_status_o = 'b0;
    reg                           int_latency_ap_vld;
    reg  [31:0]                   int_latency = 'b0;
    reg                           int_interval_ap_vld;
    reg  [31:0]                   int_interval = 'b0;
    reg                           int_checksum_ap_vld;
    reg  [31:0]                   int_checksum = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_CFG_DATA_0: begin
                    rdata <= int_cfg[31:0];
                end
                ADDR_STATUS_I_DATA_0: begin
                    rdata <= int_status_i[31:0];
                end
                ADDR_STATUS_O_DATA_0: begin
                    rdata <= int_status_o[31:0];
                end
                ADDR_STATUS_O_CTRL: begin
                    rdata[0] <= int_status_o_ap_vld;
                end
                ADDR_LATENCY_DATA_0: begin
                    rdata <= int_latency[31:0];
                end
                ADDR_LATENCY_CTRL: begin
                    rdata[0] <= int_latency_ap_vld;
                end
                ADDR_INTERVAL_DATA_0: begin
                    rdata <= int_interval[31:0];
                end
                ADDR_INTERVAL_CTRL: begin
                    rdata[0] <= int_interval_ap_vld;
                end
                ADDR_CHECKSUM_DATA_0: begin
                    rdata <= int_checksum[31:0];
                end
                ADDR_CHECKSUM_CTRL: begin
                    rdata[0] <= int_checksum_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign cfg      = int_cfg;
assign status_i = int_status_i;
// int_cfg[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_cfg[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CFG_DATA_0)
            int_cfg[31:0] <= (WDATA[31:0] & wmask) | (int_cfg[31:0] & ~wmask);
    end
end

// int_status_i[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_status_i[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STATUS_I_DATA_0)
            int_status_i[31:0] <= (WDATA[31:0] & wmask) | (int_status_i[31:0] & ~wmask);
    end
end

// int_status_o
always @(posedge ACLK) begin
    if (ARESET)
        int_status_o <= 0;
    else if (ACLK_EN) begin
        if (status_o_ap_vld)
            int_status_o <= status_o;
    end
end

// int_status_o_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_status_o_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (status_o_ap_vld)
            int_status_o_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_STATUS_O_CTRL)
            int_status_o_ap_vld <= 1'b0; // clear on read
    end
end

// int_latency
always @(posedge ACLK) begin
    if (ARESET)
        int_latency <= 0;
    else if (ACLK_EN) begin
        if (latency_ap_vld)
            int_latency <= latency;
    end
end

// int_latency_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_latency_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (latency_ap_vld)
            int_latency_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_LATENCY_CTRL)
            int_latency_ap_vld <= 1'b0; // clear on read
    end
end

// int_interval
always @(posedge ACLK) begin
    if (ARESET)
        int_interval <= 0;
    else if (ACLK_EN) begin
        if (interval_ap_vld)
            int_interval <= interval;
    end
end

// int_interval_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_interval_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (interval_ap_vld)
            int_interval_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_INTERVAL_CTRL)
            int_interval_ap_vld <= 1'b0; // clear on read
    end
end

// int_checksum
always @(posedge ACLK) begin
    if (ARESET)
        int_checksum <= 0;
    else if (ACLK_EN) begin
        if (checksum_ap_vld)
            int_checksum <= checksum;
    end
end

// int_checksum_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_checksum_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (checksum_ap_vld)
            int_checksum_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CHECKSUM_CTRL)
            int_checksum_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------

endmodule
