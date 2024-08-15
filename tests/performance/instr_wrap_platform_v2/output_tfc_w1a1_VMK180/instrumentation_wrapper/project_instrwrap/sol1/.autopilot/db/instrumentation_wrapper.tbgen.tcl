set moduleName instrumentation_wrapper
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {instrumentation_wrapper}
set C_modelType { void 0 }
set C_modelArgList {
	{ finnix int 392 regular {axi_s 1 volatile  { finnix Data } }  }
	{ finnox int 8 regular {axi_s 0 volatile  { finnox Data } }  }
	{ cfg int 32 regular {axi_slave 0}  }
	{ status int 32 regular {axi_slave 2}  }
	{ latency int 32 regular {axi_slave 1}  }
	{ interval int 32 regular {axi_slave 1}  }
	{ checksum int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "finnix", "interface" : "axis", "bitwidth" : 392, "direction" : "WRITEONLY"} , 
 	{ "Name" : "finnox", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cfg", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "status", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_ovld","bitwidth" : 32, "direction" : "READWRITE", "offset" : {"in":24, "out":32}, "offset_end" : {"in":31, "out":39}} , 
 	{ "Name" : "latency", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":40}, "offset_end" : {"out":47}} , 
 	{ "Name" : "interval", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":56}, "offset_end" : {"out":63}} , 
 	{ "Name" : "checksum", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":72}, "offset_end" : {"out":79}} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ s_axi_ctrl_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_ctrl_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ finnix_TDATA sc_out sc_lv 392 signal 0 } 
	{ finnox_TDATA sc_in sc_lv 8 signal 1 } 
	{ finnox_TVALID sc_in sc_logic 1 invld 1 } 
	{ finnox_TREADY sc_out sc_logic 1 inacc 1 } 
	{ finnix_TVALID sc_out sc_logic 1 outvld 0 } 
	{ finnix_TREADY sc_in sc_logic 1 outacc 0 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl", "role": "AWADDR" },"address":[{"name":"cfg","role":"data","value":"16"},{"name":"status","role":"data","value":"24"}] },
	{ "name": "s_axi_ctrl_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ctrl", "role": "ARADDR" },"address":[{"name":"status","role":"data","value":"32"}, {"name":"status","role":"valid","value":"36","valid_bit":"0"},{"name":"latency","role":"data","value":"40"}, {"name":"latency","role":"valid","value":"44","valid_bit":"0"},{"name":"interval","role":"data","value":"56"}, {"name":"interval","role":"valid","value":"60","valid_bit":"0"},{"name":"checksum","role":"data","value":"72"}, {"name":"checksum","role":"valid","value":"76","valid_bit":"0"}] },
	{ "name": "s_axi_ctrl_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "finnix_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":392, "type": "signal", "bundle":{"name": "finnix", "role": "TDATA" }} , 
 	{ "name": "finnox_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "finnox", "role": "TDATA" }} , 
 	{ "name": "finnox_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "finnox", "role": "TVALID" }} , 
 	{ "name": "finnox_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "finnox", "role": "TREADY" }} , 
 	{ "name": "finnix_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "finnix", "role": "TVALID" }} , 
 	{ "name": "finnix_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "finnix", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "10", "11"],
		"CDFG" : "instrumentation_wrapper",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "entry_proc_U0"},
			{"ID" : "3", "Name" : "move_ap_uint_8_U0"},
			{"ID" : "5", "Name" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0"},
			{"ID" : "7", "Name" : "move_ap_uint_392_U0"}],
		"Port" : [
			{"Name" : "finnix", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "move_ap_uint_392_U0", "Port" : "finnix"}]},
			{"Name" : "finnox", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "move_ap_uint_8_U0", "Port" : "finnox"}]},
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "status", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "status"}]},
			{"Name" : "latency", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "latency"}]},
			{"Name" : "interval", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "interval"}]},
			{"Name" : "checksum", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "checksum"}]},
			{"Name" : "finnox0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "finnox0"},
					{"ID" : "3", "SubInstance" : "move_ap_uint_8_U0", "Port" : "finnox0"}]},
			{"Name" : "finnix0", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "move_ap_uint_392_U0", "Port" : "finnix0"},
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "finnix0"}]},
			{"Name" : "cnt_clk_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "cnt_clk_V"}]},
			{"Name" : "timestamp_ovf", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "timestamp_ovf"}]},
			{"Name" : "icnt_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "icnt_V"}]},
			{"Name" : "lfsr_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "lfsr_V"}]},
			{"Name" : "timestamp_unf", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "timestamp_unf"}]},
			{"Name" : "last_latency_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "last_latency_V"}]},
			{"Name" : "ts1_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "ts1_V"}]},
			{"Name" : "last_interval_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "last_interval_V"}]},
			{"Name" : "pkts_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "pkts_V"}]},
			{"Name" : "last_checksum_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Port" : "last_checksum_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "9", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cfg_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.move_ap_uint_8_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "move_ap_uint_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "finnox", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "finnox_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "finnox0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "finnox0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.move_ap_uint_8_U0.regslice_both_finnox_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0", "Parent" : "0", "Child" : ["6"],
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
			{"Name" : "cfg", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "9", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cfg_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "status", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "latency", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "interval", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "checksum", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "finnix0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "cnt_clk_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "timestamp_ovf", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lfsr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "finnox0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "timestamp_unf", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_latency_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ts1_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_interval_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pkts_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_checksum_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_U0.timestamps_fifo_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.move_ap_uint_392_U0", "Parent" : "0", "Child" : ["8"],
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
			{"Name" : "finnix0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "finnix0_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.move_ap_uint_392_U0.regslice_both_finnix_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cfg_c_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.finnox0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.finnix0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	instrumentation_wrapper {
		finnix {Type O LastRead -1 FirstWrite 0}
		finnox {Type I LastRead 0 FirstWrite -1}
		cfg {Type I LastRead 1 FirstWrite -1}
		status {Type IO LastRead 2 FirstWrite 2}
		latency {Type O LastRead -1 FirstWrite 2}
		interval {Type O LastRead -1 FirstWrite 2}
		checksum {Type O LastRead -1 FirstWrite 2}
		finnox0 {Type IO LastRead -1 FirstWrite -1}
		finnix0 {Type IO LastRead -1 FirstWrite -1}
		cnt_clk_V {Type IO LastRead -1 FirstWrite -1}
		timestamp_ovf {Type IO LastRead -1 FirstWrite -1}
		icnt_V {Type IO LastRead -1 FirstWrite -1}
		lfsr_V {Type IO LastRead -1 FirstWrite -1}
		timestamp_unf {Type IO LastRead -1 FirstWrite -1}
		last_latency_V {Type IO LastRead -1 FirstWrite -1}
		ts1_V {Type IO LastRead -1 FirstWrite -1}
		last_interval_V {Type IO LastRead -1 FirstWrite -1}
		pkts_V {Type IO LastRead -1 FirstWrite -1}
		last_checksum_V {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		cfg {Type I LastRead 0 FirstWrite -1}
		cfg_c {Type O LastRead -1 FirstWrite 0}}
	move_ap_uint_8_s {
		finnox {Type I LastRead 0 FirstWrite -1}
		finnox0 {Type O LastRead -1 FirstWrite 0}}
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
		last_checksum_V {Type IO LastRead -1 FirstWrite -1}}
	move_ap_uint_392_s {
		finnix {Type O LastRead -1 FirstWrite 0}
		finnix0 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	finnix { axis {  { finnix_TDATA out_data 1 392 }  { finnix_TVALID out_vld 1 1 }  { finnix_TREADY out_acc 0 1 } } }
	finnox { axis {  { finnox_TDATA in_data 0 8 }  { finnox_TVALID in_vld 0 1 }  { finnox_TREADY in_acc 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
