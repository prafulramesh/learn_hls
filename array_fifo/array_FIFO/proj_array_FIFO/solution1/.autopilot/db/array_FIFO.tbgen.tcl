set C_TypeInfoList {{ 
"array_FIFO" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"d_o": [[], {"array": ["0", [4]]}] }, {"d_i": [[], {"array": ["1", [4]]}] }, {"idx": [[], {"array": ["2", [4]]}] }],[],""], 
"0": [ "dout_t", {"typedef": [[[], {"scalar": "int"}],""]}], 
"1": [ "din_t", {"typedef": [[[], {"scalar": "int"}],""]}], 
"2": [ "didx_t", {"typedef": [[[], {"scalar": "int"}],""]}]
}}
set moduleName array_FIFO
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {array_FIFO}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_o int 32 regular {fifo 1 volatile }  }
	{ d_i int 32 regular {fifo 0 volatile }  }
	{ idx int 32 unused {array 4 { } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_o", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "d_o","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "d_i", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "d_i","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "idx", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "idx","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_o_din sc_out sc_lv 32 signal 0 } 
	{ d_o_full_n sc_in sc_logic 1 signal 0 } 
	{ d_o_write sc_out sc_logic 1 signal 0 } 
	{ d_i_dout sc_in sc_lv 32 signal 1 } 
	{ d_i_empty_n sc_in sc_logic 1 signal 1 } 
	{ d_i_read sc_out sc_logic 1 signal 1 } 
	{ idx_address0 sc_out sc_lv 2 signal 2 } 
	{ idx_ce0 sc_out sc_logic 1 signal 2 } 
	{ idx_we0 sc_out sc_logic 1 signal 2 } 
	{ idx_d0 sc_out sc_lv 32 signal 2 } 
	{ idx_q0 sc_in sc_lv 32 signal 2 } 
	{ idx_address1 sc_out sc_lv 2 signal 2 } 
	{ idx_ce1 sc_out sc_logic 1 signal 2 } 
	{ idx_we1 sc_out sc_logic 1 signal 2 } 
	{ idx_d1 sc_out sc_lv 32 signal 2 } 
	{ idx_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_o_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_o", "role": "din" }} , 
 	{ "name": "d_o_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o", "role": "full_n" }} , 
 	{ "name": "d_o_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o", "role": "write" }} , 
 	{ "name": "d_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_i", "role": "dout" }} , 
 	{ "name": "d_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i", "role": "empty_n" }} , 
 	{ "name": "d_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i", "role": "read" }} , 
 	{ "name": "idx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "idx", "role": "address0" }} , 
 	{ "name": "idx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx", "role": "ce0" }} , 
 	{ "name": "idx_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx", "role": "we0" }} , 
 	{ "name": "idx_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "idx", "role": "d0" }} , 
 	{ "name": "idx_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "idx", "role": "q0" }} , 
 	{ "name": "idx_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "idx", "role": "address1" }} , 
 	{ "name": "idx_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx", "role": "ce1" }} , 
 	{ "name": "idx_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx", "role": "we1" }} , 
 	{ "name": "idx_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "idx", "role": "d1" }} , 
 	{ "name": "idx_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "idx", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "array_FIFO",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "d_o", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "d_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_i", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "d_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "idx", "Type" : "Memory", "Direction" : "X"}]}]}


set ArgLastReadFirstWriteLatency {
	array_FIFO {
		d_o {Type O LastRead -1 FirstWrite 1}
		d_i {Type I LastRead 1 FirstWrite -1}
		idx {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_o { ap_fifo {  { d_o_din fifo_data 1 32 }  { d_o_full_n fifo_status 0 1 }  { d_o_write fifo_update 1 1 } } }
	d_i { ap_fifo {  { d_i_dout fifo_data 0 32 }  { d_i_empty_n fifo_status 0 1 }  { d_i_read fifo_update 1 1 } } }
	idx { ap_memory {  { idx_address0 mem_address 1 2 }  { idx_ce0 mem_ce 1 1 }  { idx_we0 mem_we 1 1 }  { idx_d0 mem_din 1 32 }  { idx_q0 mem_dout 0 32 }  { idx_address1 mem_address 1 2 }  { idx_ce1 mem_ce 1 1 }  { idx_we1 mem_we 1 1 }  { idx_d1 mem_din 1 32 }  { idx_q1 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	d_o { fifo_write 4 no_conditional }
	d_i { fifo_read 4 no_conditional }
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
