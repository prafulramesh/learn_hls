// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "strm_bytes2words.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic strm_bytes2words::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic strm_bytes2words::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> strm_bytes2words::ap_ST_fsm_state1 = "1";
const sc_lv<3> strm_bytes2words::ap_ST_fsm_state2 = "10";
const sc_lv<3> strm_bytes2words::ap_ST_fsm_state3 = "100";
const sc_lv<32> strm_bytes2words::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> strm_bytes2words::ap_const_lv1_0 = "0";
const sc_lv<1> strm_bytes2words::ap_const_lv1_1 = "1";
const sc_lv<2> strm_bytes2words::ap_const_lv2_0 = "00";
const sc_lv<2> strm_bytes2words::ap_const_lv2_2 = "10";
const sc_lv<2> strm_bytes2words::ap_const_lv2_3 = "11";
const sc_lv<2> strm_bytes2words::ap_const_lv2_1 = "1";
const sc_lv<32> strm_bytes2words::ap_const_lv32_2 = "10";
const sc_lv<32> strm_bytes2words::ap_const_lv32_1 = "1";
const sc_lv<24> strm_bytes2words::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<16> strm_bytes2words::ap_const_lv16_0 = "0000000000000000";
const sc_lv<16> strm_bytes2words::ap_const_lv16_1 = "1";
const sc_lv<32> strm_bytes2words::ap_const_lv32_8 = "1000";
const sc_lv<32> strm_bytes2words::ap_const_lv32_17 = "10111";
const bool strm_bytes2words::ap_const_boolean_1 = true;

strm_bytes2words::strm_bytes2words(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( bytestrm_len_empty_n );

    SC_METHOD(thread_ap_block_state3);
    sensitive << ( words_out_V_full_n );
    sensitive << ( bytes_in_V_0_vld_out );
    sensitive << ( tmp_1_i_reg_189 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_i_fu_132_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_i_fu_132_p2 );

    SC_METHOD(thread_bytes_in_V_0_ack_in);
    sensitive << ( bytes_in_V_0_state );

    SC_METHOD(thread_bytes_in_V_0_ack_out);
    sensitive << ( words_out_V_full_n );
    sensitive << ( bytes_in_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_i_reg_189 );

    SC_METHOD(thread_bytes_in_V_0_data_out);
    sensitive << ( bytes_in_V_0_payload_A );
    sensitive << ( bytes_in_V_0_payload_B );
    sensitive << ( bytes_in_V_0_sel );

    SC_METHOD(thread_bytes_in_V_0_load_A);
    sensitive << ( bytes_in_V_0_sel_wr );
    sensitive << ( bytes_in_V_0_state_cmp_full );

    SC_METHOD(thread_bytes_in_V_0_load_B);
    sensitive << ( bytes_in_V_0_sel_wr );
    sensitive << ( bytes_in_V_0_state_cmp_full );

    SC_METHOD(thread_bytes_in_V_0_sel);
    sensitive << ( bytes_in_V_0_sel_rd );

    SC_METHOD(thread_bytes_in_V_0_state_cmp_full);
    sensitive << ( bytes_in_V_0_state );

    SC_METHOD(thread_bytes_in_V_0_vld_in);
    sensitive << ( bytes_in_V_TVALID );

    SC_METHOD(thread_bytes_in_V_0_vld_out);
    sensitive << ( bytes_in_V_0_state );

    SC_METHOD(thread_bytes_in_V_TDATA_blk_n);
    sensitive << ( bytes_in_V_0_state );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_bytes_in_V_TREADY);
    sensitive << ( bytes_in_V_0_state );

    SC_METHOD(thread_bytestrm_len_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bytestrm_len_empty_n );

    SC_METHOD(thread_bytestrm_len_read);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bytestrm_len_empty_n );

    SC_METHOD(thread_exitcond_i_fu_132_p2);
    sensitive << ( bytestrm_len_read_reg_176 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_i_reg_117 );

    SC_METHOD(thread_i_fu_137_p2);
    sensitive << ( i_i_reg_117 );

    SC_METHOD(thread_phitmp_cast_i_fu_168_p3);
    sensitive << ( bytes_in_V_0_data_out );
    sensitive << ( tmp_5_fu_158_p4 );

    SC_METHOD(thread_tmp_1_i_fu_143_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_i_fu_132_p2 );
    sensitive << ( tmp_fu_128_p1 );

    SC_METHOD(thread_tmp_5_fu_158_p4);
    sensitive << ( r_V_reg_105 );

    SC_METHOD(thread_tmp_fu_128_p1);
    sensitive << ( i_i_reg_117 );

    SC_METHOD(thread_words_out_V_blk_n);
    sensitive << ( words_out_V_full_n );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_i_reg_189 );

    SC_METHOD(thread_words_out_V_din);
    sensitive << ( words_out_V_full_n );
    sensitive << ( bytes_in_V_0_data_out );
    sensitive << ( bytes_in_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_i_reg_189 );
    sensitive << ( r_V_reg_105 );

    SC_METHOD(thread_words_out_V_write);
    sensitive << ( words_out_V_full_n );
    sensitive << ( bytes_in_V_0_vld_out );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_i_reg_189 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( words_out_V_full_n );
    sensitive << ( bytes_in_V_0_vld_out );
    sensitive << ( bytestrm_len_empty_n );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_i_reg_189 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_i_fu_132_p2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    bytes_in_V_0_sel_rd = SC_LOGIC_0;
    bytes_in_V_0_sel_wr = SC_LOGIC_0;
    bytes_in_V_0_state = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "strm_bytes2words_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, words_out_V_din, "(port)words_out_V_din");
    sc_trace(mVcdFile, words_out_V_full_n, "(port)words_out_V_full_n");
    sc_trace(mVcdFile, words_out_V_write, "(port)words_out_V_write");
    sc_trace(mVcdFile, bytes_in_V_TDATA, "(port)bytes_in_V_TDATA");
    sc_trace(mVcdFile, bytes_in_V_TVALID, "(port)bytes_in_V_TVALID");
    sc_trace(mVcdFile, bytes_in_V_TREADY, "(port)bytes_in_V_TREADY");
    sc_trace(mVcdFile, bytestrm_len_dout, "(port)bytestrm_len_dout");
    sc_trace(mVcdFile, bytestrm_len_empty_n, "(port)bytestrm_len_empty_n");
    sc_trace(mVcdFile, bytestrm_len_read, "(port)bytestrm_len_read");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, bytes_in_V_0_data_out, "bytes_in_V_0_data_out");
    sc_trace(mVcdFile, bytes_in_V_0_vld_in, "bytes_in_V_0_vld_in");
    sc_trace(mVcdFile, bytes_in_V_0_vld_out, "bytes_in_V_0_vld_out");
    sc_trace(mVcdFile, bytes_in_V_0_ack_in, "bytes_in_V_0_ack_in");
    sc_trace(mVcdFile, bytes_in_V_0_ack_out, "bytes_in_V_0_ack_out");
    sc_trace(mVcdFile, bytes_in_V_0_payload_A, "bytes_in_V_0_payload_A");
    sc_trace(mVcdFile, bytes_in_V_0_payload_B, "bytes_in_V_0_payload_B");
    sc_trace(mVcdFile, bytes_in_V_0_sel_rd, "bytes_in_V_0_sel_rd");
    sc_trace(mVcdFile, bytes_in_V_0_sel_wr, "bytes_in_V_0_sel_wr");
    sc_trace(mVcdFile, bytes_in_V_0_sel, "bytes_in_V_0_sel");
    sc_trace(mVcdFile, bytes_in_V_0_load_A, "bytes_in_V_0_load_A");
    sc_trace(mVcdFile, bytes_in_V_0_load_B, "bytes_in_V_0_load_B");
    sc_trace(mVcdFile, bytes_in_V_0_state, "bytes_in_V_0_state");
    sc_trace(mVcdFile, bytes_in_V_0_state_cmp_full, "bytes_in_V_0_state_cmp_full");
    sc_trace(mVcdFile, words_out_V_blk_n, "words_out_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_1_i_reg_189, "tmp_1_i_reg_189");
    sc_trace(mVcdFile, bytes_in_V_TDATA_blk_n, "bytes_in_V_TDATA_blk_n");
    sc_trace(mVcdFile, bytestrm_len_blk_n, "bytestrm_len_blk_n");
    sc_trace(mVcdFile, bytestrm_len_read_reg_176, "bytestrm_len_read_reg_176");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, i_fu_137_p2, "i_fu_137_p2");
    sc_trace(mVcdFile, i_reg_184, "i_reg_184");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_1_i_fu_143_p2, "tmp_1_i_fu_143_p2");
    sc_trace(mVcdFile, exitcond_i_fu_132_p2, "exitcond_i_fu_132_p2");
    sc_trace(mVcdFile, phitmp_cast_i_fu_168_p3, "phitmp_cast_i_fu_168_p3");
    sc_trace(mVcdFile, ap_block_state3, "ap_block_state3");
    sc_trace(mVcdFile, r_V_reg_105, "r_V_reg_105");
    sc_trace(mVcdFile, i_i_reg_117, "i_i_reg_117");
    sc_trace(mVcdFile, tmp_fu_128_p1, "tmp_fu_128_p1");
    sc_trace(mVcdFile, tmp_5_fu_158_p4, "tmp_5_fu_158_p4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

strm_bytes2words::~strm_bytes2words() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void strm_bytes2words::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_fu_132_p2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        bytes_in_V_0_sel_rd = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_ack_out.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_vld_out.read()))) {
            bytes_in_V_0_sel_rd =  (sc_logic) (~bytes_in_V_0_sel_rd.read());
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        bytes_in_V_0_sel_wr = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_vld_in.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_ack_in.read()))) {
            bytes_in_V_0_sel_wr =  (sc_logic) (~bytes_in_V_0_sel_wr.read());
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        bytes_in_V_0_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_ack_out.read()) && 
              esl_seteq<1,2,2>(bytes_in_V_0_state.read(), ap_const_lv2_3)) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_in.read()) && 
              esl_seteq<1,2,2>(bytes_in_V_0_state.read(), ap_const_lv2_2)))) {
            bytes_in_V_0_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(bytes_in_V_0_state.read(), ap_const_lv2_3)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(bytes_in_V_0_state.read(), ap_const_lv2_1)))) {
            bytes_in_V_0_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_vld_in.read()) && 
                     esl_seteq<1,2,2>(bytes_in_V_0_state.read(), ap_const_lv2_2)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_ack_out.read()) && 
                     esl_seteq<1,2,2>(bytes_in_V_0_state.read(), ap_const_lv2_1)) || 
                    (esl_seteq<1,2,2>(bytes_in_V_0_state.read(), ap_const_lv2_3) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_ack_out.read()))))) {
            bytes_in_V_0_state = ap_const_lv2_3;
        } else {
            bytes_in_V_0_state = ap_const_lv2_2;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_out.read()) || (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, words_out_V_full_n.read()))))) {
        i_i_reg_117 = i_reg_184.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bytestrm_len_empty_n.read())))) {
        i_i_reg_117 = ap_const_lv16_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_out.read()) || (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, words_out_V_full_n.read()))))) {
        r_V_reg_105 = phitmp_cast_i_fu_168_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bytestrm_len_empty_n.read())))) {
        r_V_reg_105 = ap_const_lv24_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_load_A.read())) {
        bytes_in_V_0_payload_A = bytes_in_V_TDATA.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_load_B.read())) {
        bytes_in_V_0_payload_B = bytes_in_V_TDATA.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bytestrm_len_empty_n.read())))) {
        bytestrm_len_read_reg_176 = bytestrm_len_dout.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_184 = i_fu_137_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_fu_132_p2.read()))) {
        tmp_1_i_reg_189 = tmp_1_i_fu_143_p2.read();
    }
}

void strm_bytes2words::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void strm_bytes2words::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void strm_bytes2words::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void strm_bytes2words::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bytestrm_len_empty_n.read()));
}

void strm_bytes2words::thread_ap_block_state3() {
    ap_block_state3 = (esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_out.read()) || (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, words_out_V_full_n.read())));
}

void strm_bytes2words::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_fu_132_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void strm_bytes2words::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void strm_bytes2words::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_fu_132_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void strm_bytes2words::thread_bytes_in_V_0_ack_in() {
    bytes_in_V_0_ack_in = bytes_in_V_0_state.read()[1];
}

void strm_bytes2words::thread_bytes_in_V_0_ack_out() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_out.read()) || (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, words_out_V_full_n.read()))))) {
        bytes_in_V_0_ack_out = ap_const_logic_1;
    } else {
        bytes_in_V_0_ack_out = ap_const_logic_0;
    }
}

void strm_bytes2words::thread_bytes_in_V_0_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, bytes_in_V_0_sel.read())) {
        bytes_in_V_0_data_out = bytes_in_V_0_payload_B.read();
    } else {
        bytes_in_V_0_data_out = bytes_in_V_0_payload_A.read();
    }
}

void strm_bytes2words::thread_bytes_in_V_0_load_A() {
    bytes_in_V_0_load_A = (bytes_in_V_0_state_cmp_full.read() & ~bytes_in_V_0_sel_wr.read());
}

void strm_bytes2words::thread_bytes_in_V_0_load_B() {
    bytes_in_V_0_load_B = (bytes_in_V_0_sel_wr.read() & bytes_in_V_0_state_cmp_full.read());
}

void strm_bytes2words::thread_bytes_in_V_0_sel() {
    bytes_in_V_0_sel = bytes_in_V_0_sel_rd.read();
}

void strm_bytes2words::thread_bytes_in_V_0_state_cmp_full() {
    bytes_in_V_0_state_cmp_full =  (sc_logic) ((!bytes_in_V_0_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(bytes_in_V_0_state.read() != ap_const_lv2_1))[0];
}

void strm_bytes2words::thread_bytes_in_V_0_vld_in() {
    bytes_in_V_0_vld_in = bytes_in_V_TVALID.read();
}

void strm_bytes2words::thread_bytes_in_V_0_vld_out() {
    bytes_in_V_0_vld_out = bytes_in_V_0_state.read()[0];
}

void strm_bytes2words::thread_bytes_in_V_TDATA_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        bytes_in_V_TDATA_blk_n = bytes_in_V_0_state.read()[0];
    } else {
        bytes_in_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void strm_bytes2words::thread_bytes_in_V_TREADY() {
    bytes_in_V_TREADY = bytes_in_V_0_state.read()[1];
}

void strm_bytes2words::thread_bytestrm_len_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bytestrm_len_blk_n = bytestrm_len_empty_n.read();
    } else {
        bytestrm_len_blk_n = ap_const_logic_1;
    }
}

void strm_bytes2words::thread_bytestrm_len_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bytestrm_len_empty_n.read())))) {
        bytestrm_len_read = ap_const_logic_1;
    } else {
        bytestrm_len_read = ap_const_logic_0;
    }
}

void strm_bytes2words::thread_exitcond_i_fu_132_p2() {
    exitcond_i_fu_132_p2 = (!i_i_reg_117.read().is_01() || !bytestrm_len_read_reg_176.read().is_01())? sc_lv<1>(): sc_lv<1>(i_i_reg_117.read() == bytestrm_len_read_reg_176.read());
}

void strm_bytes2words::thread_i_fu_137_p2() {
    i_fu_137_p2 = (!ap_const_lv16_1.is_01() || !i_i_reg_117.read().is_01())? sc_lv<16>(): (sc_biguint<16>(ap_const_lv16_1) + sc_biguint<16>(i_i_reg_117.read()));
}

void strm_bytes2words::thread_phitmp_cast_i_fu_168_p3() {
    phitmp_cast_i_fu_168_p3 = esl_concat<8,16>(bytes_in_V_0_data_out.read(), tmp_5_fu_158_p4.read());
}

void strm_bytes2words::thread_tmp_1_i_fu_143_p2() {
    tmp_1_i_fu_143_p2 = (!tmp_fu_128_p1.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(tmp_fu_128_p1.read() == ap_const_lv2_3);
}

void strm_bytes2words::thread_tmp_5_fu_158_p4() {
    tmp_5_fu_158_p4 = r_V_reg_105.read().range(23, 8);
}

void strm_bytes2words::thread_tmp_fu_128_p1() {
    tmp_fu_128_p1 = i_i_reg_117.read().range(2-1, 0);
}

void strm_bytes2words::thread_words_out_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()))) {
        words_out_V_blk_n = words_out_V_full_n.read();
    } else {
        words_out_V_blk_n = ap_const_logic_1;
    }
}

void strm_bytes2words::thread_words_out_V_din() {
    words_out_V_din = esl_concat<8,24>(bytes_in_V_0_data_out.read(), r_V_reg_105.read());
}

void strm_bytes2words::thread_words_out_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_out.read()) || (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, words_out_V_full_n.read()))))) {
        words_out_V_write = ap_const_logic_1;
    } else {
        words_out_V_write = ap_const_logic_0;
    }
}

void strm_bytes2words::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bytestrm_len_empty_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_i_fu_132_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, bytes_in_V_0_vld_out.read()) || (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_i_reg_189.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, words_out_V_full_n.read()))))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
