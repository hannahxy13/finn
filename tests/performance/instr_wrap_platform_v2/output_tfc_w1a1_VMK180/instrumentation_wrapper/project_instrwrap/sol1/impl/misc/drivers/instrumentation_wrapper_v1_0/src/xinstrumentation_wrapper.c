// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xinstrumentation_wrapper.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XInstrumentation_wrapper_CfgInitialize(XInstrumentation_wrapper *InstancePtr, XInstrumentation_wrapper_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XInstrumentation_wrapper_Set_cfg(XInstrumentation_wrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInstrumentation_wrapper_WriteReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_CFG_DATA, Data);
}

u32 XInstrumentation_wrapper_Get_cfg(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_CFG_DATA);
    return Data;
}

void XInstrumentation_wrapper_Set_status_i(XInstrumentation_wrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInstrumentation_wrapper_WriteReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_STATUS_I_DATA, Data);
}

u32 XInstrumentation_wrapper_Get_status_i(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_STATUS_I_DATA);
    return Data;
}

u32 XInstrumentation_wrapper_Get_status_o(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_STATUS_O_DATA);
    return Data;
}

u32 XInstrumentation_wrapper_Get_status_o_vld(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_STATUS_O_CTRL);
    return Data & 0x1;
}

u32 XInstrumentation_wrapper_Get_latency(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_LATENCY_DATA);
    return Data;
}

u32 XInstrumentation_wrapper_Get_latency_vld(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_LATENCY_CTRL);
    return Data & 0x1;
}

u32 XInstrumentation_wrapper_Get_interval(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_INTERVAL_DATA);
    return Data;
}

u32 XInstrumentation_wrapper_Get_interval_vld(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_INTERVAL_CTRL);
    return Data & 0x1;
}

u32 XInstrumentation_wrapper_Get_checksum(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_CHECKSUM_DATA);
    return Data;
}

u32 XInstrumentation_wrapper_Get_checksum_vld(XInstrumentation_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInstrumentation_wrapper_ReadReg(InstancePtr->Ctrl_BaseAddress, XINSTRUMENTATION_WRAPPER_CTRL_ADDR_CHECKSUM_CTRL);
    return Data & 0x1;
}

