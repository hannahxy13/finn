-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity instrumentation_wrapper is
generic (
    C_S_AXI_CTRL_ADDR_WIDTH : INTEGER := 7;
    C_S_AXI_CTRL_DATA_WIDTH : INTEGER := 32 );
port (
    s_axi_ctrl_AWVALID : IN STD_LOGIC;
    s_axi_ctrl_AWREADY : OUT STD_LOGIC;
    s_axi_ctrl_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_ADDR_WIDTH-1 downto 0);
    s_axi_ctrl_WVALID : IN STD_LOGIC;
    s_axi_ctrl_WREADY : OUT STD_LOGIC;
    s_axi_ctrl_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_DATA_WIDTH-1 downto 0);
    s_axi_ctrl_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_DATA_WIDTH/8-1 downto 0);
    s_axi_ctrl_ARVALID : IN STD_LOGIC;
    s_axi_ctrl_ARREADY : OUT STD_LOGIC;
    s_axi_ctrl_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CTRL_ADDR_WIDTH-1 downto 0);
    s_axi_ctrl_RVALID : OUT STD_LOGIC;
    s_axi_ctrl_RREADY : IN STD_LOGIC;
    s_axi_ctrl_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CTRL_DATA_WIDTH-1 downto 0);
    s_axi_ctrl_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_ctrl_BVALID : OUT STD_LOGIC;
    s_axi_ctrl_BREADY : IN STD_LOGIC;
    s_axi_ctrl_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    finnix_TDATA : OUT STD_LOGIC_VECTOR (391 downto 0);
    finnox_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    finnox_TVALID : IN STD_LOGIC;
    finnox_TREADY : OUT STD_LOGIC;
    finnix_TVALID : OUT STD_LOGIC;
    finnix_TREADY : IN STD_LOGIC );
end;


architecture behav of instrumentation_wrapper is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "instrumentation_wrapper_instrumentation_wrapper,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvm1802-vsva2197-2MP-e-S,HLS_INPUT_CLOCK=3.300000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=2.351500,HLS_SYN_LAT=3,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1654,HLS_SYN_LUT=2227,HLS_VERSION=2022_2}";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal cfg : STD_LOGIC_VECTOR (31 downto 0);
    signal status_i : STD_LOGIC_VECTOR (31 downto 0);
    signal entry_proc_U0_ap_start : STD_LOGIC;
    signal entry_proc_U0_ap_done : STD_LOGIC;
    signal entry_proc_U0_ap_continue : STD_LOGIC;
    signal entry_proc_U0_ap_idle : STD_LOGIC;
    signal entry_proc_U0_ap_ready : STD_LOGIC;
    signal entry_proc_U0_cfg_c_din : STD_LOGIC_VECTOR (31 downto 0);
    signal entry_proc_U0_cfg_c_write : STD_LOGIC;
    signal move_ap_uint_8_U0_ap_start : STD_LOGIC;
    signal move_ap_uint_8_U0_ap_done : STD_LOGIC;
    signal move_ap_uint_8_U0_ap_continue : STD_LOGIC;
    signal move_ap_uint_8_U0_ap_idle : STD_LOGIC;
    signal move_ap_uint_8_U0_ap_ready : STD_LOGIC;
    signal move_ap_uint_8_U0_finnox_TREADY : STD_LOGIC;
    signal move_ap_uint_8_U0_finnox0_din : STD_LOGIC_VECTOR (7 downto 0);
    signal move_ap_uint_8_U0_finnox0_write : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_start : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_done : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_continue : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_idle : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_ready : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_cfg_read : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_status_o : STD_LOGIC_VECTOR (31 downto 0);
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_status_o_ap_vld : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_latency : STD_LOGIC_VECTOR (31 downto 0);
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_latency_ap_vld : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_interval : STD_LOGIC_VECTOR (31 downto 0);
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_interval_ap_vld : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_checksum : STD_LOGIC_VECTOR (31 downto 0);
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_checksum_ap_vld : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnix0_din : STD_LOGIC_VECTOR (391 downto 0);
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnix0_write : STD_LOGIC;
    signal instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnox0_read : STD_LOGIC;
    signal move_ap_uint_392_U0_ap_start : STD_LOGIC;
    signal move_ap_uint_392_U0_ap_done : STD_LOGIC;
    signal move_ap_uint_392_U0_ap_continue : STD_LOGIC;
    signal move_ap_uint_392_U0_ap_idle : STD_LOGIC;
    signal move_ap_uint_392_U0_ap_ready : STD_LOGIC;
    signal move_ap_uint_392_U0_finnix0_read : STD_LOGIC;
    signal move_ap_uint_392_U0_finnix_TDATA : STD_LOGIC_VECTOR (391 downto 0);
    signal move_ap_uint_392_U0_finnix_TVALID : STD_LOGIC;
    signal cfg_c_full_n : STD_LOGIC;
    signal cfg_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal cfg_c_num_data_valid : STD_LOGIC_VECTOR (2 downto 0);
    signal cfg_c_fifo_cap : STD_LOGIC_VECTOR (2 downto 0);
    signal cfg_c_empty_n : STD_LOGIC;
    signal finnox0_full_n : STD_LOGIC;
    signal finnox0_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal finnox0_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal finnox0_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal finnox0_empty_n : STD_LOGIC;
    signal finnix0_full_n : STD_LOGIC;
    signal finnix0_dout : STD_LOGIC_VECTOR (391 downto 0);
    signal finnix0_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal finnix0_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal finnix0_empty_n : STD_LOGIC;

    component instrumentation_wrapper_entry_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        cfg : IN STD_LOGIC_VECTOR (31 downto 0);
        cfg_c_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        cfg_c_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        cfg_c_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        cfg_c_full_n : IN STD_LOGIC;
        cfg_c_write : OUT STD_LOGIC );
    end component;


    component instrumentation_wrapper_move_ap_uint_8_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        finnox_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
        finnox_TVALID : IN STD_LOGIC;
        finnox_TREADY : OUT STD_LOGIC;
        finnox0_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        finnox0_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        finnox0_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        finnox0_full_n : IN STD_LOGIC;
        finnox0_write : OUT STD_LOGIC );
    end component;


    component instrumentation_wrapper_instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        cfg_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        cfg_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        cfg_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        cfg_empty_n : IN STD_LOGIC;
        cfg_read : OUT STD_LOGIC;
        status_i : IN STD_LOGIC_VECTOR (31 downto 0);
        status_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        status_o_ap_vld : OUT STD_LOGIC;
        latency : OUT STD_LOGIC_VECTOR (31 downto 0);
        latency_ap_vld : OUT STD_LOGIC;
        interval : OUT STD_LOGIC_VECTOR (31 downto 0);
        interval_ap_vld : OUT STD_LOGIC;
        checksum : OUT STD_LOGIC_VECTOR (31 downto 0);
        checksum_ap_vld : OUT STD_LOGIC;
        finnix0_din : OUT STD_LOGIC_VECTOR (391 downto 0);
        finnix0_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        finnix0_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        finnix0_full_n : IN STD_LOGIC;
        finnix0_write : OUT STD_LOGIC;
        finnox0_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        finnox0_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        finnox0_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        finnox0_empty_n : IN STD_LOGIC;
        finnox0_read : OUT STD_LOGIC );
    end component;


    component instrumentation_wrapper_move_ap_uint_392_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        finnix0_dout : IN STD_LOGIC_VECTOR (391 downto 0);
        finnix0_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
        finnix0_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
        finnix0_empty_n : IN STD_LOGIC;
        finnix0_read : OUT STD_LOGIC;
        finnix_TREADY : IN STD_LOGIC;
        finnix_TDATA : OUT STD_LOGIC_VECTOR (391 downto 0);
        finnix_TVALID : OUT STD_LOGIC );
    end component;


    component instrumentation_wrapper_fifo_w32_d3_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component instrumentation_wrapper_fifo_w8_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component instrumentation_wrapper_fifo_w392_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (391 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (391 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component instrumentation_wrapper_ctrl_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        cfg : OUT STD_LOGIC_VECTOR (31 downto 0);
        status_o : IN STD_LOGIC_VECTOR (31 downto 0);
        status_o_ap_vld : IN STD_LOGIC;
        status_i : OUT STD_LOGIC_VECTOR (31 downto 0);
        latency : IN STD_LOGIC_VECTOR (31 downto 0);
        latency_ap_vld : IN STD_LOGIC;
        interval : IN STD_LOGIC_VECTOR (31 downto 0);
        interval_ap_vld : IN STD_LOGIC;
        checksum : IN STD_LOGIC_VECTOR (31 downto 0);
        checksum_ap_vld : IN STD_LOGIC );
    end component;



begin
    ctrl_s_axi_U : component instrumentation_wrapper_ctrl_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CTRL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CTRL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_ctrl_AWVALID,
        AWREADY => s_axi_ctrl_AWREADY,
        AWADDR => s_axi_ctrl_AWADDR,
        WVALID => s_axi_ctrl_WVALID,
        WREADY => s_axi_ctrl_WREADY,
        WDATA => s_axi_ctrl_WDATA,
        WSTRB => s_axi_ctrl_WSTRB,
        ARVALID => s_axi_ctrl_ARVALID,
        ARREADY => s_axi_ctrl_ARREADY,
        ARADDR => s_axi_ctrl_ARADDR,
        RVALID => s_axi_ctrl_RVALID,
        RREADY => s_axi_ctrl_RREADY,
        RDATA => s_axi_ctrl_RDATA,
        RRESP => s_axi_ctrl_RRESP,
        BVALID => s_axi_ctrl_BVALID,
        BREADY => s_axi_ctrl_BREADY,
        BRESP => s_axi_ctrl_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        cfg => cfg,
        status_o => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_status_o,
        status_o_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_status_o_ap_vld,
        status_i => status_i,
        latency => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_latency,
        latency_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_latency_ap_vld,
        interval => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_interval,
        interval_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_interval_ap_vld,
        checksum => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_checksum,
        checksum_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_checksum_ap_vld);

    entry_proc_U0 : component instrumentation_wrapper_entry_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => entry_proc_U0_ap_start,
        ap_done => entry_proc_U0_ap_done,
        ap_continue => entry_proc_U0_ap_continue,
        ap_idle => entry_proc_U0_ap_idle,
        ap_ready => entry_proc_U0_ap_ready,
        cfg => cfg,
        cfg_c_din => entry_proc_U0_cfg_c_din,
        cfg_c_num_data_valid => cfg_c_num_data_valid,
        cfg_c_fifo_cap => cfg_c_fifo_cap,
        cfg_c_full_n => cfg_c_full_n,
        cfg_c_write => entry_proc_U0_cfg_c_write);

    move_ap_uint_8_U0 : component instrumentation_wrapper_move_ap_uint_8_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => move_ap_uint_8_U0_ap_start,
        ap_done => move_ap_uint_8_U0_ap_done,
        ap_continue => move_ap_uint_8_U0_ap_continue,
        ap_idle => move_ap_uint_8_U0_ap_idle,
        ap_ready => move_ap_uint_8_U0_ap_ready,
        finnox_TDATA => finnox_TDATA,
        finnox_TVALID => finnox_TVALID,
        finnox_TREADY => move_ap_uint_8_U0_finnox_TREADY,
        finnox0_din => move_ap_uint_8_U0_finnox0_din,
        finnox0_num_data_valid => finnox0_num_data_valid,
        finnox0_fifo_cap => finnox0_fifo_cap,
        finnox0_full_n => finnox0_full_n,
        finnox0_write => move_ap_uint_8_U0_finnox0_write);

    instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0 : component instrumentation_wrapper_instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_start,
        ap_done => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_done,
        ap_continue => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_continue,
        ap_idle => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_idle,
        ap_ready => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_ready,
        cfg_dout => cfg_c_dout,
        cfg_num_data_valid => cfg_c_num_data_valid,
        cfg_fifo_cap => cfg_c_fifo_cap,
        cfg_empty_n => cfg_c_empty_n,
        cfg_read => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_cfg_read,
        status_i => status_i,
        status_o => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_status_o,
        status_o_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_status_o_ap_vld,
        latency => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_latency,
        latency_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_latency_ap_vld,
        interval => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_interval,
        interval_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_interval_ap_vld,
        checksum => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_checksum,
        checksum_ap_vld => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_checksum_ap_vld,
        finnix0_din => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnix0_din,
        finnix0_num_data_valid => finnix0_num_data_valid,
        finnix0_fifo_cap => finnix0_fifo_cap,
        finnix0_full_n => finnix0_full_n,
        finnix0_write => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnix0_write,
        finnox0_dout => finnox0_dout,
        finnox0_num_data_valid => finnox0_num_data_valid,
        finnox0_fifo_cap => finnox0_fifo_cap,
        finnox0_empty_n => finnox0_empty_n,
        finnox0_read => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnox0_read);

    move_ap_uint_392_U0 : component instrumentation_wrapper_move_ap_uint_392_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => move_ap_uint_392_U0_ap_start,
        ap_done => move_ap_uint_392_U0_ap_done,
        ap_continue => move_ap_uint_392_U0_ap_continue,
        ap_idle => move_ap_uint_392_U0_ap_idle,
        ap_ready => move_ap_uint_392_U0_ap_ready,
        finnix0_dout => finnix0_dout,
        finnix0_num_data_valid => finnix0_num_data_valid,
        finnix0_fifo_cap => finnix0_fifo_cap,
        finnix0_empty_n => finnix0_empty_n,
        finnix0_read => move_ap_uint_392_U0_finnix0_read,
        finnix_TREADY => finnix_TREADY,
        finnix_TDATA => move_ap_uint_392_U0_finnix_TDATA,
        finnix_TVALID => move_ap_uint_392_U0_finnix_TVALID);

    cfg_c_U : component instrumentation_wrapper_fifo_w32_d3_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => entry_proc_U0_cfg_c_din,
        if_full_n => cfg_c_full_n,
        if_write => entry_proc_U0_cfg_c_write,
        if_dout => cfg_c_dout,
        if_num_data_valid => cfg_c_num_data_valid,
        if_fifo_cap => cfg_c_fifo_cap,
        if_empty_n => cfg_c_empty_n,
        if_read => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_cfg_read);

    finnox0_U : component instrumentation_wrapper_fifo_w8_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => move_ap_uint_8_U0_finnox0_din,
        if_full_n => finnox0_full_n,
        if_write => move_ap_uint_8_U0_finnox0_write,
        if_dout => finnox0_dout,
        if_num_data_valid => finnox0_num_data_valid,
        if_fifo_cap => finnox0_fifo_cap,
        if_empty_n => finnox0_empty_n,
        if_read => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnox0_read);

    finnix0_U : component instrumentation_wrapper_fifo_w392_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnix0_din,
        if_full_n => finnix0_full_n,
        if_write => instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_finnix0_write,
        if_dout => finnix0_dout,
        if_num_data_valid => finnix0_num_data_valid,
        if_fifo_cap => finnix0_fifo_cap,
        if_empty_n => finnix0_empty_n,
        if_read => move_ap_uint_392_U0_finnix0_read);





    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    entry_proc_U0_ap_continue <= ap_const_logic_1;
    entry_proc_U0_ap_start <= ap_const_logic_1;
    finnix_TDATA <= move_ap_uint_392_U0_finnix_TDATA;
    finnix_TVALID <= move_ap_uint_392_U0_finnix_TVALID;
    finnox_TREADY <= move_ap_uint_8_U0_finnox_TREADY;
    instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_continue <= ap_const_logic_1;
    instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0_ap_start <= ap_const_logic_1;
    move_ap_uint_392_U0_ap_continue <= ap_const_logic_1;
    move_ap_uint_392_U0_ap_start <= ap_const_logic_1;
    move_ap_uint_8_U0_ap_continue <= ap_const_logic_1;
    move_ap_uint_8_U0_ap_start <= ap_const_logic_1;
end behav;
