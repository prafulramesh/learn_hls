// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "bytestrm_dwordproc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<8> bytestrm_dwordproc::ap_const_lv8_0 = "00000000";
const sc_logic bytestrm_dwordproc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic bytestrm_dwordproc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> bytestrm_dwordproc::ap_const_lv2_0 = "00";
const sc_lv<2> bytestrm_dwordproc::ap_const_lv2_1 = "1";
const bool bytestrm_dwordproc::ap_const_boolean_1 = true;

bytestrm_dwordproc::bytestrm_dwordproc(sc_module_name name) : sc_module(name), mVcdFile(0) {
    bytestrm_dwordproc_e_U0 = new bytestrm_dwordproc_e("bytestrm_dwordproc_e_U0");
    bytestrm_dwordproc_e_U0->ap_clk(ap_clk);
    bytestrm_dwordproc_e_U0->ap_rst(ap_rst_n_inv);
    bytestrm_dwordproc_e_U0->ap_start(bytestrm_dwordproc_e_U0_ap_start);
    bytestrm_dwordproc_e_U0->start_full_n(start_for_Block_proc_U0_full_n);
    bytestrm_dwordproc_e_U0->ap_done(bytestrm_dwordproc_e_U0_ap_done);
    bytestrm_dwordproc_e_U0->ap_continue(bytestrm_dwordproc_e_U0_ap_continue);
    bytestrm_dwordproc_e_U0->ap_idle(bytestrm_dwordproc_e_U0_ap_idle);
    bytestrm_dwordproc_e_U0->ap_ready(bytestrm_dwordproc_e_U0_ap_ready);
    bytestrm_dwordproc_e_U0->start_out(bytestrm_dwordproc_e_U0_start_out);
    bytestrm_dwordproc_e_U0->start_write(bytestrm_dwordproc_e_U0_start_write);
    bytestrm_dwordproc_e_U0->strm_len(strm_len);
    bytestrm_dwordproc_e_U0->strm_len_out_din(bytestrm_dwordproc_e_U0_strm_len_out_din);
    bytestrm_dwordproc_e_U0->strm_len_out_full_n(strm_len_channel_full_n);
    bytestrm_dwordproc_e_U0->strm_len_out_write(bytestrm_dwordproc_e_U0_strm_len_out_write);
    bytestrm_dwordproc_e_U0->strm_len_out1_din(bytestrm_dwordproc_e_U0_strm_len_out1_din);
    bytestrm_dwordproc_e_U0->strm_len_out1_full_n(strm_len_channel2_full_n);
    bytestrm_dwordproc_e_U0->strm_len_out1_write(bytestrm_dwordproc_e_U0_strm_len_out1_write);
    Block_proc_U0 = new Block_proc("Block_proc_U0");
    Block_proc_U0->ap_clk(ap_clk);
    Block_proc_U0->ap_rst(ap_rst_n_inv);
    Block_proc_U0->ap_start(Block_proc_U0_ap_start);
    Block_proc_U0->start_full_n(start_for_strm_words2bytes_U0_full_n);
    Block_proc_U0->ap_done(Block_proc_U0_ap_done);
    Block_proc_U0->ap_continue(Block_proc_U0_ap_continue);
    Block_proc_U0->ap_idle(Block_proc_U0_ap_idle);
    Block_proc_U0->ap_ready(Block_proc_U0_ap_ready);
    Block_proc_U0->start_out(Block_proc_U0_start_out);
    Block_proc_U0->start_write(Block_proc_U0_start_write);
    Block_proc_U0->strm_len_dout(strm_len_channel2_dout);
    Block_proc_U0->strm_len_empty_n(strm_len_channel2_empty_n);
    Block_proc_U0->strm_len_read(Block_proc_U0_strm_len_read);
    Block_proc_U0->bytes_out_len_out_out_din(Block_proc_U0_bytes_out_len_out_out_din);
    Block_proc_U0->bytes_out_len_out_out_full_n(bytes_out_len_loc_ch_full_n);
    Block_proc_U0->bytes_out_len_out_out_write(Block_proc_U0_bytes_out_len_out_out_write);
    Block_proc_U0->ap_return(Block_proc_U0_ap_return);
    strm_bytes2words_U0 = new strm_bytes2words("strm_bytes2words_U0");
    strm_bytes2words_U0->ap_clk(ap_clk);
    strm_bytes2words_U0->ap_rst(ap_rst_n_inv);
    strm_bytes2words_U0->ap_start(strm_bytes2words_U0_ap_start);
    strm_bytes2words_U0->ap_done(strm_bytes2words_U0_ap_done);
    strm_bytes2words_U0->ap_continue(strm_bytes2words_U0_ap_continue);
    strm_bytes2words_U0->ap_idle(strm_bytes2words_U0_ap_idle);
    strm_bytes2words_U0->ap_ready(strm_bytes2words_U0_ap_ready);
    strm_bytes2words_U0->words_out_V_din(strm_bytes2words_U0_words_out_V_din);
    strm_bytes2words_U0->words_out_V_full_n(dwordstrm_in_V_full_n);
    strm_bytes2words_U0->words_out_V_write(strm_bytes2words_U0_words_out_V_write);
    strm_bytes2words_U0->bytes_in_V_TDATA(strm_in_V_TDATA);
    strm_bytes2words_U0->bytes_in_V_TVALID(strm_in_V_TVALID);
    strm_bytes2words_U0->bytes_in_V_TREADY(strm_bytes2words_U0_bytes_in_V_TREADY);
    strm_bytes2words_U0->bytestrm_len_dout(strm_len_channel_dout);
    strm_bytes2words_U0->bytestrm_len_empty_n(strm_len_channel_empty_n);
    strm_bytes2words_U0->bytestrm_len_read(strm_bytes2words_U0_bytestrm_len_read);
    decimate_strm_U0 = new decimate_strm("decimate_strm_U0");
    decimate_strm_U0->ap_clk(ap_clk);
    decimate_strm_U0->ap_rst(ap_rst_n_inv);
    decimate_strm_U0->ap_start(decimate_strm_U0_ap_start);
    decimate_strm_U0->ap_done(decimate_strm_U0_ap_done);
    decimate_strm_U0->ap_continue(decimate_strm_U0_ap_continue);
    decimate_strm_U0->ap_idle(decimate_strm_U0_ap_idle);
    decimate_strm_U0->ap_ready(decimate_strm_U0_ap_ready);
    decimate_strm_U0->strm_out_V_din(decimate_strm_U0_strm_out_V_din);
    decimate_strm_U0->strm_out_V_full_n(dwordstrm_out_V_full_n);
    decimate_strm_U0->strm_out_V_write(decimate_strm_U0_strm_out_V_write);
    decimate_strm_U0->strm_in_V_dout(dwordstrm_in_V_dout);
    decimate_strm_U0->strm_in_V_empty_n(dwordstrm_in_V_empty_n);
    decimate_strm_U0->strm_in_V_read(decimate_strm_U0_strm_in_V_read);
    decimate_strm_U0->strm_len(dwords_in_len_cast_l_dout);
    strm_words2bytes_U0 = new strm_words2bytes("strm_words2bytes_U0");
    strm_words2bytes_U0->ap_clk(ap_clk);
    strm_words2bytes_U0->ap_rst(ap_rst_n_inv);
    strm_words2bytes_U0->ap_start(strm_words2bytes_U0_ap_start);
    strm_words2bytes_U0->ap_done(strm_words2bytes_U0_ap_done);
    strm_words2bytes_U0->ap_continue(strm_words2bytes_U0_ap_continue);
    strm_words2bytes_U0->ap_idle(strm_words2bytes_U0_ap_idle);
    strm_words2bytes_U0->ap_ready(strm_words2bytes_U0_ap_ready);
    strm_words2bytes_U0->bytes_out_V_TDATA(strm_words2bytes_U0_bytes_out_V_TDATA);
    strm_words2bytes_U0->bytes_out_V_TVALID(strm_words2bytes_U0_bytes_out_V_TVALID);
    strm_words2bytes_U0->bytes_out_V_TREADY(strm_out_V_TREADY);
    strm_words2bytes_U0->words_in_V_dout(dwordstrm_out_V_dout);
    strm_words2bytes_U0->words_in_V_empty_n(dwordstrm_out_V_empty_n);
    strm_words2bytes_U0->words_in_V_read(strm_words2bytes_U0_words_in_V_read);
    strm_words2bytes_U0->bytes_out_len_loc_dout(bytes_out_len_loc_ch_dout);
    strm_words2bytes_U0->bytes_out_len_loc_empty_n(bytes_out_len_loc_ch_empty_n);
    strm_words2bytes_U0->bytes_out_len_loc_read(strm_words2bytes_U0_bytes_out_len_loc_read);
    strm_len_channel_U = new bytestrm_dwordprobkb("strm_len_channel_U");
    strm_len_channel_U->clk(ap_clk);
    strm_len_channel_U->reset(ap_rst_n_inv);
    strm_len_channel_U->if_read_ce(ap_var_for_const0);
    strm_len_channel_U->if_write_ce(ap_var_for_const0);
    strm_len_channel_U->if_din(bytestrm_dwordproc_e_U0_strm_len_out_din);
    strm_len_channel_U->if_full_n(strm_len_channel_full_n);
    strm_len_channel_U->if_write(bytestrm_dwordproc_e_U0_strm_len_out_write);
    strm_len_channel_U->if_dout(strm_len_channel_dout);
    strm_len_channel_U->if_empty_n(strm_len_channel_empty_n);
    strm_len_channel_U->if_read(strm_bytes2words_U0_bytestrm_len_read);
    strm_len_channel2_U = new bytestrm_dwordprocud("strm_len_channel2_U");
    strm_len_channel2_U->clk(ap_clk);
    strm_len_channel2_U->reset(ap_rst_n_inv);
    strm_len_channel2_U->if_read_ce(ap_var_for_const0);
    strm_len_channel2_U->if_write_ce(ap_var_for_const0);
    strm_len_channel2_U->if_din(bytestrm_dwordproc_e_U0_strm_len_out1_din);
    strm_len_channel2_U->if_full_n(strm_len_channel2_full_n);
    strm_len_channel2_U->if_write(bytestrm_dwordproc_e_U0_strm_len_out1_write);
    strm_len_channel2_U->if_dout(strm_len_channel2_dout);
    strm_len_channel2_U->if_empty_n(strm_len_channel2_empty_n);
    strm_len_channel2_U->if_read(Block_proc_U0_strm_len_read);
    bytes_out_len_loc_ch_U = new bytestrm_dwordprodEe("bytes_out_len_loc_ch_U");
    bytes_out_len_loc_ch_U->clk(ap_clk);
    bytes_out_len_loc_ch_U->reset(ap_rst_n_inv);
    bytes_out_len_loc_ch_U->if_read_ce(ap_var_for_const0);
    bytes_out_len_loc_ch_U->if_write_ce(ap_var_for_const0);
    bytes_out_len_loc_ch_U->if_din(Block_proc_U0_bytes_out_len_out_out_din);
    bytes_out_len_loc_ch_U->if_full_n(bytes_out_len_loc_ch_full_n);
    bytes_out_len_loc_ch_U->if_write(Block_proc_U0_bytes_out_len_out_out_write);
    bytes_out_len_loc_ch_U->if_dout(bytes_out_len_loc_ch_dout);
    bytes_out_len_loc_ch_U->if_empty_n(bytes_out_len_loc_ch_empty_n);
    bytes_out_len_loc_ch_U->if_read(strm_words2bytes_U0_bytes_out_len_loc_read);
    dwords_in_len_cast_l_U = new bytestrm_dwordproeOg("dwords_in_len_cast_l_U");
    dwords_in_len_cast_l_U->clk(ap_clk);
    dwords_in_len_cast_l_U->reset(ap_rst_n_inv);
    dwords_in_len_cast_l_U->if_read_ce(ap_var_for_const0);
    dwords_in_len_cast_l_U->if_write_ce(ap_var_for_const0);
    dwords_in_len_cast_l_U->if_din(Block_proc_U0_ap_return);
    dwords_in_len_cast_l_U->if_full_n(dwords_in_len_cast_l_full_n);
    dwords_in_len_cast_l_U->if_write(Block_proc_U0_ap_done);
    dwords_in_len_cast_l_U->if_dout(dwords_in_len_cast_l_dout);
    dwords_in_len_cast_l_U->if_empty_n(dwords_in_len_cast_l_empty_n);
    dwords_in_len_cast_l_U->if_read(decimate_strm_U0_ap_ready);
    dwordstrm_in_V_U = new bytestrm_dwordprofYi("dwordstrm_in_V_U");
    dwordstrm_in_V_U->clk(ap_clk);
    dwordstrm_in_V_U->reset(ap_rst_n_inv);
    dwordstrm_in_V_U->if_read_ce(ap_var_for_const0);
    dwordstrm_in_V_U->if_write_ce(ap_var_for_const0);
    dwordstrm_in_V_U->if_din(strm_bytes2words_U0_words_out_V_din);
    dwordstrm_in_V_U->if_full_n(dwordstrm_in_V_full_n);
    dwordstrm_in_V_U->if_write(strm_bytes2words_U0_words_out_V_write);
    dwordstrm_in_V_U->if_dout(dwordstrm_in_V_dout);
    dwordstrm_in_V_U->if_empty_n(dwordstrm_in_V_empty_n);
    dwordstrm_in_V_U->if_read(decimate_strm_U0_strm_in_V_read);
    dwordstrm_out_V_U = new bytestrm_dwordprog8j("dwordstrm_out_V_U");
    dwordstrm_out_V_U->clk(ap_clk);
    dwordstrm_out_V_U->reset(ap_rst_n_inv);
    dwordstrm_out_V_U->if_read_ce(ap_var_for_const0);
    dwordstrm_out_V_U->if_write_ce(ap_var_for_const0);
    dwordstrm_out_V_U->if_din(decimate_strm_U0_strm_out_V_din);
    dwordstrm_out_V_U->if_full_n(dwordstrm_out_V_full_n);
    dwordstrm_out_V_U->if_write(decimate_strm_U0_strm_out_V_write);
    dwordstrm_out_V_U->if_dout(dwordstrm_out_V_dout);
    dwordstrm_out_V_U->if_empty_n(dwordstrm_out_V_empty_n);
    dwordstrm_out_V_U->if_read(strm_words2bytes_U0_words_in_V_read);
    start_for_Block_phbi_U = new start_for_Block_phbi("start_for_Block_phbi_U");
    start_for_Block_phbi_U->clk(ap_clk);
    start_for_Block_phbi_U->reset(ap_rst_n_inv);
    start_for_Block_phbi_U->if_read_ce(ap_var_for_const0);
    start_for_Block_phbi_U->if_write_ce(ap_var_for_const0);
    start_for_Block_phbi_U->if_din(start_for_Block_proc_U0_din);
    start_for_Block_phbi_U->if_full_n(start_for_Block_proc_U0_full_n);
    start_for_Block_phbi_U->if_write(bytestrm_dwordproc_e_U0_start_write);
    start_for_Block_phbi_U->if_dout(start_for_Block_proc_U0_dout);
    start_for_Block_phbi_U->if_empty_n(start_for_Block_proc_U0_empty_n);
    start_for_Block_phbi_U->if_read(Block_proc_U0_ap_ready);
    start_for_strm_woibs_U = new start_for_strm_woibs("start_for_strm_woibs_U");
    start_for_strm_woibs_U->clk(ap_clk);
    start_for_strm_woibs_U->reset(ap_rst_n_inv);
    start_for_strm_woibs_U->if_read_ce(ap_var_for_const0);
    start_for_strm_woibs_U->if_write_ce(ap_var_for_const0);
    start_for_strm_woibs_U->if_din(start_for_strm_words2bytes_U0_din);
    start_for_strm_woibs_U->if_full_n(start_for_strm_words2bytes_U0_full_n);
    start_for_strm_woibs_U->if_write(Block_proc_U0_start_write);
    start_for_strm_woibs_U->if_dout(start_for_strm_words2bytes_U0_dout);
    start_for_strm_woibs_U->if_empty_n(start_for_strm_words2bytes_U0_empty_n);
    start_for_strm_woibs_U->if_read(strm_words2bytes_U0_ap_ready);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Block_proc_U0_ap_continue);
    sensitive << ( dwords_in_len_cast_l_full_n );

    SC_METHOD(thread_Block_proc_U0_ap_start);
    sensitive << ( start_for_Block_proc_U0_empty_n );

    SC_METHOD(thread_ap_channel_done_dwords_in_len_cast_l);
    sensitive << ( Block_proc_U0_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( strm_words2bytes_U0_ap_done );

    SC_METHOD(thread_ap_hs_continue);

    SC_METHOD(thread_ap_hs_done);
    sensitive << ( strm_words2bytes_U0_ap_done );

    SC_METHOD(thread_ap_hs_ready);
    sensitive << ( ap_sync_strm_bytes2words_U0_ap_ready );
    sensitive << ( ap_sync_bytestrm_dwordproc_e_U0_ap_ready );

    SC_METHOD(thread_ap_idle);
    sensitive << ( bytestrm_dwordproc_e_U0_ap_idle );
    sensitive << ( Block_proc_U0_ap_idle );
    sensitive << ( strm_bytes2words_U0_ap_idle );
    sensitive << ( decimate_strm_U0_ap_idle );
    sensitive << ( strm_words2bytes_U0_ap_idle );
    sensitive << ( dwords_in_len_cast_l_empty_n );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_hs_ready );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_bytestrm_dwordproc_e_U0_ap_ready);
    sensitive << ( bytestrm_dwordproc_e_U0_ap_ready );
    sensitive << ( ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready );

    SC_METHOD(thread_ap_sync_bytestrm_dwordproc_e_U0_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready );

    SC_METHOD(thread_ap_sync_strm_bytes2words_U0_ap_ready);
    sensitive << ( strm_bytes2words_U0_ap_ready );
    sensitive << ( ap_sync_reg_strm_bytes2words_U0_ap_ready );

    SC_METHOD(thread_ap_sync_strm_bytes2words_U0_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_sync_reg_strm_bytes2words_U0_ap_ready );

    SC_METHOD(thread_bytestrm_dwordproc_e_U0_ap_continue);

    SC_METHOD(thread_bytestrm_dwordproc_e_U0_ap_start);
    sensitive << ( ap_sync_bytestrm_dwordproc_e_U0_ap_start );

    SC_METHOD(thread_decimate_strm_U0_ap_continue);

    SC_METHOD(thread_decimate_strm_U0_ap_start);
    sensitive << ( dwords_in_len_cast_l_empty_n );

    SC_METHOD(thread_start_for_Block_proc_U0_din);

    SC_METHOD(thread_start_for_strm_words2bytes_U0_din);

    SC_METHOD(thread_strm_bytes2words_U0_ap_continue);

    SC_METHOD(thread_strm_bytes2words_U0_ap_start);
    sensitive << ( ap_sync_strm_bytes2words_U0_ap_start );

    SC_METHOD(thread_strm_in_V_TREADY);
    sensitive << ( strm_bytes2words_U0_bytes_in_V_TREADY );

    SC_METHOD(thread_strm_out_V_TDATA);
    sensitive << ( strm_words2bytes_U0_bytes_out_V_TDATA );

    SC_METHOD(thread_strm_out_V_TVALID);
    sensitive << ( strm_words2bytes_U0_bytes_out_V_TVALID );

    SC_METHOD(thread_strm_words2bytes_U0_ap_continue);

    SC_METHOD(thread_strm_words2bytes_U0_ap_start);
    sensitive << ( start_for_strm_words2bytes_U0_empty_n );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_sync_reg_strm_bytes2words_U0_ap_ready = SC_LOGIC_0;
    strm_bytes2words_U0_ap_ready_count = "00";
    ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready = SC_LOGIC_0;
    bytestrm_dwordproc_e_U0_ap_ready_count = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "bytestrm_dwordproc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, strm_out_V_TDATA, "(port)strm_out_V_TDATA");
    sc_trace(mVcdFile, strm_in_V_TDATA, "(port)strm_in_V_TDATA");
    sc_trace(mVcdFile, strm_len, "(port)strm_len");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, strm_in_V_TVALID, "(port)strm_in_V_TVALID");
    sc_trace(mVcdFile, strm_in_V_TREADY, "(port)strm_in_V_TREADY");
    sc_trace(mVcdFile, strm_out_V_TVALID, "(port)strm_out_V_TVALID");
    sc_trace(mVcdFile, strm_out_V_TREADY, "(port)strm_out_V_TREADY");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_ap_start, "bytestrm_dwordproc_e_U0_ap_start");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_ap_done, "bytestrm_dwordproc_e_U0_ap_done");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_ap_continue, "bytestrm_dwordproc_e_U0_ap_continue");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_ap_idle, "bytestrm_dwordproc_e_U0_ap_idle");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_ap_ready, "bytestrm_dwordproc_e_U0_ap_ready");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_start_out, "bytestrm_dwordproc_e_U0_start_out");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_start_write, "bytestrm_dwordproc_e_U0_start_write");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_strm_len_out_din, "bytestrm_dwordproc_e_U0_strm_len_out_din");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_strm_len_out_write, "bytestrm_dwordproc_e_U0_strm_len_out_write");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_strm_len_out1_din, "bytestrm_dwordproc_e_U0_strm_len_out1_din");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_strm_len_out1_write, "bytestrm_dwordproc_e_U0_strm_len_out1_write");
    sc_trace(mVcdFile, Block_proc_U0_ap_start, "Block_proc_U0_ap_start");
    sc_trace(mVcdFile, Block_proc_U0_ap_done, "Block_proc_U0_ap_done");
    sc_trace(mVcdFile, Block_proc_U0_ap_continue, "Block_proc_U0_ap_continue");
    sc_trace(mVcdFile, Block_proc_U0_ap_idle, "Block_proc_U0_ap_idle");
    sc_trace(mVcdFile, Block_proc_U0_ap_ready, "Block_proc_U0_ap_ready");
    sc_trace(mVcdFile, Block_proc_U0_start_out, "Block_proc_U0_start_out");
    sc_trace(mVcdFile, Block_proc_U0_start_write, "Block_proc_U0_start_write");
    sc_trace(mVcdFile, Block_proc_U0_strm_len_read, "Block_proc_U0_strm_len_read");
    sc_trace(mVcdFile, Block_proc_U0_bytes_out_len_out_out_din, "Block_proc_U0_bytes_out_len_out_out_din");
    sc_trace(mVcdFile, Block_proc_U0_bytes_out_len_out_out_write, "Block_proc_U0_bytes_out_len_out_out_write");
    sc_trace(mVcdFile, Block_proc_U0_ap_return, "Block_proc_U0_ap_return");
    sc_trace(mVcdFile, ap_channel_done_dwords_in_len_cast_l, "ap_channel_done_dwords_in_len_cast_l");
    sc_trace(mVcdFile, dwords_in_len_cast_l_full_n, "dwords_in_len_cast_l_full_n");
    sc_trace(mVcdFile, strm_bytes2words_U0_ap_start, "strm_bytes2words_U0_ap_start");
    sc_trace(mVcdFile, strm_bytes2words_U0_ap_done, "strm_bytes2words_U0_ap_done");
    sc_trace(mVcdFile, strm_bytes2words_U0_ap_continue, "strm_bytes2words_U0_ap_continue");
    sc_trace(mVcdFile, strm_bytes2words_U0_ap_idle, "strm_bytes2words_U0_ap_idle");
    sc_trace(mVcdFile, strm_bytes2words_U0_ap_ready, "strm_bytes2words_U0_ap_ready");
    sc_trace(mVcdFile, strm_bytes2words_U0_words_out_V_din, "strm_bytes2words_U0_words_out_V_din");
    sc_trace(mVcdFile, strm_bytes2words_U0_words_out_V_write, "strm_bytes2words_U0_words_out_V_write");
    sc_trace(mVcdFile, strm_bytes2words_U0_bytes_in_V_TREADY, "strm_bytes2words_U0_bytes_in_V_TREADY");
    sc_trace(mVcdFile, strm_bytes2words_U0_bytestrm_len_read, "strm_bytes2words_U0_bytestrm_len_read");
    sc_trace(mVcdFile, decimate_strm_U0_ap_start, "decimate_strm_U0_ap_start");
    sc_trace(mVcdFile, decimate_strm_U0_ap_done, "decimate_strm_U0_ap_done");
    sc_trace(mVcdFile, decimate_strm_U0_ap_continue, "decimate_strm_U0_ap_continue");
    sc_trace(mVcdFile, decimate_strm_U0_ap_idle, "decimate_strm_U0_ap_idle");
    sc_trace(mVcdFile, decimate_strm_U0_ap_ready, "decimate_strm_U0_ap_ready");
    sc_trace(mVcdFile, decimate_strm_U0_strm_out_V_din, "decimate_strm_U0_strm_out_V_din");
    sc_trace(mVcdFile, decimate_strm_U0_strm_out_V_write, "decimate_strm_U0_strm_out_V_write");
    sc_trace(mVcdFile, decimate_strm_U0_strm_in_V_read, "decimate_strm_U0_strm_in_V_read");
    sc_trace(mVcdFile, strm_words2bytes_U0_ap_start, "strm_words2bytes_U0_ap_start");
    sc_trace(mVcdFile, strm_words2bytes_U0_ap_done, "strm_words2bytes_U0_ap_done");
    sc_trace(mVcdFile, strm_words2bytes_U0_ap_continue, "strm_words2bytes_U0_ap_continue");
    sc_trace(mVcdFile, strm_words2bytes_U0_ap_idle, "strm_words2bytes_U0_ap_idle");
    sc_trace(mVcdFile, strm_words2bytes_U0_ap_ready, "strm_words2bytes_U0_ap_ready");
    sc_trace(mVcdFile, strm_words2bytes_U0_bytes_out_V_TDATA, "strm_words2bytes_U0_bytes_out_V_TDATA");
    sc_trace(mVcdFile, strm_words2bytes_U0_bytes_out_V_TVALID, "strm_words2bytes_U0_bytes_out_V_TVALID");
    sc_trace(mVcdFile, strm_words2bytes_U0_words_in_V_read, "strm_words2bytes_U0_words_in_V_read");
    sc_trace(mVcdFile, strm_words2bytes_U0_bytes_out_len_loc_read, "strm_words2bytes_U0_bytes_out_len_loc_read");
    sc_trace(mVcdFile, ap_hs_continue, "ap_hs_continue");
    sc_trace(mVcdFile, strm_len_channel_full_n, "strm_len_channel_full_n");
    sc_trace(mVcdFile, strm_len_channel_dout, "strm_len_channel_dout");
    sc_trace(mVcdFile, strm_len_channel_empty_n, "strm_len_channel_empty_n");
    sc_trace(mVcdFile, strm_len_channel2_full_n, "strm_len_channel2_full_n");
    sc_trace(mVcdFile, strm_len_channel2_dout, "strm_len_channel2_dout");
    sc_trace(mVcdFile, strm_len_channel2_empty_n, "strm_len_channel2_empty_n");
    sc_trace(mVcdFile, bytes_out_len_loc_ch_full_n, "bytes_out_len_loc_ch_full_n");
    sc_trace(mVcdFile, bytes_out_len_loc_ch_dout, "bytes_out_len_loc_ch_dout");
    sc_trace(mVcdFile, bytes_out_len_loc_ch_empty_n, "bytes_out_len_loc_ch_empty_n");
    sc_trace(mVcdFile, dwords_in_len_cast_l_dout, "dwords_in_len_cast_l_dout");
    sc_trace(mVcdFile, dwords_in_len_cast_l_empty_n, "dwords_in_len_cast_l_empty_n");
    sc_trace(mVcdFile, dwordstrm_in_V_full_n, "dwordstrm_in_V_full_n");
    sc_trace(mVcdFile, dwordstrm_in_V_dout, "dwordstrm_in_V_dout");
    sc_trace(mVcdFile, dwordstrm_in_V_empty_n, "dwordstrm_in_V_empty_n");
    sc_trace(mVcdFile, dwordstrm_out_V_full_n, "dwordstrm_out_V_full_n");
    sc_trace(mVcdFile, dwordstrm_out_V_dout, "dwordstrm_out_V_dout");
    sc_trace(mVcdFile, dwordstrm_out_V_empty_n, "dwordstrm_out_V_empty_n");
    sc_trace(mVcdFile, ap_hs_done, "ap_hs_done");
    sc_trace(mVcdFile, ap_hs_ready, "ap_hs_ready");
    sc_trace(mVcdFile, ap_sync_reg_strm_bytes2words_U0_ap_ready, "ap_sync_reg_strm_bytes2words_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_strm_bytes2words_U0_ap_ready, "ap_sync_strm_bytes2words_U0_ap_ready");
    sc_trace(mVcdFile, strm_bytes2words_U0_ap_ready_count, "strm_bytes2words_U0_ap_ready_count");
    sc_trace(mVcdFile, ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready, "ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_bytestrm_dwordproc_e_U0_ap_ready, "ap_sync_bytestrm_dwordproc_e_U0_ap_ready");
    sc_trace(mVcdFile, bytestrm_dwordproc_e_U0_ap_ready_count, "bytestrm_dwordproc_e_U0_ap_ready_count");
    sc_trace(mVcdFile, ap_sync_strm_bytes2words_U0_ap_start, "ap_sync_strm_bytes2words_U0_ap_start");
    sc_trace(mVcdFile, ap_sync_bytestrm_dwordproc_e_U0_ap_start, "ap_sync_bytestrm_dwordproc_e_U0_ap_start");
    sc_trace(mVcdFile, start_for_Block_proc_U0_din, "start_for_Block_proc_U0_din");
    sc_trace(mVcdFile, start_for_Block_proc_U0_full_n, "start_for_Block_proc_U0_full_n");
    sc_trace(mVcdFile, start_for_Block_proc_U0_dout, "start_for_Block_proc_U0_dout");
    sc_trace(mVcdFile, start_for_Block_proc_U0_empty_n, "start_for_Block_proc_U0_empty_n");
    sc_trace(mVcdFile, start_for_strm_words2bytes_U0_din, "start_for_strm_words2bytes_U0_din");
    sc_trace(mVcdFile, start_for_strm_words2bytes_U0_full_n, "start_for_strm_words2bytes_U0_full_n");
    sc_trace(mVcdFile, start_for_strm_words2bytes_U0_dout, "start_for_strm_words2bytes_U0_dout");
    sc_trace(mVcdFile, start_for_strm_words2bytes_U0_empty_n, "start_for_strm_words2bytes_U0_empty_n");
#endif

    }
    mHdltvinHandle.open("bytestrm_dwordproc.hdltvin.dat");
    mHdltvoutHandle.open("bytestrm_dwordproc.hdltvout.dat");
}

bytestrm_dwordproc::~bytestrm_dwordproc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete bytestrm_dwordproc_e_U0;
    delete Block_proc_U0;
    delete strm_bytes2words_U0;
    delete decimate_strm_U0;
    delete strm_words2bytes_U0;
    delete strm_len_channel_U;
    delete strm_len_channel2_U;
    delete bytes_out_len_loc_ch_U;
    delete dwords_in_len_cast_l_U;
    delete dwordstrm_in_V_U;
    delete dwordstrm_out_V_U;
    delete start_for_Block_phbi_U;
    delete start_for_strm_woibs_U;
}

void bytestrm_dwordproc::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void bytestrm_dwordproc::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (ap_start.read() & 
             ap_hs_ready.read()))) {
            ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready = ap_sync_bytestrm_dwordproc_e_U0_ap_ready.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_strm_bytes2words_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (ap_start.read() & 
             ap_hs_ready.read()))) {
            ap_sync_reg_strm_bytes2words_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_strm_bytes2words_U0_ap_ready = ap_sync_strm_bytes2words_U0_ap_ready.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_hs_ready.read()) && 
         esl_seteq<1,1,1>(bytestrm_dwordproc_e_U0_ap_ready.read(), ap_const_logic_0))) {
        bytestrm_dwordproc_e_U0_ap_ready_count = (!bytestrm_dwordproc_e_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(bytestrm_dwordproc_e_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(ap_hs_ready.read(), ap_const_logic_0) && 
                esl_seteq<1,1,1>(bytestrm_dwordproc_e_U0_ap_ready.read(), ap_const_logic_1))) {
        bytestrm_dwordproc_e_U0_ap_ready_count = (!bytestrm_dwordproc_e_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(bytestrm_dwordproc_e_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
    if ((esl_seteq<1,1,1>(strm_bytes2words_U0_ap_ready.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_hs_ready.read()))) {
        strm_bytes2words_U0_ap_ready_count = (!strm_bytes2words_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(strm_bytes2words_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, strm_bytes2words_U0_ap_ready.read()) && 
                esl_seteq<1,1,1>(ap_hs_ready.read(), ap_const_logic_0))) {
        strm_bytes2words_U0_ap_ready_count = (!strm_bytes2words_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(strm_bytes2words_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
}

void bytestrm_dwordproc::thread_Block_proc_U0_ap_continue() {
    Block_proc_U0_ap_continue = dwords_in_len_cast_l_full_n.read();
}

void bytestrm_dwordproc::thread_Block_proc_U0_ap_start() {
    Block_proc_U0_ap_start = start_for_Block_proc_U0_empty_n.read();
}

void bytestrm_dwordproc::thread_ap_channel_done_dwords_in_len_cast_l() {
    ap_channel_done_dwords_in_len_cast_l = Block_proc_U0_ap_done.read();
}

void bytestrm_dwordproc::thread_ap_done() {
    ap_done = strm_words2bytes_U0_ap_done.read();
}

void bytestrm_dwordproc::thread_ap_hs_continue() {
    ap_hs_continue = ap_const_logic_1;
}

void bytestrm_dwordproc::thread_ap_hs_done() {
    ap_hs_done = strm_words2bytes_U0_ap_done.read();
}

void bytestrm_dwordproc::thread_ap_hs_ready() {
    ap_hs_ready = (ap_sync_strm_bytes2words_U0_ap_ready.read() & ap_sync_bytestrm_dwordproc_e_U0_ap_ready.read());
}

void bytestrm_dwordproc::thread_ap_idle() {
    ap_idle = (bytestrm_dwordproc_e_U0_ap_idle.read() & Block_proc_U0_ap_idle.read() & strm_bytes2words_U0_ap_idle.read() & decimate_strm_U0_ap_idle.read() & strm_words2bytes_U0_ap_idle.read() & (dwords_in_len_cast_l_empty_n.read() ^ 
  ap_const_logic_1));
}

void bytestrm_dwordproc::thread_ap_ready() {
    ap_ready = ap_hs_ready.read();
}

void bytestrm_dwordproc::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void bytestrm_dwordproc::thread_ap_sync_bytestrm_dwordproc_e_U0_ap_ready() {
    ap_sync_bytestrm_dwordproc_e_U0_ap_ready = (bytestrm_dwordproc_e_U0_ap_ready.read() | ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready.read());
}

void bytestrm_dwordproc::thread_ap_sync_bytestrm_dwordproc_e_U0_ap_start() {
    ap_sync_bytestrm_dwordproc_e_U0_ap_start = (ap_start.read() & (ap_sync_reg_bytestrm_dwordproc_e_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void bytestrm_dwordproc::thread_ap_sync_strm_bytes2words_U0_ap_ready() {
    ap_sync_strm_bytes2words_U0_ap_ready = (strm_bytes2words_U0_ap_ready.read() | ap_sync_reg_strm_bytes2words_U0_ap_ready.read());
}

void bytestrm_dwordproc::thread_ap_sync_strm_bytes2words_U0_ap_start() {
    ap_sync_strm_bytes2words_U0_ap_start = (ap_start.read() & (ap_sync_reg_strm_bytes2words_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void bytestrm_dwordproc::thread_bytestrm_dwordproc_e_U0_ap_continue() {
    bytestrm_dwordproc_e_U0_ap_continue = ap_const_logic_1;
}

void bytestrm_dwordproc::thread_bytestrm_dwordproc_e_U0_ap_start() {
    bytestrm_dwordproc_e_U0_ap_start = ap_sync_bytestrm_dwordproc_e_U0_ap_start.read();
}

void bytestrm_dwordproc::thread_decimate_strm_U0_ap_continue() {
    decimate_strm_U0_ap_continue = ap_const_logic_1;
}

void bytestrm_dwordproc::thread_decimate_strm_U0_ap_start() {
    decimate_strm_U0_ap_start = dwords_in_len_cast_l_empty_n.read();
}

void bytestrm_dwordproc::thread_start_for_Block_proc_U0_din() {
    start_for_Block_proc_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void bytestrm_dwordproc::thread_start_for_strm_words2bytes_U0_din() {
    start_for_strm_words2bytes_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void bytestrm_dwordproc::thread_strm_bytes2words_U0_ap_continue() {
    strm_bytes2words_U0_ap_continue = ap_const_logic_1;
}

void bytestrm_dwordproc::thread_strm_bytes2words_U0_ap_start() {
    strm_bytes2words_U0_ap_start = ap_sync_strm_bytes2words_U0_ap_start.read();
}

void bytestrm_dwordproc::thread_strm_in_V_TREADY() {
    strm_in_V_TREADY = strm_bytes2words_U0_bytes_in_V_TREADY.read();
}

void bytestrm_dwordproc::thread_strm_out_V_TDATA() {
    strm_out_V_TDATA = strm_words2bytes_U0_bytes_out_V_TDATA.read();
}

void bytestrm_dwordproc::thread_strm_out_V_TVALID() {
    strm_out_V_TVALID = strm_words2bytes_U0_bytes_out_V_TVALID.read();
}

void bytestrm_dwordproc::thread_strm_words2bytes_U0_ap_continue() {
    strm_words2bytes_U0_ap_continue = ap_const_logic_1;
}

void bytestrm_dwordproc::thread_strm_words2bytes_U0_ap_start() {
    strm_words2bytes_U0_ap_start = start_for_strm_words2bytes_U0_empty_n.read();
}

void bytestrm_dwordproc::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvoutHandle << mComma << "{"  <<  " \"strm_out_V_TDATA\" :  \"" << strm_out_V_TDATA.read() << "\" ";
        mHdltvinHandle << mComma << "{"  <<  " \"strm_in_V_TDATA\" :  \"" << strm_in_V_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"strm_len\" :  \"" << strm_len.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"strm_in_V_TVALID\" :  \"" << strm_in_V_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"strm_in_V_TREADY\" :  \"" << strm_in_V_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"strm_out_V_TVALID\" :  \"" << strm_out_V_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"strm_out_V_TREADY\" :  \"" << strm_out_V_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

