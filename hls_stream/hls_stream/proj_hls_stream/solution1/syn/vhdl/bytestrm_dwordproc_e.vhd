-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bytestrm_dwordproc_e is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    strm_len : IN STD_LOGIC_VECTOR (15 downto 0);
    strm_len_out_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    strm_len_out_full_n : IN STD_LOGIC;
    strm_len_out_write : OUT STD_LOGIC;
    strm_len_out1_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    strm_len_out1_full_n : IN STD_LOGIC;
    strm_len_out1_write : OUT STD_LOGIC );
end;


architecture behav of bytestrm_dwordproc_e is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal strm_len_out_blk_n : STD_LOGIC;
    signal strm_len_out1_blk_n : STD_LOGIC;
    signal ap_condition_56 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


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
                elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_56 = ap_const_boolean_1)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = real_start)) then 
                    start_once_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_condition_56)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);

    ap_condition_56_assign_proc : process(real_start, ap_done_reg, strm_len_out_full_n, strm_len_out1_full_n)
    begin
                ap_condition_56 <= ((strm_len_out_full_n = ap_const_logic_0) or (strm_len_out1_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state1, ap_condition_56)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_56 = ap_const_boolean_1))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = real_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state1, ap_condition_56)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_56 = ap_const_boolean_1)))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n)
    begin
        if ((ap_const_logic_0 = start_full_n)) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, internal_ap_ready, start_once_reg)
    begin
        if (((ap_const_logic_1 = real_start) and ((ap_const_logic_1 = internal_ap_ready) or (ap_const_logic_0 = start_once_reg)))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;


    strm_len_out1_blk_n_assign_proc : process(ap_CS_fsm_state1, strm_len_out1_full_n)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            strm_len_out1_blk_n <= strm_len_out1_full_n;
        else 
            strm_len_out1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    strm_len_out1_din <= strm_len;

    strm_len_out1_write_assign_proc : process(ap_CS_fsm_state1, ap_condition_56)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_56 = ap_const_boolean_1)))) then 
            strm_len_out1_write <= ap_const_logic_1;
        else 
            strm_len_out1_write <= ap_const_logic_0;
        end if; 
    end process;


    strm_len_out_blk_n_assign_proc : process(ap_CS_fsm_state1, strm_len_out_full_n)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            strm_len_out_blk_n <= strm_len_out_full_n;
        else 
            strm_len_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    strm_len_out_din <= strm_len;

    strm_len_out_write_assign_proc : process(ap_CS_fsm_state1, ap_condition_56)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_condition_56 = ap_const_boolean_1)))) then 
            strm_len_out_write <= ap_const_logic_1;
        else 
            strm_len_out_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
