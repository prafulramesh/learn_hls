// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module strm_bytes2words (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        words_out_V_din,
        words_out_V_full_n,
        words_out_V_write,
        bytes_in_V_TDATA,
        bytes_in_V_TVALID,
        bytes_in_V_TREADY,
        bytestrm_len_dout,
        bytestrm_len_empty_n,
        bytestrm_len_read
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [31:0] words_out_V_din;
input   words_out_V_full_n;
output   words_out_V_write;
input  [7:0] bytes_in_V_TDATA;
input   bytes_in_V_TVALID;
output   bytes_in_V_TREADY;
input  [15:0] bytestrm_len_dout;
input   bytestrm_len_empty_n;
output   bytestrm_len_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg words_out_V_write;
reg bytestrm_len_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] bytes_in_V_0_data_out;
wire    bytes_in_V_0_vld_in;
wire    bytes_in_V_0_vld_out;
wire    bytes_in_V_0_ack_in;
reg    bytes_in_V_0_ack_out;
reg   [7:0] bytes_in_V_0_payload_A;
reg   [7:0] bytes_in_V_0_payload_B;
reg    bytes_in_V_0_sel_rd;
reg    bytes_in_V_0_sel_wr;
wire    bytes_in_V_0_sel;
wire    bytes_in_V_0_load_A;
wire    bytes_in_V_0_load_B;
reg   [1:0] bytes_in_V_0_state;
wire    bytes_in_V_0_state_cmp_full;
reg    words_out_V_blk_n;
wire    ap_CS_fsm_state3;
reg   [0:0] tmp_1_i_reg_189;
reg    bytes_in_V_TDATA_blk_n;
reg    bytestrm_len_blk_n;
reg   [15:0] bytestrm_len_read_reg_176;
reg    ap_block_state1;
wire   [15:0] i_fu_137_p2;
reg   [15:0] i_reg_184;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_1_i_fu_143_p2;
wire   [0:0] exitcond_i_fu_132_p2;
wire   [23:0] phitmp_cast_i_fu_168_p3;
reg    ap_block_state3;
reg   [23:0] r_V_reg_105;
reg   [15:0] i_i_reg_117;
wire   [1:0] tmp_fu_128_p1;
wire   [15:0] tmp_5_fu_158_p4;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 bytes_in_V_0_sel_rd = 1'b0;
#0 bytes_in_V_0_sel_wr = 1'b0;
#0 bytes_in_V_0_state = 2'd0;
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond_i_fu_132_p2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        bytes_in_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == bytes_in_V_0_ack_out) & (1'b1 == bytes_in_V_0_vld_out))) begin
            bytes_in_V_0_sel_rd <= ~bytes_in_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        bytes_in_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == bytes_in_V_0_vld_in) & (1'b1 == bytes_in_V_0_ack_in))) begin
            bytes_in_V_0_sel_wr <= ~bytes_in_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        bytes_in_V_0_state <= 2'd0;
    end else begin
        if ((((1'b0 == bytes_in_V_0_vld_in) & (1'b1 == bytes_in_V_0_ack_out) & (bytes_in_V_0_state == 2'd3)) | ((1'b0 == bytes_in_V_0_vld_in) & (bytes_in_V_0_state == 2'd2)))) begin
            bytes_in_V_0_state <= 2'd2;
        end else if ((((1'b1 == bytes_in_V_0_vld_in) & (1'b0 == bytes_in_V_0_ack_out) & (bytes_in_V_0_state == 2'd3)) | ((1'b0 == bytes_in_V_0_ack_out) & (bytes_in_V_0_state == 2'd1)))) begin
            bytes_in_V_0_state <= 2'd1;
        end else if ((((1'b1 == bytes_in_V_0_vld_in) & (bytes_in_V_0_state == 2'd2)) | ((1'b1 == bytes_in_V_0_ack_out) & (bytes_in_V_0_state == 2'd1)) | ((bytes_in_V_0_state == 2'd3) & ~((1'b1 == bytes_in_V_0_vld_in) & (1'b0 == bytes_in_V_0_ack_out)) & ~((1'b0 == bytes_in_V_0_vld_in) & (1'b1 == bytes_in_V_0_ack_out))))) begin
            bytes_in_V_0_state <= 2'd3;
        end else begin
            bytes_in_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == bytes_in_V_0_vld_out) | ((1'd1 == tmp_1_i_reg_189) & (1'b0 == words_out_V_full_n))))) begin
        i_i_reg_117 <= i_reg_184;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == bytestrm_len_empty_n)))) begin
        i_i_reg_117 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == bytes_in_V_0_vld_out) | ((1'd1 == tmp_1_i_reg_189) & (1'b0 == words_out_V_full_n))))) begin
        r_V_reg_105 <= phitmp_cast_i_fu_168_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == bytestrm_len_empty_n)))) begin
        r_V_reg_105 <= 24'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == bytes_in_V_0_load_A)) begin
        bytes_in_V_0_payload_A <= bytes_in_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == bytes_in_V_0_load_B)) begin
        bytes_in_V_0_payload_B <= bytes_in_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == bytestrm_len_empty_n)))) begin
        bytestrm_len_read_reg_176 <= bytestrm_len_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_184 <= i_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == exitcond_i_fu_132_p2))) begin
        tmp_1_i_reg_189 <= tmp_1_i_fu_143_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond_i_fu_132_p2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond_i_fu_132_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == bytes_in_V_0_vld_out) | ((1'd1 == tmp_1_i_reg_189) & (1'b0 == words_out_V_full_n))))) begin
        bytes_in_V_0_ack_out = 1'b1;
    end else begin
        bytes_in_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == bytes_in_V_0_sel)) begin
        bytes_in_V_0_data_out = bytes_in_V_0_payload_B;
    end else begin
        bytes_in_V_0_data_out = bytes_in_V_0_payload_A;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bytes_in_V_TDATA_blk_n = bytes_in_V_0_state[1'd0];
    end else begin
        bytes_in_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        bytestrm_len_blk_n = bytestrm_len_empty_n;
    end else begin
        bytestrm_len_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == bytestrm_len_empty_n)))) begin
        bytestrm_len_read = 1'b1;
    end else begin
        bytestrm_len_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == tmp_1_i_reg_189))) begin
        words_out_V_blk_n = words_out_V_full_n;
    end else begin
        words_out_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == tmp_1_i_reg_189) & ~((1'b0 == bytes_in_V_0_vld_out) | ((1'd1 == tmp_1_i_reg_189) & (1'b0 == words_out_V_full_n))))) begin
        words_out_V_write = 1'b1;
    end else begin
        words_out_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == bytestrm_len_empty_n)))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == exitcond_i_fu_132_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == bytes_in_V_0_vld_out) | ((1'd1 == tmp_1_i_reg_189) & (1'b0 == words_out_V_full_n))))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == bytestrm_len_empty_n));
end

always @ (*) begin
    ap_block_state3 = ((1'b0 == bytes_in_V_0_vld_out) | ((1'd1 == tmp_1_i_reg_189) & (1'b0 == words_out_V_full_n)));
end

assign bytes_in_V_0_ack_in = bytes_in_V_0_state[1'd1];

assign bytes_in_V_0_load_A = (bytes_in_V_0_state_cmp_full & ~bytes_in_V_0_sel_wr);

assign bytes_in_V_0_load_B = (bytes_in_V_0_sel_wr & bytes_in_V_0_state_cmp_full);

assign bytes_in_V_0_sel = bytes_in_V_0_sel_rd;

assign bytes_in_V_0_state_cmp_full = ((bytes_in_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign bytes_in_V_0_vld_in = bytes_in_V_TVALID;

assign bytes_in_V_0_vld_out = bytes_in_V_0_state[1'd0];

assign bytes_in_V_TREADY = bytes_in_V_0_state[1'd1];

assign exitcond_i_fu_132_p2 = ((i_i_reg_117 == bytestrm_len_read_reg_176) ? 1'b1 : 1'b0);

assign i_fu_137_p2 = (16'd1 + i_i_reg_117);

assign phitmp_cast_i_fu_168_p3 = {{bytes_in_V_0_data_out}, {tmp_5_fu_158_p4}};

assign tmp_1_i_fu_143_p2 = ((tmp_fu_128_p1 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_5_fu_158_p4 = {{r_V_reg_105[23:8]}};

assign tmp_fu_128_p1 = i_i_reg_117[1:0];

assign words_out_V_din = {{bytes_in_V_0_data_out}, {r_V_reg_105}};

endmodule //strm_bytes2words
