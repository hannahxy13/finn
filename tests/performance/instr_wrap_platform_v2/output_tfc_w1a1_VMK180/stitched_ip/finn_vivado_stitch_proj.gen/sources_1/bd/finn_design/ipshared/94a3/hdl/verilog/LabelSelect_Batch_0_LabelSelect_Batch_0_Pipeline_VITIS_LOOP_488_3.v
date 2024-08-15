// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module LabelSelect_Batch_0_LabelSelect_Batch_0_Pipeline_VITIS_LOOP_488_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in0_V_TVALID,
        in0_V_TDATA,
        in0_V_TREADY,
        conv2_i_i107_i_out,
        conv2_i_i107_i_out_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   in0_V_TVALID;
input  [7:0] in0_V_TDATA;
output   in0_V_TREADY;
output  [7:0] conv2_i_i107_i_out;
output   conv2_i_i107_i_out_ap_vld;

reg ap_idle;
reg in0_V_TREADY;
reg conv2_i_i107_i_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln488_fu_93_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    in0_V_TDATA_blk_n;
reg   [3:0] idx_1_fu_44;
wire   [3:0] idx_fu_87_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_block_1;
reg   [6:0] empty_fu_48;
wire   [6:0] select_ln509_1_fu_127_p3;
reg   [6:0] ap_sig_allocacmp_p_load;
reg   [7:0] conv2_i_i107_i_fu_52;
wire   [7:0] select_ln509_fu_119_p3;
reg   [7:0] ap_sig_allocacmp_conv2_i_i107_i_load_1;
wire   [6:0] inval_V_fu_105_p1;
wire   [0:0] cmp_fu_109_p2;
wire   [7:0] conv2_i_i_i_cast_fu_115_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
reg    ap_condition_120;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

LabelSelect_Batch_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        if ((icmp_ln488_fu_93_p2 == 1'd0)) begin
            conv2_i_i107_i_fu_52 <= select_ln509_fu_119_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            conv2_i_i107_i_fu_52 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        if ((icmp_ln488_fu_93_p2 == 1'd0)) begin
            empty_fu_48 <= select_ln509_1_fu_127_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            empty_fu_48 <= 7'd64;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        if ((icmp_ln488_fu_93_p2 == 1'd0)) begin
            idx_1_fu_44 <= idx_fu_87_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx_1_fu_44 <= 4'd0;
        end
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0)))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln488_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_block_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_block_1 = idx_1_fu_44;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_conv2_i_i107_i_load_1 = 8'd0;
    end else begin
        ap_sig_allocacmp_conv2_i_i107_i_load_1 = conv2_i_i107_i_fu_52;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_p_load = 7'd64;
    end else begin
        ap_sig_allocacmp_p_load = empty_fu_48;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln488_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        conv2_i_i107_i_out_ap_vld = 1'b1;
    end else begin
        conv2_i_i107_i_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln488_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln488_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        in0_V_TREADY = 1'b1;
    end else begin
        in0_V_TREADY = 1'b0;
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
    ap_block_state1_pp0_stage0_iter0 = ((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0)));
end

always @ (*) begin
    ap_condition_120 = (~((ap_start_int == 1'b0) | ((icmp_ln488_fu_93_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_fsm_state1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign cmp_fu_109_p2 = (($signed(inval_V_fu_105_p1) > $signed(ap_sig_allocacmp_p_load)) ? 1'b1 : 1'b0);

assign conv2_i_i107_i_out = conv2_i_i107_i_fu_52;

assign conv2_i_i_i_cast_fu_115_p1 = ap_sig_allocacmp_block_1;

assign icmp_ln488_fu_93_p2 = ((ap_sig_allocacmp_block_1 == 4'd10) ? 1'b1 : 1'b0);

assign idx_fu_87_p2 = (ap_sig_allocacmp_block_1 + 4'd1);

assign inval_V_fu_105_p1 = in0_V_TDATA[6:0];

assign select_ln509_1_fu_127_p3 = ((cmp_fu_109_p2[0:0] == 1'b1) ? inval_V_fu_105_p1 : ap_sig_allocacmp_p_load);

assign select_ln509_fu_119_p3 = ((cmp_fu_109_p2[0:0] == 1'b1) ? conv2_i_i_i_cast_fu_115_p1 : ap_sig_allocacmp_conv2_i_i107_i_load_1);

endmodule //LabelSelect_Batch_0_LabelSelect_Batch_0_Pipeline_VITIS_LOOP_488_3
