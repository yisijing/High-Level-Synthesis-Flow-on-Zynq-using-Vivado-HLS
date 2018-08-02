-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rgb2yuv is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_channels_ch1_address0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    in_channels_ch1_ce0 : OUT STD_LOGIC;
    in_channels_ch1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    in_channels_ch2_address0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    in_channels_ch2_ce0 : OUT STD_LOGIC;
    in_channels_ch2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    in_channels_ch3_address0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    in_channels_ch3_ce0 : OUT STD_LOGIC;
    in_channels_ch3_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    in_width_read : IN STD_LOGIC_VECTOR (15 downto 0);
    in_height_read : IN STD_LOGIC_VECTOR (15 downto 0);
    out_channels_ch1_address0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    out_channels_ch1_ce0 : OUT STD_LOGIC;
    out_channels_ch1_we0 : OUT STD_LOGIC;
    out_channels_ch1_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_channels_ch2_address0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    out_channels_ch2_ce0 : OUT STD_LOGIC;
    out_channels_ch2_we0 : OUT STD_LOGIC;
    out_channels_ch2_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_channels_ch3_address0 : OUT STD_LOGIC_VECTOR (21 downto 0);
    out_channels_ch3_ce0 : OUT STD_LOGIC;
    out_channels_ch3_we0 : OUT STD_LOGIC;
    out_channels_ch3_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of rgb2yuv is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv16_7A : STD_LOGIC_VECTOR (15 downto 0) := "0000000001111010";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv9_80 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv16_FFB6 : STD_LOGIC_VECTOR (15 downto 0) := "1111111110110110";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv14_80 : STD_LOGIC_VECTOR (13 downto 0) := "00000010000000";
    constant ap_const_lv8_10 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_const_lv16_80 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv13_19 : STD_LOGIC_VECTOR (12 downto 0) := "0000000011001";
    constant ap_const_lv15_7FDA : STD_LOGIC_VECTOR (14 downto 0) := "111111111011010";
    constant ap_const_lv16_FFA2 : STD_LOGIC_VECTOR (15 downto 0) := "1111111110100010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal x_2_fu_219_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal x_2_reg_561 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_22_fu_249_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_22_reg_566 : STD_LOGIC_VECTOR (22 downto 0);
    signal exitcond1_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_2_fu_270_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal y_2_reg_574 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_24_cast_fu_285_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_24_cast_reg_579 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond_fu_265_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal R_reg_601 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal G_reg_608 : STD_LOGIC_VECTOR (7 downto 0);
    signal B_reg_615 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_33_fu_296_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_33_reg_623 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_27_reg_628 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_30_fu_424_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_30_reg_633 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_530_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp5_reg_638 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_37_reg_643 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal x_reg_192 : STD_LOGIC_VECTOR (15 downto 0);
    signal y_reg_203 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_fu_225_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_21_fu_237_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl_cast_fu_229_p3 : STD_LOGIC_VECTOR (22 downto 0);
    signal p_shl7_cast_fu_241_p3 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_cast_fu_276_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_24_fu_280_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_33_fu_296_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl5_fu_305_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl6_fu_316_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl4_fu_333_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl6_cast_fu_323_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl5_cast_fu_312_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp2_fu_347_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp2_cast_fu_353_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl4_cast_fu_340_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_35_cast2_fu_330_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp4_fu_363_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_521_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp3_cast_fu_373_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp1_fu_357_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_26_fu_376_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_29_fu_392_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_35_cast1_fu_327_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl2_fu_398_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl3_fu_409_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl2_cast_fu_405_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl3_cast_fu_420_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl3_cast9_fu_416_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_neg_fu_430_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_shl1_fu_440_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_neg_cast_fu_436_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl1_cast_fu_447_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_35_fu_451_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp8_fu_457_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp8_cast_fu_463_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_538_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_36_fu_467_p2 : STD_LOGIC_VECTOR (15 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of tmp_36_fu_467_p2 : signal is "no";
    signal tmp6_fu_488_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_31_fu_493_p2 : STD_LOGIC_VECTOR (15 downto 0);
    attribute use_dsp48 of tmp_31_fu_493_p2 : signal is "no";
    signal tmp_32_fu_498_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_521_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_521_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_521_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_530_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_530_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_530_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_538_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_538_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_521_p00 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_fu_521_p20 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_fu_530_p00 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_33_fu_296_p00 : STD_LOGIC_VECTOR (15 downto 0);

    component yuv_filter_mac_mubkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        din2 : IN STD_LOGIC_VECTOR (8 downto 0);
        dout : OUT STD_LOGIC_VECTOR (12 downto 0) );
    end component;


    component yuv_filter_mac_mucud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (6 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component yuv_filter_mac_mudEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    yuv_filter_mac_mubkb_U1 : component yuv_filter_mac_mubkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 6,
        din2_WIDTH => 9,
        dout_WIDTH => 13)
    port map (
        din0 => grp_fu_521_p0,
        din1 => grp_fu_521_p1,
        din2 => grp_fu_521_p2,
        dout => grp_fu_521_p3);

    yuv_filter_mac_mucud_U2 : component yuv_filter_mac_mucud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 7,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => grp_fu_530_p0,
        din1 => grp_fu_530_p1,
        din2 => grp_fu_530_p2,
        dout => grp_fu_530_p3);

    yuv_filter_mac_mudEe_U3 : component yuv_filter_mac_mudEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => grp_fu_538_p0,
        din1 => grp_fu_538_p1,
        din2 => tmp_33_reg_623,
        dout => grp_fu_538_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    x_reg_192_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_265_p2 = ap_const_lv1_1))) then 
                x_reg_192 <= x_2_reg_561;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                x_reg_192 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;

    y_reg_203_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                y_reg_203 <= y_2_reg_574;
            elsif (((exitcond1_fu_214_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                y_reg_203 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                B_reg_615 <= in_channels_ch3_q0;
                G_reg_608 <= in_channels_ch2_q0;
                R_reg_601 <= in_channels_ch1_q0;
                    tmp_33_reg_623(15 downto 1) <= tmp_33_fu_296_p2(15 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                tmp5_reg_638 <= grp_fu_530_p3;
                tmp_27_reg_628 <= tmp_26_fu_376_p2(15 downto 8);
                    tmp_30_reg_633(15 downto 4) <= tmp_30_fu_424_p2(15 downto 4);
                tmp_37_reg_643 <= tmp_36_fu_467_p2(15 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_214_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp_22_reg_566(22 downto 8) <= tmp_22_fu_249_p2(22 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_265_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    tmp_24_cast_reg_579(22 downto 0) <= tmp_24_cast_fu_285_p1(22 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                x_2_reg_561 <= x_2_fu_219_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                y_2_reg_574 <= y_2_fu_270_p2;
            end if;
        end if;
    end process;
    tmp_22_reg_566(7 downto 0) <= "00000000";
    tmp_24_cast_reg_579(63 downto 23) <= "00000000000000000000000000000000000000000";
    tmp_33_reg_623(0) <= '0';
    tmp_30_reg_633(3 downto 0) <= "0000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_214_p2, ap_CS_fsm_state3, exitcond_fu_265_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond1_fu_214_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_265_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_214_p2)
    begin
        if ((((exitcond1_fu_214_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_214_p2)
    begin
        if (((exitcond1_fu_214_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return_0 <= in_width_read;
    ap_return_1 <= in_height_read;
    exitcond1_fu_214_p2 <= "1" when (x_reg_192 = in_width_read) else "0";
    exitcond_fu_265_p2 <= "1" when (y_reg_203 = in_height_read) else "0";
    grp_fu_521_p0 <= grp_fu_521_p00(8 - 1 downto 0);
    grp_fu_521_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(B_reg_615),13));
    grp_fu_521_p1 <= ap_const_lv13_19(6 - 1 downto 0);
    grp_fu_521_p2 <= grp_fu_521_p20(9 - 1 downto 0);
    grp_fu_521_p20 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp4_fu_363_p2),13));
    grp_fu_530_p0 <= grp_fu_530_p00(8 - 1 downto 0);
    grp_fu_530_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(R_reg_601),15));
    grp_fu_530_p1 <= ap_const_lv15_7FDA(7 - 1 downto 0);
    grp_fu_530_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed('0' &tmp_29_fu_392_p0) * signed(ap_const_lv16_FFB6))), 16));
    grp_fu_538_p0 <= tmp_35_cast1_fu_327_p1(8 - 1 downto 0);
    grp_fu_538_p1 <= ap_const_lv16_FFA2(8 - 1 downto 0);
    in_channels_ch1_address0 <= tmp_24_cast_fu_285_p1(22 - 1 downto 0);

    in_channels_ch1_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            in_channels_ch1_ce0 <= ap_const_logic_1;
        else 
            in_channels_ch1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    in_channels_ch2_address0 <= tmp_24_cast_fu_285_p1(22 - 1 downto 0);

    in_channels_ch2_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            in_channels_ch2_ce0 <= ap_const_logic_1;
        else 
            in_channels_ch2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    in_channels_ch3_address0 <= tmp_24_cast_fu_285_p1(22 - 1 downto 0);

    in_channels_ch3_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            in_channels_ch3_ce0 <= ap_const_logic_1;
        else 
            in_channels_ch3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_channels_ch1_address0 <= tmp_24_cast_reg_579(22 - 1 downto 0);

    out_channels_ch1_ce0_assign_proc : process(ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            out_channels_ch1_ce0 <= ap_const_logic_1;
        else 
            out_channels_ch1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_channels_ch1_d0 <= std_logic_vector(unsigned(tmp_27_reg_628) + unsigned(ap_const_lv8_10));

    out_channels_ch1_we0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            out_channels_ch1_we0 <= ap_const_logic_1;
        else 
            out_channels_ch1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    out_channels_ch2_address0 <= tmp_24_cast_reg_579(22 - 1 downto 0);

    out_channels_ch2_ce0_assign_proc : process(ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            out_channels_ch2_ce0 <= ap_const_logic_1;
        else 
            out_channels_ch2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_channels_ch2_d0 <= (tmp_32_fu_498_p4 xor ap_const_lv8_80);

    out_channels_ch2_we0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            out_channels_ch2_we0 <= ap_const_logic_1;
        else 
            out_channels_ch2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    out_channels_ch3_address0 <= tmp_24_cast_reg_579(22 - 1 downto 0);

    out_channels_ch3_ce0_assign_proc : process(ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            out_channels_ch3_ce0 <= ap_const_logic_1;
        else 
            out_channels_ch3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_channels_ch3_d0 <= (tmp_37_reg_643 xor ap_const_lv8_80);

    out_channels_ch3_we0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            out_channels_ch3_we0 <= ap_const_logic_1;
        else 
            out_channels_ch3_we0 <= ap_const_logic_0;
        end if; 
    end process;

        p_neg_cast_fu_436_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_neg_fu_430_p2),14));

    p_neg_fu_430_p2 <= std_logic_vector(unsigned(ap_const_lv13_0) - unsigned(p_shl3_cast9_fu_416_p1));
    p_shl1_cast_fu_447_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl1_fu_440_p3),14));
    p_shl1_fu_440_p3 <= (B_reg_615 & ap_const_lv1_0);
    p_shl2_cast_fu_405_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl2_fu_398_p3),16));
    p_shl2_fu_398_p3 <= (B_reg_615 & ap_const_lv7_0);
    p_shl3_cast9_fu_416_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl3_fu_409_p3),13));
    p_shl3_cast_fu_420_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl3_fu_409_p3),16));
    p_shl3_fu_409_p3 <= (B_reg_615 & ap_const_lv4_0);
    p_shl4_cast_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl4_fu_333_p3),16));
    p_shl4_fu_333_p3 <= (G_reg_608 & ap_const_lv7_0);
    p_shl5_cast_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl5_fu_305_p3),15));
    p_shl5_fu_305_p3 <= (R_reg_601 & ap_const_lv6_0);
    p_shl6_cast_fu_323_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl6_fu_316_p3),15));
    p_shl6_fu_316_p3 <= (R_reg_601 & ap_const_lv1_0);
    p_shl7_cast_fu_241_p3 <= (tmp_21_fu_237_p1 & ap_const_lv8_0);
    p_shl_cast_fu_229_p3 <= (tmp_fu_225_p1 & ap_const_lv10_0);
    tmp1_fu_357_p2 <= std_logic_vector(unsigned(tmp2_cast_fu_353_p1) + unsigned(p_shl4_cast_fu_340_p1));
    tmp2_cast_fu_353_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp2_fu_347_p2),16));
    tmp2_fu_347_p2 <= std_logic_vector(unsigned(p_shl6_cast_fu_323_p1) + unsigned(p_shl5_cast_fu_312_p1));
    tmp3_cast_fu_373_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_521_p3),16));
    tmp4_fu_363_p2 <= std_logic_vector(unsigned(tmp_35_cast2_fu_330_p1) + unsigned(ap_const_lv9_80));
    tmp6_fu_488_p2 <= std_logic_vector(unsigned(tmp_30_reg_633) + unsigned(ap_const_lv16_80));
        tmp8_cast_fu_463_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp8_fu_457_p2),16));

    tmp8_fu_457_p2 <= std_logic_vector(unsigned(tmp_35_fu_451_p2) + unsigned(ap_const_lv14_80));
    tmp_21_fu_237_p1 <= x_reg_192(15 - 1 downto 0);
    tmp_22_fu_249_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_229_p3) + unsigned(p_shl7_cast_fu_241_p3));
    tmp_24_cast_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_24_fu_280_p2),64));
    tmp_24_fu_280_p2 <= std_logic_vector(unsigned(tmp_cast_fu_276_p1) + unsigned(tmp_22_reg_566));
    tmp_26_fu_376_p2 <= std_logic_vector(unsigned(tmp3_cast_fu_373_p1) + unsigned(tmp1_fu_357_p2));
    tmp_29_fu_392_p0 <= tmp_35_cast1_fu_327_p1(8 - 1 downto 0);
    tmp_30_fu_424_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_405_p1) - unsigned(p_shl3_cast_fu_420_p1));
    tmp_31_fu_493_p2 <= std_logic_vector(unsigned(tmp6_fu_488_p2) + unsigned(tmp5_reg_638));
    tmp_32_fu_498_p4 <= tmp_31_fu_493_p2(15 downto 8);
    tmp_33_fu_296_p0 <= tmp_33_fu_296_p00(8 - 1 downto 0);
    tmp_33_fu_296_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(in_channels_ch1_q0),16));
    tmp_33_fu_296_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_33_fu_296_p0) * unsigned(ap_const_lv16_7A), 16));
    tmp_35_cast1_fu_327_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(G_reg_608),16));
    tmp_35_cast2_fu_330_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(G_reg_608),9));
    tmp_35_fu_451_p2 <= std_logic_vector(signed(p_neg_cast_fu_436_p1) - signed(p_shl1_cast_fu_447_p1));
    tmp_36_fu_467_p2 <= std_logic_vector(signed(tmp8_cast_fu_463_p1) + signed(grp_fu_538_p3));
    tmp_cast_fu_276_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_reg_203),23));
    tmp_fu_225_p1 <= x_reg_192(13 - 1 downto 0);
    x_2_fu_219_p2 <= std_logic_vector(unsigned(x_reg_192) + unsigned(ap_const_lv16_1));
    y_2_fu_270_p2 <= std_logic_vector(unsigned(y_reg_203) + unsigned(ap_const_lv16_1));
end behav;
