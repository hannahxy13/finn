// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XINSTRUMENTATION_WRAPPER_H
#define XINSTRUMENTATION_WRAPPER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xinstrumentation_wrapper_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Ctrl_BaseAddress;
} XInstrumentation_wrapper_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XInstrumentation_wrapper;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XInstrumentation_wrapper_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XInstrumentation_wrapper_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XInstrumentation_wrapper_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XInstrumentation_wrapper_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XInstrumentation_wrapper_Initialize(XInstrumentation_wrapper *InstancePtr, u16 DeviceId);
XInstrumentation_wrapper_Config* XInstrumentation_wrapper_LookupConfig(u16 DeviceId);
int XInstrumentation_wrapper_CfgInitialize(XInstrumentation_wrapper *InstancePtr, XInstrumentation_wrapper_Config *ConfigPtr);
#else
int XInstrumentation_wrapper_Initialize(XInstrumentation_wrapper *InstancePtr, const char* InstanceName);
int XInstrumentation_wrapper_Release(XInstrumentation_wrapper *InstancePtr);
#endif


void XInstrumentation_wrapper_Set_cfg(XInstrumentation_wrapper *InstancePtr, u32 Data);
u32 XInstrumentation_wrapper_Get_cfg(XInstrumentation_wrapper *InstancePtr);
void XInstrumentation_wrapper_Set_status_i(XInstrumentation_wrapper *InstancePtr, u32 Data);
u32 XInstrumentation_wrapper_Get_status_i(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_status_o(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_status_o_vld(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_latency(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_latency_vld(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_interval(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_interval_vld(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_checksum(XInstrumentation_wrapper *InstancePtr);
u32 XInstrumentation_wrapper_Get_checksum_vld(XInstrumentation_wrapper *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
