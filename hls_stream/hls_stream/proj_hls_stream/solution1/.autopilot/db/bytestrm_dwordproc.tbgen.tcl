set C_TypeInfoList {{ 
"bytestrm_dwordproc" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_out": [[], {"reference": "0"}] }, {"strm_in": [[], {"reference": "0"}] }, {"strm_len": [[],"1"] }],[],""], 
"0": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"2"]}}], 
"1": [ "uint16_t", {"typedef": [[[], {"scalar": "unsigned short"}],""]}],
"2": ["hls", ""]
}}
set moduleName bytestrm_dwordproc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {bytestrm_dwordproc}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm_out_V int 8 regular {axi_s 1 volatile  { strm_out_V Data } }  }
	{ strm_in_V int 8 regular {axi_s 0 volatile  { strm_in_V Data } }  }
	{ strm_len uint 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_out_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "strm_out.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_in_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "strm_in.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_len", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "strm_len","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ strm_out_V_TDATA sc_out sc_lv 8 signal 0 } 
	{ strm_in_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ strm_len sc_in sc_lv 16 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ strm_in_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ strm_in_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ strm_out_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ strm_out_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "strm_out_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "strm_out_V", "role": "TDATA" }} , 
 	{ "name": "strm_in_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "strm_in_V", "role": "TDATA" }} , 
 	{ "name": "strm_len", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "strm_len", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "strm_in_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "strm_in_V", "role": "TVALID" }} , 
 	{ "name": "strm_in_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "strm_in_V", "role": "TREADY" }} , 
 	{ "name": "strm_out_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "strm_out_V", "role": "TVALID" }} , 
 	{ "name": "strm_out_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "strm_out_V", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "bytestrm_dwordproc",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "1",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_out_V", "Type" : "Axis", "Direction" : "O",
			"SubConnect" : [
			{"ID" : "5", "SubInstance" : "strm_words2bytes_U0", "Port" : "bytes_out_V"}]},
		{"Name" : "strm_in_V", "Type" : "Axis", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "3", "SubInstance" : "strm_bytes2words_U0", "Port" : "bytes_in_V"}]},
		{"Name" : "strm_len", "Type" : "None", "Direction" : "I"}],
		"InputProcess" : [
			{"ID" : "3", "Name" : "strm_bytes2words_U0", "ReadyCount" : "strm_bytes2words_U0_ap_ready_count"},
			{"ID" : "1", "Name" : "bytestrm_dwordproc_e_U0", "ReadyCount" : "bytestrm_dwordproc_e_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "strm_words2bytes_U0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bytestrm_dwordproc_e_U0", "Parent" : "0",
		"CDFG" : "bytestrm_dwordproc_e",
		"VariableLatency" : "0",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_len", "Type" : "None", "Direction" : "I"},
		{"Name" : "strm_len_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6",
			"BlockSignal" : [
			{"Name" : "strm_len_out_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "strm_len_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "7",
			"BlockSignal" : [
			{"Name" : "strm_len_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"VariableLatency" : "0",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_len", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "7",
			"BlockSignal" : [
			{"Name" : "strm_len_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "bytes_out_len_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "8",
			"BlockSignal" : [
			{"Name" : "bytes_out_len_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strm_bytes2words_U0", "Parent" : "0",
		"CDFG" : "strm_bytes2words",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "words_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "10",
			"BlockSignal" : [
			{"Name" : "words_out_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "bytes_in_V", "Type" : "Axis", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "bytes_in_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "bytestrm_len", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6",
			"BlockSignal" : [
			{"Name" : "bytestrm_len_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decimate_strm_U0", "Parent" : "0",
		"CDFG" : "decimate_strm",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "11",
			"BlockSignal" : [
			{"Name" : "strm_out_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "strm_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "10",
			"BlockSignal" : [
			{"Name" : "strm_in_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "strm_len", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "9"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strm_words2bytes_U0", "Parent" : "0",
		"CDFG" : "strm_words2bytes",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "bytes_out_V", "Type" : "Axis", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "bytes_out_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "words_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "11",
			"BlockSignal" : [
			{"Name" : "words_in_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "bytes_out_len_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "8",
			"BlockSignal" : [
			{"Name" : "bytes_out_len_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strm_len_channel_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strm_len_channel2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bytes_out_len_loc_ch_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dwords_in_len_cast_l_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dwordstrm_in_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dwordstrm_out_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_phbi_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_strm_woibs_U", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "2978"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "2978"}
]}

set Spec2ImplPortList { 
	strm_out_V { axis {  { strm_out_V_TDATA out_data 1 8 }  { strm_out_V_TVALID out_vld 1 1 }  { strm_out_V_TREADY out_acc 0 1 } } }
	strm_in_V { axis {  { strm_in_V_TDATA in_data 0 8 }  { strm_in_V_TVALID in_vld 0 1 }  { strm_in_V_TREADY in_acc 1 1 } } }
	strm_len { ap_none {  { strm_len in_data 0 16 } } }
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
