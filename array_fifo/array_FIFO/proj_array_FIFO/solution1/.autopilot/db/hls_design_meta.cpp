#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("d_o_din", 32, hls_out, 0, "ap_fifo", "fifo_data", 4),
	Port_Property("d_o_full_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 4),
	Port_Property("d_o_write", 1, hls_out, 0, "ap_fifo", "fifo_update", 4),
	Port_Property("d_i_dout", 32, hls_in, 1, "ap_fifo", "fifo_data", 4),
	Port_Property("d_i_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 4),
	Port_Property("d_i_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 4),
	Port_Property("idx_address0", 2, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("idx_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("idx_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("idx_d0", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("idx_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("idx_address1", 2, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("idx_ce1", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("idx_we1", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("idx_d1", 32, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("idx_q1", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "array_FIFO";
