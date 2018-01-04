// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "decimate_strm.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic decimate_strm::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic decimate_strm::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> decimate_strm::ap_ST_fsm_state1 = "1";
const sc_lv<3> decimate_strm::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> decimate_strm::ap_ST_fsm_state4 = "100";
const sc_lv<32> decimate_strm::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> decimate_strm::ap_const_lv1_1 = "1";
const bool decimate_strm::ap_const_boolean_1 = true;
const sc_lv<32> decimate_strm::ap_const_lv32_1 = "1";
const sc_lv<1> decimate_strm::ap_const_lv1_0 = "0";
const sc_lv<14> decimate_strm::ap_const_lv14_0 = "00000000000000";
const sc_lv<3> decimate_strm::ap_const_lv3_0 = "000";
const sc_lv<34> decimate_strm::ap_const_lv34_0 = "0000000000000000000000000000000000";
const sc_lv<32> decimate_strm::ap_const_lv32_2 = "10";
const sc_lv<32> decimate_strm::ap_const_lv32_D = "1101";
const sc_lv<2> decimate_strm::ap_const_lv2_0 = "00";
const sc_lv<14> decimate_strm::ap_const_lv14_1 = "1";
const sc_lv<3> decimate_strm::ap_const_lv3_4 = "100";
const sc_lv<3> decimate_strm::ap_const_lv3_3 = "11";
const sc_lv<3> decimate_strm::ap_const_lv3_1 = "1";
const sc_lv<32> decimate_strm::ap_const_lv32_21 = "100001";

decimate_strm::decimate_strm(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_acc_fu_217_p2);
    sensitive << ( tmp_4_cast_i_fu_213_p1 );
    sensitive << ( acc_i_mid2_fu_206_p3 );

    SC_METHOD(thread_acc_i_mid2_fu_206_p3);
    sensitive << ( acc_i_reg_139 );
    sensitive << ( tmp_3_i3_reg_248 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_condition_74);
    sensitive << ( strm_out_V_full_n );
    sensitive << ( strm_in_V_empty_n );
    sensitive << ( tmp_5_i_reg_253 );
    sensitive << ( exitcond_flatten_reg_239 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_exitcond_flatten_fu_169_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( indvar_flatten_reg_117 );
    sensitive << ( tmp_8_reg_234 );
    sensitive << ( ap_condition_74 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_indvar_flatten_next_fu_174_p2);
    sensitive << ( indvar_flatten_reg_117 );

    SC_METHOD(thread_j_fu_200_p2);
    sensitive << ( j_i_mid2_fu_186_p3 );

    SC_METHOD(thread_j_i_mid2_fu_186_p3);
    sensitive << ( j_i_reg_128 );
    sensitive << ( tmp_3_i3_fu_180_p2 );

    SC_METHOD(thread_strm_in_V_blk_n);
    sensitive << ( strm_in_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_flatten_reg_239 );

    SC_METHOD(thread_strm_in_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_flatten_reg_239 );
    sensitive << ( ap_condition_74 );

    SC_METHOD(thread_strm_out_V_blk_n);
    sensitive << ( strm_out_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_5_i_reg_253 );

    SC_METHOD(thread_strm_out_V_din);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_5_i_reg_253 );
    sensitive << ( ap_condition_74 );
    sensitive << ( acc_fu_217_p2 );

    SC_METHOD(thread_strm_out_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_5_i_reg_253 );
    sensitive << ( ap_condition_74 );

    SC_METHOD(thread_tmp_3_i3_fu_180_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( j_i_reg_128 );
    sensitive << ( exitcond_flatten_fu_169_p2 );
    sensitive << ( ap_condition_74 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_tmp_4_cast_i_fu_213_p1);
    sensitive << ( strm_in_V_dout );

    SC_METHOD(thread_tmp_5_i_fu_194_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_flatten_fu_169_p2 );
    sensitive << ( ap_condition_74 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( j_i_mid2_fu_186_p3 );

    SC_METHOD(thread_tmp_7_fu_151_p4);
    sensitive << ( strm_len );

    SC_METHOD(thread_tmp_8_fu_161_p3);
    sensitive << ( tmp_7_fu_151_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_flatten_fu_169_p2 );
    sensitive << ( ap_condition_74 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "decimate_strm_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, strm_out_V_din, "(port)strm_out_V_din");
    sc_trace(mVcdFile, strm_out_V_full_n, "(port)strm_out_V_full_n");
    sc_trace(mVcdFile, strm_out_V_write, "(port)strm_out_V_write");
    sc_trace(mVcdFile, strm_in_V_dout, "(port)strm_in_V_dout");
    sc_trace(mVcdFile, strm_in_V_empty_n, "(port)strm_in_V_empty_n");
    sc_trace(mVcdFile, strm_in_V_read, "(port)strm_in_V_read");
    sc_trace(mVcdFile, strm_len, "(port)strm_len");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, strm_out_V_blk_n, "strm_out_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, tmp_5_i_reg_253, "tmp_5_i_reg_253");
    sc_trace(mVcdFile, strm_in_V_blk_n, "strm_in_V_blk_n");
    sc_trace(mVcdFile, exitcond_flatten_reg_239, "exitcond_flatten_reg_239");
    sc_trace(mVcdFile, indvar_flatten_reg_117, "indvar_flatten_reg_117");
    sc_trace(mVcdFile, j_i_reg_128, "j_i_reg_128");
    sc_trace(mVcdFile, acc_i_reg_139, "acc_i_reg_139");
    sc_trace(mVcdFile, tmp_8_fu_161_p3, "tmp_8_fu_161_p3");
    sc_trace(mVcdFile, tmp_8_reg_234, "tmp_8_reg_234");
    sc_trace(mVcdFile, exitcond_flatten_fu_169_p2, "exitcond_flatten_fu_169_p2");
    sc_trace(mVcdFile, ap_condition_74, "ap_condition_74");
    sc_trace(mVcdFile, indvar_flatten_next_fu_174_p2, "indvar_flatten_next_fu_174_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_3_i3_fu_180_p2, "tmp_3_i3_fu_180_p2");
    sc_trace(mVcdFile, tmp_3_i3_reg_248, "tmp_3_i3_reg_248");
    sc_trace(mVcdFile, tmp_5_i_fu_194_p2, "tmp_5_i_fu_194_p2");
    sc_trace(mVcdFile, j_fu_200_p2, "j_fu_200_p2");
    sc_trace(mVcdFile, acc_fu_217_p2, "acc_fu_217_p2");
    sc_trace(mVcdFile, tmp_7_fu_151_p4, "tmp_7_fu_151_p4");
    sc_trace(mVcdFile, j_i_mid2_fu_186_p3, "j_i_mid2_fu_186_p3");
    sc_trace(mVcdFile, tmp_4_cast_i_fu_213_p1, "tmp_4_cast_i_fu_213_p1");
    sc_trace(mVcdFile, acc_i_mid2_fu_206_p3, "acc_i_mid2_fu_206_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

decimate_strm::~decimate_strm() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void decimate_strm::thread_ap_clk_no_reset_() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_reg_239.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)))) {
        acc_i_reg_139 = acc_fu_217_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
                !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        acc_i_reg_139 = ap_const_lv34_0;
    }
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
        } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state4.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
             !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && 
             !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
                    !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
             !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read()))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
                     !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1))) || 
                    (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && 
                     !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read())))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read()))) {
        indvar_flatten_reg_117 = indvar_flatten_next_fu_174_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
                !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        indvar_flatten_reg_117 = ap_const_lv14_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read()))) {
        j_i_reg_128 = j_fu_200_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
                !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        j_i_reg_128 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)))) {
        exitcond_flatten_reg_239 = exitcond_flatten_fu_169_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read()))) {
        tmp_3_i3_reg_248 = tmp_3_i3_fu_180_p2.read();
        tmp_5_i_reg_253 = tmp_5_i_fu_194_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && !(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        tmp_8_reg_234 = tmp_8_fu_161_p3.read();
    }
}

void decimate_strm::thread_acc_fu_217_p2() {
    acc_fu_217_p2 = (!tmp_4_cast_i_fu_213_p1.read().is_01() || !acc_i_mid2_fu_206_p3.read().is_01())? sc_lv<34>(): (sc_bigint<34>(tmp_4_cast_i_fu_213_p1.read()) + sc_biguint<34>(acc_i_mid2_fu_206_p3.read()));
}

void decimate_strm::thread_acc_i_mid2_fu_206_p3() {
    acc_i_mid2_fu_206_p3 = (!tmp_3_i3_reg_248.read()[0].is_01())? sc_lv<34>(): ((tmp_3_i3_reg_248.read()[0].to_bool())? ap_const_lv34_0: acc_i_reg_139.read());
}

void decimate_strm::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read().range(1, 1);
}

void decimate_strm::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read().range(0, 0);
}

void decimate_strm::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read().range(2, 2);
}

void decimate_strm::thread_ap_condition_74() {
    ap_condition_74 = ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_reg_239.read()) && 
  esl_seteq<1,1,1>(strm_in_V_empty_n.read(), ap_const_logic_0)) || (!esl_seteq<1,1,1>(tmp_5_i_reg_253.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(strm_out_V_full_n.read(), ap_const_logic_0)));
}

void decimate_strm::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state4.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void decimate_strm::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void decimate_strm::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state4.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void decimate_strm::thread_exitcond_flatten_fu_169_p2() {
    exitcond_flatten_fu_169_p2 = (!indvar_flatten_reg_117.read().is_01() || !tmp_8_reg_234.read().is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_117.read() == tmp_8_reg_234.read());
}

void decimate_strm::thread_indvar_flatten_next_fu_174_p2() {
    indvar_flatten_next_fu_174_p2 = (!indvar_flatten_reg_117.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(indvar_flatten_reg_117.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void decimate_strm::thread_j_fu_200_p2() {
    j_fu_200_p2 = (!j_i_mid2_fu_186_p3.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_i_mid2_fu_186_p3.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void decimate_strm::thread_j_i_mid2_fu_186_p3() {
    j_i_mid2_fu_186_p3 = (!tmp_3_i3_fu_180_p2.read()[0].is_01())? sc_lv<3>(): ((tmp_3_i3_fu_180_p2.read()[0].to_bool())? ap_const_lv3_0: j_i_reg_128.read());
}

void decimate_strm::thread_strm_in_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_reg_239.read()))) {
        strm_in_V_blk_n = strm_in_V_empty_n.read();
    } else {
        strm_in_V_blk_n = ap_const_logic_1;
    }
}

void decimate_strm::thread_strm_in_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_reg_239.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)))) {
        strm_in_V_read = ap_const_logic_1;
    } else {
        strm_in_V_read = ap_const_logic_0;
    }
}

void decimate_strm::thread_strm_out_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         !esl_seteq<1,1,1>(tmp_5_i_reg_253.read(), ap_const_lv1_0))) {
        strm_out_V_blk_n = strm_out_V_full_n.read();
    } else {
        strm_out_V_blk_n = ap_const_logic_1;
    }
}

void decimate_strm::thread_strm_out_V_din() {
    strm_out_V_din = acc_fu_217_p2.read().range(33, 2);
}

void decimate_strm::thread_strm_out_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         !esl_seteq<1,1,1>(tmp_5_i_reg_253.read(), ap_const_lv1_0) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)))) {
        strm_out_V_write = ap_const_logic_1;
    } else {
        strm_out_V_write = ap_const_logic_0;
    }
}

void decimate_strm::thread_tmp_3_i3_fu_180_p2() {
    tmp_3_i3_fu_180_p2 = (!j_i_reg_128.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(j_i_reg_128.read() == ap_const_lv3_4);
}

void decimate_strm::thread_tmp_4_cast_i_fu_213_p1() {
    tmp_4_cast_i_fu_213_p1 = esl_sext<34,32>(strm_in_V_dout.read());
}

void decimate_strm::thread_tmp_5_i_fu_194_p2() {
    tmp_5_i_fu_194_p2 = (!j_i_mid2_fu_186_p3.read().is_01() || !ap_const_lv3_3.is_01())? sc_lv<1>(): sc_lv<1>(j_i_mid2_fu_186_p3.read() == ap_const_lv3_3);
}

void decimate_strm::thread_tmp_7_fu_151_p4() {
    tmp_7_fu_151_p4 = strm_len.read().range(13, 2);
}

void decimate_strm::thread_tmp_8_fu_161_p3() {
    tmp_8_fu_161_p3 = esl_concat<12,2>(tmp_7_fu_151_p4.read(), ap_const_lv2_0);
}

void decimate_strm::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_condition_74.read(), ap_const_boolean_1)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_flatten_fu_169_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

