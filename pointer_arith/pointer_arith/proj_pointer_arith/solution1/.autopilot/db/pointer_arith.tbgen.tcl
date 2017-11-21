set C_TypeInfoList {{ 
"pointer_arith" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"d": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "dio_t", {"typedef": [[[], {"scalar": "int"}],""]}]
}}
set moduleName pointer_arith
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {pointer_arith}
set C_modelType { void 0 }
set C_modelArgList {
	{ d int 32 regular {bus 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d", "interface" : "bus", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "d","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_req_din sc_out sc_logic 1 signal 0 } 
	{ d_req_full_n sc_in sc_logic 1 signal 0 } 
	{ d_req_write sc_out sc_logic 1 signal 0 } 
	{ d_rsp_empty_n sc_in sc_logic 1 signal 0 } 
	{ d_rsp_read sc_out sc_logic 1 signal 0 } 
	{ d_address sc_out sc_lv 32 signal 0 } 
	{ d_datain sc_in sc_lv 32 signal 0 } 
	{ d_dataout sc_out sc_lv 32 signal 0 } 
	{ d_size sc_out sc_lv 32 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_req_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d", "role": "req_din" }} , 
 	{ "name": "d_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d", "role": "req_full_n" }} , 
 	{ "name": "d_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d", "role": "req_write" }} , 
 	{ "name": "d_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d", "role": "rsp_empty_n" }} , 
 	{ "name": "d_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d", "role": "rsp_read" }} , 
 	{ "name": "d_address", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d", "role": "address" }} , 
 	{ "name": "d_datain", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d", "role": "datain" }} , 
 	{ "name": "d_dataout", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d", "role": "dataout" }} , 
 	{ "name": "d_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d", "role": "size" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "pointer_arith",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "d", "Type" : "Bus", "Direction" : "IO"},
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	pointer_arith {
		d {Type IO LastRead 6 FirstWrite 6}
		acc {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d { ap_bus {  { d_req_din fifo_data 1 1 }  { d_req_full_n fifo_status 0 1 }  { d_req_write fifo_update 1 1 }  { d_rsp_empty_n fifo_status 0 1 }  { d_rsp_read fifo_update 1 1 }  { d_address unknown 1 32 }  { d_datain unknown 0 32 }  { d_dataout unknown 1 32 }  { d_size unknown 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ d 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ d 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
