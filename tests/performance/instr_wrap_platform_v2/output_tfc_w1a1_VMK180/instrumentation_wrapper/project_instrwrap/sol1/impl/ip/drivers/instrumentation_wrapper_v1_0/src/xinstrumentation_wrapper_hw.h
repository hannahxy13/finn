// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// ctrl
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

#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_CFG_DATA      0x10
#define XINSTRUMENTATION_WRAPPER_CTRL_BITS_CFG_DATA      32
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_STATUS_I_DATA 0x18
#define XINSTRUMENTATION_WRAPPER_CTRL_BITS_STATUS_I_DATA 32
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_STATUS_O_DATA 0x20
#define XINSTRUMENTATION_WRAPPER_CTRL_BITS_STATUS_O_DATA 32
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_STATUS_O_CTRL 0x24
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_LATENCY_DATA  0x28
#define XINSTRUMENTATION_WRAPPER_CTRL_BITS_LATENCY_DATA  32
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_LATENCY_CTRL  0x2c
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_INTERVAL_DATA 0x38
#define XINSTRUMENTATION_WRAPPER_CTRL_BITS_INTERVAL_DATA 32
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_INTERVAL_CTRL 0x3c
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_CHECKSUM_DATA 0x48
#define XINSTRUMENTATION_WRAPPER_CTRL_BITS_CHECKSUM_DATA 32
#define XINSTRUMENTATION_WRAPPER_CTRL_ADDR_CHECKSUM_CTRL 0x4c

