-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity strm_words2bytes is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bytes_out_V_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    bytes_out_V_TVALID : OUT STD_LOGIC;
    bytes_out_V_TREADY : IN STD_LOGIC;
    words_in_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    words_in_V_empty_n : IN STD_LOGIC;
    words_in_V_read : OUT STD_LOGIC;
    bytes_out_len_loc_dout : IN STD_LOGIC_VECTOR (13 downto 0);
    bytes_out_len_loc_empty_n : IN STD_LOGIC;
    bytes_out_len_loc_read : OUT STD_LOGIC );
end;


architecture behav of strm_words2bytes is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal bytes_out_V_1_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal bytes_out_V_1_vld_in : STD_LOGIC;
    signal bytes_out_V_1_vld_out : STD_LOGIC;
    signal bytes_out_V_1_ack_in : STD_LOGIC;
    signal bytes_out_V_1_ack_out : STD_LOGIC;
    signal bytes_out_V_1_payload_A : STD_LOGIC_VECTOR (7 downto 0);
    signal bytes_out_V_1_payload_B : STD_LOGIC_VECTOR (7 downto 0);
    signal bytes_out_V_1_sel_rd : STD_LOGIC := '0';
    signal bytes_out_V_1_sel_wr : STD_LOGIC := '0';
    signal bytes_out_V_1_sel : STD_LOGIC;
    signal bytes_out_V_1_load_A : STD_LOGIC;
    signal bytes_out_V_1_load_B : STD_LOGIC;
    signal bytes_out_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal bytes_out_V_1_state_cmp_full : STD_LOGIC;
    signal bytes_out_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond_i_i_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal words_in_V_blk_n : STD_LOGIC;
    signal tmp_2_i_i_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bytes_out_len_loc_blk_n : STD_LOGIC;
    signal tmp_cast_i_i_fu_124_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_cast_i_i_reg_187 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal i_fu_149_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_reg_195 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_predicate_op25_read_state2 : BOOLEAN;
    signal ap_block_state2 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal tmpbyte_fu_161_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_i_i_reg_103 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_0_1_i_i_phi_fu_117_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_cast_i_i_fu_131_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_i_i_fu_80 : STD_LOGIC_VECTOR (23 downto 0);
    signal i_cast_i_i_fu_140_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_fu_136_p1 : STD_LOGIC_VECTOR (1 downto 0);
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))) and (ap_const_lv1_1 = exitcond_i_i_fu_144_p2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    bytes_out_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                bytes_out_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = bytes_out_V_1_ack_out) and (ap_const_logic_1 = bytes_out_V_1_vld_out))) then 
                                        bytes_out_V_1_sel_rd <= not(bytes_out_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    bytes_out_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                bytes_out_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = bytes_out_V_1_vld_in) and (ap_const_logic_1 = bytes_out_V_1_ack_in))) then 
                                        bytes_out_V_1_sel_wr <= not(bytes_out_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    bytes_out_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                bytes_out_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = bytes_out_V_1_vld_in) and (ap_const_logic_1 = bytes_out_V_1_ack_out) and (bytes_out_V_1_state = ap_const_lv2_3)) or ((ap_const_logic_0 = bytes_out_V_1_vld_in) and (bytes_out_V_1_state = ap_const_lv2_2)))) then 
                    bytes_out_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = bytes_out_V_1_vld_in) and (ap_const_logic_0 = bytes_out_V_1_ack_out) and (bytes_out_V_1_state = ap_const_lv2_3)) or ((ap_const_logic_0 = bytes_out_V_1_ack_out) and (bytes_out_V_1_state = ap_const_lv2_1)))) then 
                    bytes_out_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = bytes_out_V_1_vld_in) and (bytes_out_V_1_state = ap_const_lv2_2)) or ((ap_const_logic_1 = bytes_out_V_1_ack_out) and (bytes_out_V_1_state = ap_const_lv2_1)) or ((bytes_out_V_1_state = ap_const_lv2_3) and not(((ap_const_logic_1 = bytes_out_V_1_vld_in) and (ap_const_logic_0 = bytes_out_V_1_ack_out))) and not(((ap_const_logic_0 = bytes_out_V_1_vld_in) and (ap_const_logic_1 = bytes_out_V_1_ack_out)))))) then 
                    bytes_out_V_1_state <= ap_const_lv2_3;
                else 
                    bytes_out_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    i_i_i_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (bytes_out_V_1_ack_in = ap_const_logic_1))) then 
                i_i_i_reg_103 <= i_reg_195;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = bytes_out_len_loc_empty_n))))) then 
                i_i_i_reg_103 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = bytes_out_V_1_load_A)) then
                bytes_out_V_1_payload_A <= tmpbyte_fu_161_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = bytes_out_V_1_load_B)) then
                bytes_out_V_1_payload_B <= tmpbyte_fu_161_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))))) then
                i_reg_195 <= i_fu_149_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond_i_i_fu_144_p2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))))) then
                p_0_i_i_fu_80 <= p_0_1_i_i_phi_fu_117_p4(31 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = bytes_out_len_loc_empty_n))))) then
                    tmp_cast_i_i_reg_187(13 downto 0) <= tmp_cast_i_i_fu_124_p1(13 downto 0);
            end if;
        end if;
    end process;
    tmp_cast_i_i_reg_187(16 downto 14) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, bytes_out_V_1_ack_in, words_in_V_empty_n, bytes_out_len_loc_empty_n, ap_CS_fsm_state2, exitcond_i_i_fu_144_p2, ap_CS_fsm_state3, ap_predicate_op25_read_state2, ap_block_state2_io)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = bytes_out_len_loc_empty_n))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))) and (ap_const_lv1_1 = exitcond_i_i_fu_144_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond_i_i_fu_144_p2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (bytes_out_V_1_ack_in = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, bytes_out_len_loc_empty_n)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = bytes_out_len_loc_empty_n));
    end process;


    ap_block_state2_assign_proc : process(bytes_out_V_1_ack_in, words_in_V_empty_n, ap_predicate_op25_read_state2)
    begin
                ap_block_state2 <= (((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in));
    end process;


    ap_block_state2_io_assign_proc : process(bytes_out_V_1_ack_in, exitcond_i_i_fu_144_p2)
    begin
                ap_block_state2_io <= ((ap_const_lv1_0 = exitcond_i_i_fu_144_p2) and (ap_const_logic_0 = bytes_out_V_1_ack_in));
    end process;


    ap_done_assign_proc : process(ap_done_reg, bytes_out_V_1_ack_in, words_in_V_empty_n, ap_CS_fsm_state2, exitcond_i_i_fu_144_p2, ap_predicate_op25_read_state2, ap_block_state2_io)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))) and (ap_const_lv1_1 = exitcond_i_i_fu_144_p2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_predicate_op25_read_state2_assign_proc : process(exitcond_i_i_fu_144_p2, tmp_2_i_i_fu_155_p2)
    begin
                ap_predicate_op25_read_state2 <= ((ap_const_lv1_0 = exitcond_i_i_fu_144_p2) and (ap_const_lv1_1 = tmp_2_i_i_fu_155_p2));
    end process;


    ap_ready_assign_proc : process(bytes_out_V_1_ack_in, words_in_V_empty_n, ap_CS_fsm_state2, exitcond_i_i_fu_144_p2, ap_predicate_op25_read_state2, ap_block_state2_io)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))) and (ap_const_lv1_1 = exitcond_i_i_fu_144_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bytes_out_V_1_ack_in <= bytes_out_V_1_state(1);
    bytes_out_V_1_ack_out <= bytes_out_V_TREADY;

    bytes_out_V_1_data_out_assign_proc : process(bytes_out_V_1_payload_A, bytes_out_V_1_payload_B, bytes_out_V_1_sel)
    begin
        if ((ap_const_logic_1 = bytes_out_V_1_sel)) then 
            bytes_out_V_1_data_out <= bytes_out_V_1_payload_B;
        else 
            bytes_out_V_1_data_out <= bytes_out_V_1_payload_A;
        end if; 
    end process;

    bytes_out_V_1_load_A <= (bytes_out_V_1_state_cmp_full and not(bytes_out_V_1_sel_wr));
    bytes_out_V_1_load_B <= (bytes_out_V_1_sel_wr and bytes_out_V_1_state_cmp_full);
    bytes_out_V_1_sel <= bytes_out_V_1_sel_rd;
    bytes_out_V_1_state_cmp_full <= '0' when (bytes_out_V_1_state = ap_const_lv2_1) else '1';

    bytes_out_V_1_vld_in_assign_proc : process(bytes_out_V_1_ack_in, words_in_V_empty_n, ap_CS_fsm_state2, exitcond_i_i_fu_144_p2, ap_predicate_op25_read_state2, ap_block_state2_io)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond_i_i_fu_144_p2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))))) then 
            bytes_out_V_1_vld_in <= ap_const_logic_1;
        else 
            bytes_out_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    bytes_out_V_1_vld_out <= bytes_out_V_1_state(0);
    bytes_out_V_TDATA <= bytes_out_V_1_data_out;

    bytes_out_V_TDATA_blk_n_assign_proc : process(bytes_out_V_1_state, ap_CS_fsm_state2, exitcond_i_i_fu_144_p2, ap_CS_fsm_state3)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond_i_i_fu_144_p2)) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            bytes_out_V_TDATA_blk_n <= bytes_out_V_1_state(1);
        else 
            bytes_out_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    bytes_out_V_TVALID <= bytes_out_V_1_state(0);

    bytes_out_len_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, bytes_out_len_loc_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            bytes_out_len_loc_blk_n <= bytes_out_len_loc_empty_n;
        else 
            bytes_out_len_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    bytes_out_len_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, bytes_out_len_loc_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = bytes_out_len_loc_empty_n))))) then 
            bytes_out_len_loc_read <= ap_const_logic_1;
        else 
            bytes_out_len_loc_read <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_i_i_fu_144_p2 <= "1" when (i_cast_i_i_fu_140_p1 = tmp_cast_i_i_reg_187) else "0";
    i_cast_i_i_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_i_i_reg_103),17));
    i_fu_149_p2 <= std_logic_vector(unsigned(ap_const_lv16_1) + unsigned(i_i_i_reg_103));

    p_0_1_i_i_phi_fu_117_p4_assign_proc : process(words_in_V_dout, ap_CS_fsm_state2, exitcond_i_i_fu_144_p2, tmp_2_i_i_fu_155_p2, p_0_cast_i_i_fu_131_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond_i_i_fu_144_p2))) then
            if ((ap_const_lv1_0 = tmp_2_i_i_fu_155_p2)) then 
                p_0_1_i_i_phi_fu_117_p4 <= p_0_cast_i_i_fu_131_p1;
            elsif ((ap_const_lv1_1 = tmp_2_i_i_fu_155_p2)) then 
                p_0_1_i_i_phi_fu_117_p4 <= words_in_V_dout;
            else 
                p_0_1_i_i_phi_fu_117_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            p_0_1_i_i_phi_fu_117_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    p_0_cast_i_i_fu_131_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_0_i_i_fu_80),32));
    tmp_2_i_i_fu_155_p2 <= "1" when (tmp_fu_136_p1 = ap_const_lv2_0) else "0";
    tmp_cast_i_i_fu_124_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bytes_out_len_loc_dout),17));
    tmp_fu_136_p1 <= i_i_i_reg_103(2 - 1 downto 0);
    tmpbyte_fu_161_p1 <= p_0_1_i_i_phi_fu_117_p4(8 - 1 downto 0);

    words_in_V_blk_n_assign_proc : process(words_in_V_empty_n, ap_CS_fsm_state2, exitcond_i_i_fu_144_p2, tmp_2_i_i_fu_155_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond_i_i_fu_144_p2) and (ap_const_lv1_1 = tmp_2_i_i_fu_155_p2))) then 
            words_in_V_blk_n <= words_in_V_empty_n;
        else 
            words_in_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    words_in_V_read_assign_proc : process(bytes_out_V_1_ack_in, words_in_V_empty_n, ap_CS_fsm_state2, ap_predicate_op25_read_state2, ap_block_state2_io)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_1 = ap_predicate_op25_read_state2) and not((((ap_const_logic_0 = words_in_V_empty_n) and (ap_const_boolean_1 = ap_predicate_op25_read_state2)) or (ap_const_logic_0 = bytes_out_V_1_ack_in) or (ap_const_boolean_1 = ap_block_state2_io))))) then 
            words_in_V_read <= ap_const_logic_1;
        else 
            words_in_V_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;