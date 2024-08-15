// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xinstrumentation_wrapper.h"

extern XInstrumentation_wrapper_Config XInstrumentation_wrapper_ConfigTable[];

XInstrumentation_wrapper_Config *XInstrumentation_wrapper_LookupConfig(u16 DeviceId) {
	XInstrumentation_wrapper_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINSTRUMENTATION_WRAPPER_NUM_INSTANCES; Index++) {
		if (XInstrumentation_wrapper_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XInstrumentation_wrapper_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XInstrumentation_wrapper_Initialize(XInstrumentation_wrapper *InstancePtr, u16 DeviceId) {
	XInstrumentation_wrapper_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XInstrumentation_wrapper_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XInstrumentation_wrapper_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

