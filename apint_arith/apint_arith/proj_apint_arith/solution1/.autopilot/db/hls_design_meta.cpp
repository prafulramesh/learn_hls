#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("inA", 6, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("inB", 12, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("inC", 22, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("inD", 33, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("out1", 18, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("out1_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("out2", 13, hls_out, 5, "ap_vld", "out_data", 1),
	Port_Property("out2_ap_vld", 1, hls_out, 5, "ap_vld", "out_vld", 1),
	Port_Property("out3", 22, hls_out, 6, "ap_vld", "out_data", 1),
	Port_Property("out3_ap_vld", 1, hls_out, 6, "ap_vld", "out_vld", 1),
	Port_Property("out4", 6, hls_out, 7, "ap_vld", "out_data", 1),
	Port_Property("out4_ap_vld", 1, hls_out, 7, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "apint_arith";
