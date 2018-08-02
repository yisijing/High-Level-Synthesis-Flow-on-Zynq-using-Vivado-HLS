// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _yuv2rgb_HH_
#define _yuv2rgb_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "yuv_filter_ama_adeOg.h"
#include "yuv_filter_mac_mufYi.h"
#include "yuv_filter_mac_mug8j.h"

namespace ap_rtl {

struct yuv2rgb : public sc_module {
    // Port declarations 31
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<22> > in_channels_ch1_address0;
    sc_out< sc_logic > in_channels_ch1_ce0;
    sc_in< sc_lv<8> > in_channels_ch1_q0;
    sc_out< sc_lv<22> > in_channels_ch2_address0;
    sc_out< sc_logic > in_channels_ch2_ce0;
    sc_in< sc_lv<8> > in_channels_ch2_q0;
    sc_out< sc_lv<22> > in_channels_ch3_address0;
    sc_out< sc_logic > in_channels_ch3_ce0;
    sc_in< sc_lv<8> > in_channels_ch3_q0;
    sc_in< sc_lv<16> > in_width_read;
    sc_in< sc_lv<16> > in_height_read;
    sc_out< sc_lv<22> > out_channels_ch1_address0;
    sc_out< sc_logic > out_channels_ch1_ce0;
    sc_out< sc_logic > out_channels_ch1_we0;
    sc_out< sc_lv<8> > out_channels_ch1_d0;
    sc_out< sc_lv<22> > out_channels_ch2_address0;
    sc_out< sc_logic > out_channels_ch2_ce0;
    sc_out< sc_logic > out_channels_ch2_we0;
    sc_out< sc_lv<8> > out_channels_ch2_d0;
    sc_out< sc_lv<22> > out_channels_ch3_address0;
    sc_out< sc_logic > out_channels_ch3_ce0;
    sc_out< sc_logic > out_channels_ch3_we0;
    sc_out< sc_lv<8> > out_channels_ch3_d0;
    sc_out< sc_lv<16> > ap_return_0;
    sc_out< sc_lv<16> > ap_return_1;
    sc_signal< sc_lv<18> > ap_var_for_const0;
    sc_signal< sc_lv<18> > ap_var_for_const1;


    // Module declarations
    yuv2rgb(sc_module_name name);
    SC_HAS_PROCESS(yuv2rgb);

    ~yuv2rgb();

    sc_trace_file* mVcdFile;

    yuv_filter_ama_adeOg<1,1,5,8,18,18,18>* yuv_filter_ama_adeOg_U15;
    yuv_filter_mac_mufYi<1,1,10,8,18,18>* yuv_filter_mac_mufYi_U16;
    yuv_filter_mac_mug8j<1,1,8,8,17,17>* yuv_filter_mac_mug8j_U17;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > x_1_fu_225_p2;
    sc_signal< sc_lv<16> > x_1_reg_580;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<23> > tmp_s_fu_255_p2;
    sc_signal< sc_lv<23> > tmp_s_reg_585;
    sc_signal< sc_lv<1> > exitcond1_fu_220_p2;
    sc_signal< sc_lv<16> > y_1_fu_276_p2;
    sc_signal< sc_lv<16> > y_1_reg_593;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_21_cast_fu_291_p1;
    sc_signal< sc_lv<64> > tmp_21_cast_reg_598;
    sc_signal< sc_lv<1> > exitcond_fu_271_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > Y_reg_622;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > D_fu_299_p2;
    sc_signal< sc_lv<8> > D_reg_627;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > E_fu_305_p2;
    sc_signal< sc_lv<8> > E_reg_634;
    sc_signal< sc_lv<18> > grp_fu_537_p4;
    sc_signal< sc_lv<18> > tmp_3_reg_639;
    sc_signal< sc_lv<17> > tmp_13_fu_315_p2;
    sc_signal< sc_lv<17> > tmp_13_reg_646;
    sc_signal< sc_lv<8> > R_fu_369_p3;
    sc_signal< sc_lv<8> > R_reg_651;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > G_fu_436_p3;
    sc_signal< sc_lv<8> > G_reg_656;
    sc_signal< sc_lv<8> > B_fu_529_p3;
    sc_signal< sc_lv<8> > B_reg_661;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<16> > x_reg_198;
    sc_signal< sc_lv<16> > y_reg_209;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<13> > tmp_fu_231_p1;
    sc_signal< sc_lv<15> > tmp_5_fu_243_p1;
    sc_signal< sc_lv<23> > p_shl2_cast_fu_235_p3;
    sc_signal< sc_lv<23> > p_shl3_cast_fu_247_p3;
    sc_signal< sc_lv<23> > tmp_cast_fu_282_p1;
    sc_signal< sc_lv<23> > tmp_6_fu_286_p2;
    sc_signal< sc_lv<8> > tmp_13_fu_315_p1;
    sc_signal< sc_lv<18> > grp_fu_547_p3;
    sc_signal< sc_lv<2> > tmp_8_fu_324_p4;
    sc_signal< sc_lv<1> > icmp_fu_333_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_339_p3;
    sc_signal< sc_lv<1> > tmp_11_fu_363_p2;
    sc_signal< sc_lv<8> > p_phitmp_fu_355_p3;
    sc_signal< sc_lv<8> > phitmp_fu_346_p4;
    sc_signal< sc_lv<17> > grp_fu_557_p3;
    sc_signal< sc_lv<18> > tmp1_cast_fu_380_p1;
    sc_signal< sc_lv<18> > tmp_14_fu_383_p2;
    sc_signal< sc_lv<2> > tmp_15_fu_388_p4;
    sc_signal< sc_lv<1> > icmp9_fu_398_p2;
    sc_signal< sc_lv<1> > tmp_16_fu_404_p3;
    sc_signal< sc_lv<1> > tmp_17_fu_430_p2;
    sc_signal< sc_lv<8> > p_phitmp2_fu_422_p3;
    sc_signal< sc_lv<8> > phitmp2_fu_412_p4;
    sc_signal< sc_lv<17> > p_shl_fu_444_p3;
    sc_signal< sc_lv<10> > p_shl1_fu_455_p3;
    sc_signal< sc_lv<18> > p_shl1_cast_fu_462_p1;
    sc_signal< sc_lv<18> > tmp2_fu_466_p2;
    sc_signal< sc_lv<19> > tmp2_cast_fu_471_p1;
    sc_signal< sc_lv<19> > p_shl_cast_fu_451_p1;
    sc_signal< sc_lv<19> > tmp_18_fu_475_p2;
    sc_signal< sc_lv<3> > tmp_19_fu_481_p4;
    sc_signal< sc_lv<1> > icmp1_fu_491_p2;
    sc_signal< sc_lv<1> > tmp_20_fu_497_p3;
    sc_signal< sc_lv<1> > tmp_21_fu_523_p2;
    sc_signal< sc_lv<8> > p_phitmp3_fu_515_p3;
    sc_signal< sc_lv<8> > phitmp3_fu_505_p4;
    sc_signal< sc_lv<5> > grp_fu_537_p0;
    sc_signal< sc_lv<8> > grp_fu_537_p1;
    sc_signal< sc_lv<10> > grp_fu_547_p0;
    sc_signal< sc_lv<8> > grp_fu_557_p0;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< sc_lv<9> > grp_fu_537_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<17> ap_const_lv17_1FF30;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<9> ap_const_lv9_1F0;
    static const sc_lv<18> ap_const_lv18_12A;
    static const sc_lv<18> ap_const_lv18_80;
    static const sc_lv<18> ap_const_lv18_199;
    static const sc_lv<16> ap_const_lv16_FF9C;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_B_fu_529_p3();
    void thread_D_fu_299_p2();
    void thread_E_fu_305_p2();
    void thread_G_fu_436_p3();
    void thread_R_fu_369_p3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_exitcond1_fu_220_p2();
    void thread_exitcond_fu_271_p2();
    void thread_grp_fu_537_p0();
    void thread_grp_fu_537_p1();
    void thread_grp_fu_537_p10();
    void thread_grp_fu_547_p0();
    void thread_grp_fu_557_p0();
    void thread_icmp1_fu_491_p2();
    void thread_icmp9_fu_398_p2();
    void thread_icmp_fu_333_p2();
    void thread_in_channels_ch1_address0();
    void thread_in_channels_ch1_ce0();
    void thread_in_channels_ch2_address0();
    void thread_in_channels_ch2_ce0();
    void thread_in_channels_ch3_address0();
    void thread_in_channels_ch3_ce0();
    void thread_out_channels_ch1_address0();
    void thread_out_channels_ch1_ce0();
    void thread_out_channels_ch1_d0();
    void thread_out_channels_ch1_we0();
    void thread_out_channels_ch2_address0();
    void thread_out_channels_ch2_ce0();
    void thread_out_channels_ch2_d0();
    void thread_out_channels_ch2_we0();
    void thread_out_channels_ch3_address0();
    void thread_out_channels_ch3_ce0();
    void thread_out_channels_ch3_d0();
    void thread_out_channels_ch3_we0();
    void thread_p_phitmp2_fu_422_p3();
    void thread_p_phitmp3_fu_515_p3();
    void thread_p_phitmp_fu_355_p3();
    void thread_p_shl1_cast_fu_462_p1();
    void thread_p_shl1_fu_455_p3();
    void thread_p_shl2_cast_fu_235_p3();
    void thread_p_shl3_cast_fu_247_p3();
    void thread_p_shl_cast_fu_451_p1();
    void thread_p_shl_fu_444_p3();
    void thread_phitmp2_fu_412_p4();
    void thread_phitmp3_fu_505_p4();
    void thread_phitmp_fu_346_p4();
    void thread_tmp1_cast_fu_380_p1();
    void thread_tmp2_cast_fu_471_p1();
    void thread_tmp2_fu_466_p2();
    void thread_tmp_10_fu_339_p3();
    void thread_tmp_11_fu_363_p2();
    void thread_tmp_13_fu_315_p1();
    void thread_tmp_13_fu_315_p2();
    void thread_tmp_14_fu_383_p2();
    void thread_tmp_15_fu_388_p4();
    void thread_tmp_16_fu_404_p3();
    void thread_tmp_17_fu_430_p2();
    void thread_tmp_18_fu_475_p2();
    void thread_tmp_19_fu_481_p4();
    void thread_tmp_20_fu_497_p3();
    void thread_tmp_21_cast_fu_291_p1();
    void thread_tmp_21_fu_523_p2();
    void thread_tmp_5_fu_243_p1();
    void thread_tmp_6_fu_286_p2();
    void thread_tmp_8_fu_324_p4();
    void thread_tmp_cast_fu_282_p1();
    void thread_tmp_fu_231_p1();
    void thread_tmp_s_fu_255_p2();
    void thread_x_1_fu_225_p2();
    void thread_y_1_fu_276_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
