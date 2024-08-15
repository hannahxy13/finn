// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module instrumentation_wrapper_move_ap_uint_8_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        finnox_TDATA,
        finnox_TVALID,
        finnox_TREADY,
        finnox0_din,
        finnox0_num_data_valid,
        finnox0_fifo_cap,
        finnox0_full_n,
        finnox0_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] finnox_TDATA;
input   finnox_TVALID;
output   finnox_TREADY;
output  [7:0] finnox0_din;
input  [1:0] finnox0_num_data_valid;
input  [1:0] finnox0_fifo_cap;
input   finnox0_full_n;
output   finnox0_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg finnox0_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    finnox_TDATA_blk_n;
reg    finnox0_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    regslice_both_finnox_U_apdone_blk;
wire   [7:0] finnox_TDATA_int_regslice;
wire    finnox_TVALID_int_regslice;
reg    finnox_TREADY_int_regslice;
wire    regslice_both_finnox_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

instrumentation_wrapper_regslice_both #(
    .DataWidth( 8 ))
regslice_both_finnox_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(finnox_TDATA),
    .vld_in(finnox_TVALID),
    .ack_in(regslice_both_finnox_U_ack_in),
    .data_out(finnox_TDATA_int_regslice),
    .vld_out(finnox_TVALID_int_regslice),
    .ack_out(finnox_TREADY_int_regslice),
    .apdone_blk(regslice_both_finnox_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (finnox_TVALID_int_regslice == 1'b0) | (finnox0_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (finnox_TVALID_int_regslice == 1'b0) | (finnox0_full_n == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (finnox_TVALID_int_regslice == 1'b0) | (finnox0_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (finnox_TVALID_int_regslice == 1'b0) | (finnox0_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        finnox0_blk_n = finnox0_full_n;
    end else begin
        finnox0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (finnox_TVALID_int_regslice == 1'b0) | (finnox0_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        finnox0_write = 1'b1;
    end else begin
        finnox0_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        finnox_TDATA_blk_n = finnox_TVALID_int_regslice;
    end else begin
        finnox_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (finnox_TVALID_int_regslice == 1'b0) | (finnox0_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        finnox_TREADY_int_regslice = 1'b1;
    end else begin
        finnox_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (finnox_TVALID_int_regslice == 1'b0) | (finnox0_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign finnox0_din = finnox_TDATA_int_regslice;

assign finnox_TREADY = regslice_both_finnox_U_ack_in;

endmodule //instrumentation_wrapper_move_ap_uint_8_s
