-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity instrumentation_wrapper_move_ap_uint_8_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    finnox_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    finnox_TVALID : IN STD_LOGIC;
    finnox_TREADY : OUT STD_LOGIC;
    finnox0_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    finnox0_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    finnox0_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    finnox0_full_n : IN STD_LOGIC;
    finnox0_write : OUT STD_LOGIC );
end;


architecture behav of instrumentation_wrapper_move_ap_uint_8_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal finnox_TDATA_blk_n : STD_LOGIC;
    signal finnox0_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal regslice_both_finnox_U_apdone_blk : STD_LOGIC;
    signal finnox_TDATA_int_regslice : STD_LOGIC_VECTOR (7 downto 0);
    signal finnox_TVALID_int_regslice : STD_LOGIC;
    signal finnox_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_finnox_U_ack_in : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component instrumentation_wrapper_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_finnox_U : component instrumentation_wrapper_regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => finnox_TDATA,
        vld_in => finnox_TVALID,
        ack_in => regslice_both_finnox_U_ack_in,
        data_out => finnox_TDATA_int_regslice,
        vld_out => finnox_TVALID_int_regslice,
        ack_out => finnox_TREADY_int_regslice,
        apdone_blk => regslice_both_finnox_U_apdone_blk);





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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (finnox_TVALID_int_regslice = ap_const_logic_0) or (finnox0_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, finnox0_full_n, finnox_TVALID_int_regslice)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, finnox0_full_n, finnox_TVALID_int_regslice)
    begin
        if (((ap_start = ap_const_logic_0) or (finnox_TVALID_int_regslice = ap_const_logic_0) or (finnox0_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, finnox0_full_n, finnox_TVALID_int_regslice)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (finnox_TVALID_int_regslice = ap_const_logic_0) or (finnox0_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, finnox0_full_n, finnox_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (finnox_TVALID_int_regslice = ap_const_logic_0) or (finnox0_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_ready_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, finnox0_full_n, finnox_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (finnox_TVALID_int_regslice = ap_const_logic_0) or (finnox0_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    finnox0_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, finnox0_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            finnox0_blk_n <= finnox0_full_n;
        else 
            finnox0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    finnox0_din <= finnox_TDATA_int_regslice;

    finnox0_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, finnox0_full_n, finnox_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (finnox_TVALID_int_regslice = ap_const_logic_0) or (finnox0_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            finnox0_write <= ap_const_logic_1;
        else 
            finnox0_write <= ap_const_logic_0;
        end if; 
    end process;


    finnox_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, finnox_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            finnox_TDATA_blk_n <= finnox_TVALID_int_regslice;
        else 
            finnox_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    finnox_TREADY <= regslice_both_finnox_U_ack_in;

    finnox_TREADY_int_regslice_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, finnox0_full_n, finnox_TVALID_int_regslice)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (finnox_TVALID_int_regslice = ap_const_logic_0) or (finnox0_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            finnox_TREADY_int_regslice <= ap_const_logic_1;
        else 
            finnox_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

end behav;
