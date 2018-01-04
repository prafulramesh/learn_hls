-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decimate_strm is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    strm_out_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    strm_out_V_full_n : IN STD_LOGIC;
    strm_out_V_write : OUT STD_LOGIC;
    strm_in_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    strm_in_V_empty_n : IN STD_LOGIC;
    strm_in_V_read : OUT STD_LOGIC;
    strm_len : IN STD_LOGIC_VECTOR (13 downto 0) );
end;


architecture behav of decimate_strm is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv34_0 : STD_LOGIC_VECTOR (33 downto 0) := "0000000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal strm_out_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal tmp_5_i_reg_253 : STD_LOGIC_VECTOR (0 downto 0);
    signal strm_in_V_blk_n : STD_LOGIC;
    signal exitcond_flatten_reg_239 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_117 : STD_LOGIC_VECTOR (13 downto 0);
    signal j_i_reg_128 : STD_LOGIC_VECTOR (2 downto 0);
    signal acc_i_reg_139 : STD_LOGIC_VECTOR (33 downto 0);
    signal tmp_8_fu_161_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_8_reg_234 : STD_LOGIC_VECTOR (13 downto 0);
    signal exitcond_flatten_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_74 : BOOLEAN;
    signal indvar_flatten_next_fu_174_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_3_i3_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_i3_reg_248 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_i_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_200_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal acc_fu_217_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal tmp_7_fu_151_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal j_i_mid2_fu_186_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_4_cast_i_fu_213_p1 : STD_LOGIC_VECTOR (33 downto 0);
    signal acc_i_mid2_fu_206_p3 : STD_LOGIC_VECTOR (33 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_lv1_1 = ap_CS_fsm_state4))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and not((ap_const_lv1_0 = exitcond_flatten_fu_169_p2)))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and (ap_const_lv1_0 = exitcond_flatten_fu_169_p2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_1;
                elsif ((((ap_CS_fsm_state1 = ap_const_lv1_1) and not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1)))) or ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and not((ap_const_lv1_0 = exitcond_flatten_fu_169_p2))))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    acc_i_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = exitcond_flatten_reg_239) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))))) then 
                acc_i_reg_139 <= acc_fu_217_p2;
            elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))))) then 
                acc_i_reg_139 <= ap_const_lv34_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = exitcond_flatten_fu_169_p2))) then 
                indvar_flatten_reg_117 <= indvar_flatten_next_fu_174_p2;
            elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))))) then 
                indvar_flatten_reg_117 <= ap_const_lv14_0;
            end if; 
        end if;
    end process;

    j_i_reg_128_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = exitcond_flatten_fu_169_p2))) then 
                j_i_reg_128 <= j_fu_200_p2;
            elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))))) then 
                j_i_reg_128 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))))) then
                exitcond_flatten_reg_239 <= exitcond_flatten_fu_169_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and (ap_const_lv1_0 = exitcond_flatten_fu_169_p2))) then
                tmp_3_i3_reg_248 <= tmp_3_i3_fu_180_p2;
                tmp_5_i_reg_253 <= tmp_5_i_fu_194_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))))) then
                    tmp_8_reg_234(13 downto 2) <= tmp_8_fu_161_p3(13 downto 2);
            end if;
        end if;
    end process;
    tmp_8_reg_234(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_enable_reg_pp0_iter1, exitcond_flatten_fu_169_p2, ap_condition_74, ap_enable_reg_pp0_iter0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and not((ap_const_lv1_0 = exitcond_flatten_fu_169_p2))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and not((ap_const_lv1_0 = exitcond_flatten_fu_169_p2)))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    acc_fu_217_p2 <= std_logic_vector(signed(tmp_4_cast_i_fu_213_p1) + signed(acc_i_mid2_fu_206_p3));
    acc_i_mid2_fu_206_p3 <= 
        ap_const_lv34_0 when (tmp_3_i3_reg_248(0) = '1') else 
        acc_i_reg_139;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1 downto 1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2 downto 2);

    ap_condition_74_assign_proc : process(strm_out_V_full_n, strm_in_V_empty_n, tmp_5_i_reg_253, exitcond_flatten_reg_239)
    begin
                ap_condition_74 <= (((ap_const_lv1_0 = exitcond_flatten_reg_239) and (strm_in_V_empty_n = ap_const_logic_0)) or (not((tmp_5_i_reg_253 = ap_const_lv1_0)) and (strm_out_V_full_n = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_lv1_1 = ap_CS_fsm_state4)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_flatten_fu_169_p2 <= "1" when (indvar_flatten_reg_117 = tmp_8_reg_234) else "0";
    indvar_flatten_next_fu_174_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_117) + unsigned(ap_const_lv14_1));
    j_fu_200_p2 <= std_logic_vector(unsigned(j_i_mid2_fu_186_p3) + unsigned(ap_const_lv3_1));
    j_i_mid2_fu_186_p3 <= 
        ap_const_lv3_0 when (tmp_3_i3_fu_180_p2(0) = '1') else 
        j_i_reg_128;

    strm_in_V_blk_n_assign_proc : process(strm_in_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_239)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = exitcond_flatten_reg_239))) then 
            strm_in_V_blk_n <= strm_in_V_empty_n;
        else 
            strm_in_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    strm_in_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_239, ap_condition_74)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_const_lv1_0 = exitcond_flatten_reg_239) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))))) then 
            strm_in_V_read <= ap_const_logic_1;
        else 
            strm_in_V_read <= ap_const_logic_0;
        end if; 
    end process;


    strm_out_V_blk_n_assign_proc : process(strm_out_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_5_i_reg_253)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and not((tmp_5_i_reg_253 = ap_const_lv1_0)))) then 
            strm_out_V_blk_n <= strm_out_V_full_n;
        else 
            strm_out_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    strm_out_V_din <= acc_fu_217_p2(33 downto 2);

    strm_out_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_5_i_reg_253, ap_condition_74)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and not((tmp_5_i_reg_253 = ap_const_lv1_0)) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_condition_74 = ap_const_boolean_1))))) then 
            strm_out_V_write <= ap_const_logic_1;
        else 
            strm_out_V_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_3_i3_fu_180_p2 <= "1" when (j_i_reg_128 = ap_const_lv3_4) else "0";
        tmp_4_cast_i_fu_213_p1 <= std_logic_vector(resize(signed(strm_in_V_dout),34));

    tmp_5_i_fu_194_p2 <= "1" when (j_i_mid2_fu_186_p3 = ap_const_lv3_3) else "0";
    tmp_7_fu_151_p4 <= strm_len(13 downto 2);
    tmp_8_fu_161_p3 <= (tmp_7_fu_151_p4 & ap_const_lv2_0);
end behav;
