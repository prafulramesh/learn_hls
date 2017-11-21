set C_TypeInfoList {{ 
"apint_arith" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inA": [[],"0"] }, {"inB": [[],"1"] }, {"inC": [[],"2"] }, {"inD": [[],"3"] }, {"out1": [[],{ "pointer": "4"}] }, {"out2": [[],{ "pointer": "5"}] }, {"out3": [[],{ "pointer": "6"}] }, {"out4": [[],{ "pointer": "7"}] }],[],""], 
"0": [ "dinA_t", {"typedef": [[[],"8"],""]}], 
"2": [ "dinC_t", {"typedef": [[[],"9"],""]}], 
"6": [ "dout3_t", {"typedef": [[[],"9"],""]}], 
"7": [ "dout4_t", {"typedef": [[[],"8"],""]}], 
"8": [ "int6", {"typedef": [[[], {"scalar": "int6"}],""]}], 
"1": [ "dinB_t", {"typedef": [[[],"10"],""]}], 
"4": [ "dout1_t", {"typedef": [[[],"11"],""]}], 
"11": [ "int18", {"typedef": [[[], {"scalar": "int18"}],""]}], 
"10": [ "int12", {"typedef": [[[], {"scalar": "int12"}],""]}], 
"3": [ "dinD_t", {"typedef": [[[],"12"],""]}], 
"12": [ "int33", {"typedef": [[[], {"scalar": "int33"}],""]}], 
"9": [ "int22", {"typedef": [[[], {"scalar": "int22"}],""]}], 
"5": [ "dout2_t", {"typedef": [[[],"13"],""]}], 
"13": [ "uint13", {"typedef": [[[], {"scalar": "uint13"}],""]}]
}}
set moduleName apint_arith
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {apint_arith}
set C_modelType { void 0 }
set C_modelArgList {
	{ inA int 6 regular  }
	{ inB int 12 regular  }
	{ inC int 22 regular  }
	{ inD int 33 regular  }
	{ out1 int 18 regular {pointer 1}  }
	{ out2 int 13 regular {pointer 1}  }
	{ out3 int 22 regular {pointer 1}  }
	{ out4 int 6 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inA", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inA","cData": "int6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "inB", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "inB","cData": "int12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "inC", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "inC","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "inD", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY", "bitSlice":[{"low":0,"up":32,"cElement": [{"cName": "inD","cData": "int33","bit_use": { "low": 0,"up": 32},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out1", "interface" : "wire", "bitwidth" : 18, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":17,"cElement": [{"cName": "out1","cData": "int18","bit_use": { "low": 0,"up": 17},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out2", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":12,"cElement": [{"cName": "out2","cData": "uint13","bit_use": { "low": 0,"up": 12},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out3", "interface" : "wire", "bitwidth" : 22, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":21,"cElement": [{"cName": "out3","cData": "int22","bit_use": { "low": 0,"up": 21},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out4", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "out4","cData": "int6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inA sc_in sc_lv 6 signal 0 } 
	{ inB sc_in sc_lv 12 signal 1 } 
	{ inC sc_in sc_lv 22 signal 2 } 
	{ inD sc_in sc_lv 33 signal 3 } 
	{ out1 sc_out sc_lv 18 signal 4 } 
	{ out1_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ out2 sc_out sc_lv 13 signal 5 } 
	{ out2_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ out3 sc_out sc_lv 22 signal 6 } 
	{ out3_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ out4 sc_out sc_lv 6 signal 7 } 
	{ out4_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inA", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inA", "role": "default" }} , 
 	{ "name": "inB", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "inB", "role": "default" }} , 
 	{ "name": "inC", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "inC", "role": "default" }} , 
 	{ "name": "inD", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "inD", "role": "default" }} , 
 	{ "name": "out1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "out1", "role": "default" }} , 
 	{ "name": "out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out1", "role": "ap_vld" }} , 
 	{ "name": "out2", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "out2", "role": "default" }} , 
 	{ "name": "out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out2", "role": "ap_vld" }} , 
 	{ "name": "out3", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out3", "role": "default" }} , 
 	{ "name": "out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out3", "role": "ap_vld" }} , 
 	{ "name": "out4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "out4", "role": "default" }} , 
 	{ "name": "out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out4", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "apint_arith",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "inA", "Type" : "None", "Direction" : "I"},
			{"Name" : "inB", "Type" : "None", "Direction" : "I"},
			{"Name" : "inC", "Type" : "None", "Direction" : "I"},
			{"Name" : "inD", "Type" : "None", "Direction" : "I"},
			{"Name" : "out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out4", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.apint_arith_srem_bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.apint_arith_sdiv_cud_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.apint_arith_mul_mdEe_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	apint_arith {
		inA {Type I LastRead 0 FirstWrite -1}
		inB {Type I LastRead 11 FirstWrite -1}
		inC {Type I LastRead 11 FirstWrite -1}
		inD {Type I LastRead 0 FirstWrite -1}
		out1 {Type O LastRead -1 FirstWrite 13}
		out2 {Type O LastRead -1 FirstWrite 11}
		out3 {Type O LastRead -1 FirstWrite 36}
		out4 {Type O LastRead -1 FirstWrite 36}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "36", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "37", "Max" : "37"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inA { ap_none {  { inA in_data 0 6 } } }
	inB { ap_none {  { inB in_data 0 12 } } }
	inC { ap_none {  { inC in_data 0 22 } } }
	inD { ap_none {  { inD in_data 0 33 } } }
	out1 { ap_vld {  { out1 out_data 1 18 }  { out1_ap_vld out_vld 1 1 } } }
	out2 { ap_vld {  { out2 out_data 1 13 }  { out2_ap_vld out_vld 1 1 } } }
	out3 { ap_vld {  { out3 out_data 1 22 }  { out3_ap_vld out_vld 1 1 } } }
	out4 { ap_vld {  { out4 out_data 1 6 }  { out4_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

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
