-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity apint_arith is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    inA : IN STD_LOGIC_VECTOR (5 downto 0);
    inB : IN STD_LOGIC_VECTOR (11 downto 0);
    inC : IN STD_LOGIC_VECTOR (21 downto 0);
    inD : IN STD_LOGIC_VECTOR (32 downto 0);
    out1 : OUT STD_LOGIC_VECTOR (17 downto 0);
    out1_ap_vld : OUT STD_LOGIC;
    out2 : OUT STD_LOGIC_VECTOR (12 downto 0);
    out2_ap_vld : OUT STD_LOGIC;
    out3 : OUT STD_LOGIC_VECTOR (21 downto 0);
    out3_ap_vld : OUT STD_LOGIC;
    out4 : OUT STD_LOGIC_VECTOR (5 downto 0);
    out4_ap_vld : OUT STD_LOGIC );
end;


architecture behav of apint_arith is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "apint_arith,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.490000,HLS_SYN_LAT=36,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=761,HLS_SYN_LUT=602}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (36 downto 0) := "0000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (36 downto 0) := "0000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (36 downto 0) := "0000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (36 downto 0) := "0000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (36 downto 0) := "0000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (36 downto 0) := "0000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (36 downto 0) := "0000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (36 downto 0) := "0001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (36 downto 0) := "0010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (36 downto 0) := "0100000000000000000000000000000000000";
    constant ap_ST_fsm_state37 : STD_LOGIC_VECTOR (36 downto 0) := "1000000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (36 downto 0) := "0000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal grp_fu_136_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal grp_fu_124_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_CS_fsm_state37 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state37 : signal is "none";
    signal tmp_3_fu_107_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_4_fu_111_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_fu_94_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_94_ap_start : STD_LOGIC;
    signal grp_fu_94_ap_done : STD_LOGIC;
    signal grp_fu_124_ap_start : STD_LOGIC;
    signal grp_fu_124_ap_done : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (36 downto 0);

    component apint_arith_srem_bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (32 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (5 downto 0) );
    end component;


    component apint_arith_sdiv_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (21 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (21 downto 0) );
    end component;


    component apint_arith_mul_mdEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (11 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (17 downto 0) );
    end component;



begin
    apint_arith_srem_bkb_U1 : component apint_arith_srem_bkb
    generic map (
        ID => 1,
        NUM_STAGE => 37,
        din0_WIDTH => 33,
        din1_WIDTH => 6,
        dout_WIDTH => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_94_ap_start,
        done => grp_fu_94_ap_done,
        din0 => inD,
        din1 => inA,
        ce => ap_const_logic_1,
        dout => grp_fu_94_p2);

    apint_arith_sdiv_cud_U2 : component apint_arith_sdiv_cud
    generic map (
        ID => 1,
        NUM_STAGE => 26,
        din0_WIDTH => 22,
        din1_WIDTH => 6,
        dout_WIDTH => 22)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_124_ap_start,
        done => grp_fu_124_ap_done,
        din0 => inC,
        din1 => inA,
        ce => ap_const_logic_1,
        dout => grp_fu_124_p2);

    apint_arith_mul_mdEe_U3 : component apint_arith_mul_mdEe
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 12,
        din1_WIDTH => 6,
        dout_WIDTH => 18)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => inB,
        din1 => inA,
        ce => ap_const_logic_1,
        dout => grp_fu_136_p2);





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


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
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
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 => 
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 => 
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 => 
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 => 
                ap_NS_fsm <= ap_ST_fsm_state36;
            when ap_ST_fsm_state36 => 
                ap_NS_fsm <= ap_ST_fsm_state37;
            when ap_ST_fsm_state37 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state37 <= ap_CS_fsm(36);

    ap_done_assign_proc : process(ap_CS_fsm_state37)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state37)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state37)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state37)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_124_ap_start_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_124_ap_start <= ap_const_logic_1;
        else 
            grp_fu_124_ap_start <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_94_ap_start_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            grp_fu_94_ap_start <= ap_const_logic_1;
        else 
            grp_fu_94_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    out1 <= grp_fu_136_p2;

    out1_ap_vld_assign_proc : process(ap_CS_fsm_state14)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            out1_ap_vld <= ap_const_logic_1;
        else 
            out1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out2 <= std_logic_vector(signed(tmp_3_fu_107_p1) + signed(tmp_4_fu_111_p1));

    out2_ap_vld_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            out2_ap_vld <= ap_const_logic_1;
        else 
            out2_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out3 <= grp_fu_124_p2;

    out3_ap_vld_assign_proc : process(ap_CS_fsm_state37)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state37)) then 
            out3_ap_vld <= ap_const_logic_1;
        else 
            out3_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    out4 <= grp_fu_94_p2(6 - 1 downto 0);

    out4_ap_vld_assign_proc : process(ap_CS_fsm_state37)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state37)) then 
            out4_ap_vld <= ap_const_logic_1;
        else 
            out4_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

        tmp_3_fu_107_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(inB),13));

        tmp_4_fu_111_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(inA),13));

end behav;
