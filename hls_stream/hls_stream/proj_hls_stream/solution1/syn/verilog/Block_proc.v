// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_proc (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        strm_len_dout,
        strm_len_empty_n,
        strm_len_read,
        bytes_out_len_out_out_din,
        bytes_out_len_out_out_full_n,
        bytes_out_len_out_out_write,
        ap_return
);

parameter    ap_ST_fsm_state1 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv14_0 = 14'b00000000000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [15:0] strm_len_dout;
input   strm_len_empty_n;
output   strm_len_read;
output  [13:0] bytes_out_len_out_out_din;
input   bytes_out_len_out_out_full_n;
output   bytes_out_len_out_out_write;
output  [13:0] ap_return;

reg ap_done;
reg ap_idle;
reg start_write;
reg strm_len_read;
reg bytes_out_len_out_out_write;
reg[13:0] ap_return;

reg    real_start;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    start_once_reg;
reg    strm_len_blk_n;
reg    bytes_out_len_out_out_blk_n;
reg    ap_condition_56;
wire   [11:0] tmp_fu_77_p4;
reg   [13:0] ap_return_preg;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'b1;
#0 start_once_reg = 1'b0;
#0 ap_return_preg = 14'b00000000000000;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_56 == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv14_0;
    end else begin
        if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_56 == 1'b1))) begin
            ap_return_preg <= {{strm_len_dout[ap_const_lv32_F : ap_const_lv32_2]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if ((1'b1 == real_start)) begin
            start_once_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_56 == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == real_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_56 == 1'b1))) begin
        ap_return = {{strm_len_dout[ap_const_lv32_F : ap_const_lv32_2]}};
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((ap_CS_fsm_state1 == 1'b1)) begin
        bytes_out_len_out_out_blk_n = bytes_out_len_out_out_full_n;
    end else begin
        bytes_out_len_out_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_56 == 1'b1))) begin
        bytes_out_len_out_out_write = 1'b1;
    end else begin
        bytes_out_len_out_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_56 == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == start_full_n)) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((1'b1 == real_start) & ((1'b1 == internal_ap_ready) | (1'b0 == start_once_reg)))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((ap_CS_fsm_state1 == 1'b1)) begin
        strm_len_blk_n = strm_len_empty_n;
    end else begin
        strm_len_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_condition_56 == 1'b1))) begin
        strm_len_read = 1'b1;
    end else begin
        strm_len_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

always @ (*) begin
    ap_condition_56 = ((strm_len_empty_n == 1'b0) | (bytes_out_len_out_out_full_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign bytes_out_len_out_out_din = {{tmp_fu_77_p4}, {ap_const_lv2_0}};

assign start_out = real_start;

assign tmp_fu_77_p4 = {{strm_len_dout[ap_const_lv32_F : ap_const_lv32_4]}};

endmodule //Block_proc
