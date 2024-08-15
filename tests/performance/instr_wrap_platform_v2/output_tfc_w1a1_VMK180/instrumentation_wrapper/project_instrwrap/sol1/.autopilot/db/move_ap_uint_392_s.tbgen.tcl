set moduleName move_ap_uint_392_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {move<ap_uint<392> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ finnix int 392 regular {axi_s 1 volatile  { finnix Data } }  }
	{ finnix0 int 392 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "finnix", "interface" : "axis", "bitwidth" : 392, "direction" : "WRITEONLY"} , 
 	{ "Name" : "finnix0", "interface" : "fifo", "bitwidth" : 392, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ finnix0_dout sc_in sc_lv 392 signal 1 } 
	{ finnix0_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ finnix0_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ finnix0_empty_n sc_in sc_logic 1 signal 1 } 
	{ finnix0_read sc_out sc_logic 1 signal 1 } 
	{ finnix_TREADY sc_in sc_logic 1 outacc 0 } 
	{ finnix_TDATA sc_out sc_lv 392 signal 0 } 
	{ finnix_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "finnix0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":392, "type": "signal", "bundle":{"name": "finnix0", "role": "dout" }} , 
 	{ "name": "finnix0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "finnix0", "role": "num_data_valid" }} , 
 	{ "name": "finnix0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "finnix0", "role": "fifo_cap" }} , 
 	{ "name": "finnix0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "finnix0", "role": "empty_n" }} , 
 	{ "name": "finnix0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "finnix0", "role": "read" }} , 
 	{ "name": "finnix_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "finnix", "role": "TREADY" }} , 
 	{ "name": "finnix_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":392, "type": "signal", "bundle":{"name": "finnix", "role": "TDATA" }} , 
 	{ "name": "finnix_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "finnix", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "move_ap_uint_392_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "finnix", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "finnix_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "finnix0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "finnix0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_finnix_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	move_ap_uint_392_s {
		finnix {Type O LastRead -1 FirstWrite 0}
		finnix0 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	finnix { axis {  { finnix_TREADY out_acc 0 1 }  { finnix_TDATA out_data 1 392 }  { finnix_TVALID out_vld 1 1 } } }
	finnix0 { ap_fifo {  { finnix0_dout fifo_port_we 0 392 }  { finnix0_num_data_valid fifo_status_num_data_valid 0 2 }  { finnix0_fifo_cap fifo_update 0 2 }  { finnix0_empty_n fifo_status 0 1 }  { finnix0_read fifo_data 1 1 } } }
}
