// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Block_proc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Block_proc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Block_proc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> Block_proc::ap_ST_fsm_state1 = "1";
const sc_lv<32> Block_proc::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Block_proc::ap_const_lv32_2 = "10";
const sc_lv<32> Block_proc::ap_const_lv32_F = "1111";
const sc_lv<32> Block_proc::ap_const_lv32_4 = "100";
const sc_lv<2> Block_proc::ap_const_lv2_0 = "00";
const sc_lv<14> Block_proc::ap_const_lv14_0 = "00000000000000";
const bool Block_proc::ap_const_boolean_1 = true;

Block_proc::Block_proc(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );

    SC_METHOD(thread_ap_done);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );

    SC_METHOD(thread_ap_idle);
    sensitive << ( real_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_ap_return);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_dout );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_bytes_out_len_out_out_blk_n);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bytes_out_len_out_out_full_n );

    SC_METHOD(thread_bytes_out_len_out_out_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );
    sensitive << ( tmp_fu_77_p4 );

    SC_METHOD(thread_bytes_out_len_out_out_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( internal_ap_ready );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_strm_len_blk_n);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_empty_n );

    SC_METHOD(thread_strm_len_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );

    SC_METHOD(thread_tmp_fu_77_p4);
    sensitive << ( strm_len_dout );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( strm_len_empty_n );
    sensitive << ( bytes_out_len_out_out_full_n );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "1";
    start_once_reg = SC_LOGIC_0;
    ap_return_preg = "00000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Block_proc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, strm_len_dout, "(port)strm_len_dout");
    sc_trace(mVcdFile, strm_len_empty_n, "(port)strm_len_empty_n");
    sc_trace(mVcdFile, strm_len_read, "(port)strm_len_read");
    sc_trace(mVcdFile, bytes_out_len_out_out_din, "(port)bytes_out_len_out_out_din");
    sc_trace(mVcdFile, bytes_out_len_out_out_full_n, "(port)bytes_out_len_out_out_full_n");
    sc_trace(mVcdFile, bytes_out_len_out_out_write, "(port)bytes_out_len_out_out_write");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, strm_len_blk_n, "strm_len_blk_n");
    sc_trace(mVcdFile, bytes_out_len_out_out_blk_n, "bytes_out_len_out_out_blk_n");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, tmp_fu_77_p4, "tmp_fu_77_p4");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Block_proc::~Block_proc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Block_proc::thread_ap_clk_no_reset_() {
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
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv14_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_return_preg = strm_len_dout.read().range(15, 2);
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, real_start.read())) {
            start_once_reg = ap_const_logic_1;
        }
    }
}

void Block_proc::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Block_proc::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Block_proc::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Block_proc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Block_proc::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void Block_proc::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        ap_return = strm_len_dout.read().range(15, 2);
    } else {
        ap_return = ap_return_preg.read();
    }
}

void Block_proc::thread_bytes_out_len_out_out_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        bytes_out_len_out_out_blk_n = bytes_out_len_out_out_full_n.read();
    } else {
        bytes_out_len_out_out_blk_n = ap_const_logic_1;
    }
}

void Block_proc::thread_bytes_out_len_out_out_din() {
    bytes_out_len_out_out_din = esl_concat<12,2>(tmp_fu_77_p4.read(), ap_const_lv2_0);
}

void Block_proc::thread_bytes_out_len_out_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bytes_out_len_out_out_write = ap_const_logic_1;
    } else {
        bytes_out_len_out_out_write = ap_const_logic_0;
    }
}

void Block_proc::thread_internal_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void Block_proc::thread_real_start() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read())) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void Block_proc::thread_start_out() {
    start_out = real_start.read();
}

void Block_proc::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
         (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read()) || 
          esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read())))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void Block_proc::thread_strm_len_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        strm_len_blk_n = strm_len_empty_n.read();
    } else {
        strm_len_blk_n = ap_const_logic_1;
    }
}

void Block_proc::thread_strm_len_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_const_logic_0, strm_len_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bytes_out_len_out_out_full_n.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        strm_len_read = ap_const_logic_1;
    } else {
        strm_len_read = ap_const_logic_0;
    }
}

void Block_proc::thread_tmp_fu_77_p4() {
    tmp_fu_77_p4 = strm_len_dout.read().range(15, 4);
}

void Block_proc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}
