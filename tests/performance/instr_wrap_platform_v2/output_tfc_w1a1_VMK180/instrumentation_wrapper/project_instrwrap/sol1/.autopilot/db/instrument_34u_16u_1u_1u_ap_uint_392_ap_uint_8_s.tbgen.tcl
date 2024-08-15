set moduleName instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_s
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
set C_modelName {instrument<34u, 16u, 1u, 1u, ap_uint<392>, ap_uint<8> >}
set C_modelType { void 0 }
set C_modelArgList {
	{ cfg int 32 regular {fifo 0}  }
	{ status int 32 regular {pointer 2}  }
	{ latency int 32 regular {pointer 1}  }
	{ interval int 32 regular {pointer 1}  }
	{ checksum int 32 regular {pointer 1}  }
	{ finnix0 int 392 regular {fifo 1 volatile } {global 1}  }
	{ finnox0 int 8 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cfg", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "status", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "latency", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "interval", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "checksum", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "finnix0", "interface" : "fifo", "bitwidth" : 392, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "finnox0", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cfg_dout sc_in sc_lv 32 signal 0 } 
	{ cfg_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ cfg_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cfg_empty_n sc_in sc_logic 1 signal 0 } 
	{ cfg_read sc_out sc_logic 1 signal 0 } 
	{ status_i sc_in sc_lv 32 signal 1 } 
	{ status_o sc_out sc_lv 32 signal 1 } 
	{ status_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ latency sc_out sc_lv 32 signal 2 } 
	{ latency_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ interval sc_out sc_lv 32 signal 3 } 
	{ interval_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ checksum sc_out sc_lv 32 signal 4 } 
	{ checksum_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ finnix0_din sc_out sc_lv 392 signal 5 } 
	{ finnix0_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ finnix0_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ finnix0_full_n sc_in sc_logic 1 signal 5 } 
	{ finnix0_write sc_out sc_logic 1 signal 5 } 
	{ finnox0_dout sc_in sc_lv 8 signal 6 } 
	{ finnox0_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ finnox0_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ finnox0_empty_n sc_in sc_logic 1 signal 6 } 
	{ finnox0_read sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cfg_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cfg", "role": "dout" }} , 
 	{ "name": "cfg_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg", "role": "num_data_valid" }} , 
 	{ "name": "cfg_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cfg", "role": "fifo_cap" }} , 
 	{ "name": "cfg_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg", "role": "empty_n" }} , 
 	{ "name": "cfg_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cfg", "role": "read" }} , 
 	{ "name": "status_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "status", "role": "i" }} , 
 	{ "name": "status_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "status", "role": "o" }} , 
 	{ "name": "status_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "status", "role": "o_ap_vld" }} , 
 	{ "name": "latency", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "latency", "role": "default" }} , 
 	{ "name": "latency_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "latency", "role": "ap_vld" }} , 
 	{ "name": "interval", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "interval", "role": "default" }} , 
 	{ "name": "interval_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "interval", "role": "ap_vld" }} , 
 	{ "name": "checksum", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "checksum", "role": "default" }} , 
 	{ "name": "checksum_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "checksum", "role": "ap_vld" }} , 
 	{ "name": "finnix0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":392, "type": "signal", "bundle":{"name": "finnix0", "role": "din" }} , 
 	{ "name": "finnix0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "finnix0", "role": "num_data_valid" }} , 
 	{ "name": "finnix0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "finnix0", "role": "fifo_cap" }} , 
 	{ "name": "finnix0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "finnix0", "role": "full_n" }} , 
 	{ "name": "finnix0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "finnix0", "role": "write" }} , 
 	{ "name": "finnox0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "finnox0", "role": "dout" }} , 
 	{ "name": "finnox0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "finnox0", "role": "num_data_valid" }} , 
 	{ "name": "finnox0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "finnox0", "role": "fifo_cap" }} , 
 	{ "name": "finnox0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "finnox0", "role": "empty_n" }} , 
 	{ "name": "finnox0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "finnox0", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cfg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "status", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "latency", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "interval", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "checksum", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "finnix0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "cnt_clk_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "timestamp_ovf", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lfsr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "finnox0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "timestamp_unf", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_latency_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ts1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_interval_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pkts_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_checksum_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.timestamps_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_s {
		cfg {Type I LastRead 0 FirstWrite -1}
		status {Type IO LastRead 2 FirstWrite 2}
		latency {Type O LastRead -1 FirstWrite 2}
		interval {Type O LastRead -1 FirstWrite 2}
		checksum {Type O LastRead -1 FirstWrite 2}
		finnix0 {Type O LastRead 0 FirstWrite -1}
		cnt_clk_V {Type IO LastRead -1 FirstWrite -1}
		timestamp_ovf {Type IO LastRead -1 FirstWrite -1}
		icnt_V {Type IO LastRead -1 FirstWrite -1}
		lfsr_V {Type IO LastRead -1 FirstWrite -1}
		finnox0 {Type I LastRead 0 FirstWrite -1}
		timestamp_unf {Type IO LastRead -1 FirstWrite -1}
		last_latency_V {Type IO LastRead -1 FirstWrite -1}
		ts1_V {Type IO LastRead -1 FirstWrite -1}
		last_interval_V {Type IO LastRead -1 FirstWrite -1}
		pkts_V {Type IO LastRead -1 FirstWrite -1}
		last_checksum_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cfg { ap_fifo {  { cfg_dout fifo_port_we 0 32 }  { cfg_num_data_valid fifo_status_num_data_valid 0 3 }  { cfg_fifo_cap fifo_update 0 3 }  { cfg_empty_n fifo_status 0 1 }  { cfg_read fifo_data 1 1 } } }
	status { ap_ovld {  { status_i in_data 0 32 }  { status_o out_data 1 32 }  { status_o_ap_vld out_vld 1 1 } } }
	latency { ap_vld {  { latency out_data 1 32 }  { latency_ap_vld out_vld 1 1 } } }
	interval { ap_vld {  { interval out_data 1 32 }  { interval_ap_vld out_vld 1 1 } } }
	checksum { ap_vld {  { checksum out_data 1 32 }  { checksum_ap_vld out_vld 1 1 } } }
	finnix0 { ap_fifo {  { finnix0_din fifo_port_we 1 392 }  { finnix0_num_data_valid fifo_status_num_data_valid 0 2 }  { finnix0_fifo_cap fifo_update 0 2 }  { finnix0_full_n fifo_status 0 1 }  { finnix0_write fifo_data 1 1 } } }
	finnox0 { ap_fifo {  { finnox0_dout fifo_port_we 0 8 }  { finnox0_num_data_valid fifo_status_num_data_valid 0 2 }  { finnox0_fifo_cap fifo_update 0 2 }  { finnox0_empty_n fifo_status 0 1 }  { finnox0_read fifo_data 1 1 } } }
}
