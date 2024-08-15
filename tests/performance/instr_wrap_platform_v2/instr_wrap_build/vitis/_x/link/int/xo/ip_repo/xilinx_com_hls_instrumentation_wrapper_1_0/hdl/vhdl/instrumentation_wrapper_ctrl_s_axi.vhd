-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Tool Version Limit: 2019.12
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity instrumentation_wrapper_ctrl_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 7;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    cfg                   :out  STD_LOGIC_VECTOR(31 downto 0);
    status_i              :out  STD_LOGIC_VECTOR(31 downto 0);
    status_o              :in   STD_LOGIC_VECTOR(31 downto 0);
    status_o_ap_vld       :in   STD_LOGIC;
    latency               :in   STD_LOGIC_VECTOR(31 downto 0);
    latency_ap_vld        :in   STD_LOGIC;
    interval              :in   STD_LOGIC_VECTOR(31 downto 0);
    interval_ap_vld       :in   STD_LOGIC;
    checksum              :in   STD_LOGIC_VECTOR(31 downto 0);
    checksum_ap_vld       :in   STD_LOGIC
);
end entity instrumentation_wrapper_ctrl_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : reserved
-- 0x04 : reserved
-- 0x08 : reserved
-- 0x0c : reserved
-- 0x10 : Data signal of cfg
--        bit 31~0 - cfg[31:0] (Read/Write)
-- 0x14 : reserved
-- 0x18 : Data signal of status_i
--        bit 31~0 - status_i[31:0] (Read/Write)
-- 0x1c : reserved
-- 0x20 : Data signal of status_o
--        bit 31~0 - status_o[31:0] (Read)
-- 0x24 : Control signal of status_o
--        bit 0  - status_o_ap_vld (Read/COR)
--        others - reserved
-- 0x28 : Data signal of latency
--        bit 31~0 - latency[31:0] (Read)
-- 0x2c : Control signal of latency
--        bit 0  - latency_ap_vld (Read/COR)
--        others - reserved
-- 0x38 : Data signal of interval
--        bit 31~0 - interval[31:0] (Read)
-- 0x3c : Control signal of interval
--        bit 0  - interval_ap_vld (Read/COR)
--        others - reserved
-- 0x48 : Data signal of checksum
--        bit 31~0 - checksum[31:0] (Read)
-- 0x4c : Control signal of checksum
--        bit 0  - checksum_ap_vld (Read/COR)
--        others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of instrumentation_wrapper_ctrl_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_CFG_DATA_0      : INTEGER := 16#10#;
    constant ADDR_CFG_CTRL        : INTEGER := 16#14#;
    constant ADDR_STATUS_I_DATA_0 : INTEGER := 16#18#;
    constant ADDR_STATUS_I_CTRL   : INTEGER := 16#1c#;
    constant ADDR_STATUS_O_DATA_0 : INTEGER := 16#20#;
    constant ADDR_STATUS_O_CTRL   : INTEGER := 16#24#;
    constant ADDR_LATENCY_DATA_0  : INTEGER := 16#28#;
    constant ADDR_LATENCY_CTRL    : INTEGER := 16#2c#;
    constant ADDR_INTERVAL_DATA_0 : INTEGER := 16#38#;
    constant ADDR_INTERVAL_CTRL   : INTEGER := 16#3c#;
    constant ADDR_CHECKSUM_DATA_0 : INTEGER := 16#48#;
    constant ADDR_CHECKSUM_CTRL   : INTEGER := 16#4c#;
    constant ADDR_BITS         : INTEGER := 7;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_cfg             : UNSIGNED(31 downto 0) := (others => '0');
    signal int_status_i        : UNSIGNED(31 downto 0) := (others => '0');
    signal int_status_o_ap_vld : STD_LOGIC;
    signal int_status_o        : UNSIGNED(31 downto 0) := (others => '0');
    signal int_latency_ap_vld  : STD_LOGIC;
    signal int_latency         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_interval_ap_vld : STD_LOGIC;
    signal int_interval        : UNSIGNED(31 downto 0) := (others => '0');
    signal int_checksum_ap_vld : STD_LOGIC;
    signal int_checksum        : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_CFG_DATA_0 =>
                        rdata_data <= RESIZE(int_cfg(31 downto 0), 32);
                    when ADDR_STATUS_I_DATA_0 =>
                        rdata_data <= RESIZE(int_status_i(31 downto 0), 32);
                    when ADDR_STATUS_O_DATA_0 =>
                        rdata_data <= RESIZE(int_status_o(31 downto 0), 32);
                    when ADDR_STATUS_O_CTRL =>
                        rdata_data(0) <= int_status_o_ap_vld;
                    when ADDR_LATENCY_DATA_0 =>
                        rdata_data <= RESIZE(int_latency(31 downto 0), 32);
                    when ADDR_LATENCY_CTRL =>
                        rdata_data(0) <= int_latency_ap_vld;
                    when ADDR_INTERVAL_DATA_0 =>
                        rdata_data <= RESIZE(int_interval(31 downto 0), 32);
                    when ADDR_INTERVAL_CTRL =>
                        rdata_data(0) <= int_interval_ap_vld;
                    when ADDR_CHECKSUM_DATA_0 =>
                        rdata_data <= RESIZE(int_checksum(31 downto 0), 32);
                    when ADDR_CHECKSUM_CTRL =>
                        rdata_data(0) <= int_checksum_ap_vld;
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    cfg                  <= STD_LOGIC_VECTOR(int_cfg);
    status_i             <= STD_LOGIC_VECTOR(int_status_i);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_CFG_DATA_0) then
                    int_cfg(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_cfg(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_STATUS_I_DATA_0) then
                    int_status_i(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_status_i(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_status_o <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (status_o_ap_vld = '1') then
                    int_status_o <= UNSIGNED(status_o);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_status_o_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (status_o_ap_vld = '1') then
                    int_status_o_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_STATUS_O_CTRL) then
                    int_status_o_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_latency <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (latency_ap_vld = '1') then
                    int_latency <= UNSIGNED(latency);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_latency_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (latency_ap_vld = '1') then
                    int_latency_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_LATENCY_CTRL) then
                    int_latency_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interval <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (interval_ap_vld = '1') then
                    int_interval <= UNSIGNED(interval);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interval_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (interval_ap_vld = '1') then
                    int_interval_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_INTERVAL_CTRL) then
                    int_interval_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_checksum <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (checksum_ap_vld = '1') then
                    int_checksum <= UNSIGNED(checksum);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_checksum_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (checksum_ap_vld = '1') then
                    int_checksum_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_CHECKSUM_CTRL) then
                    int_checksum_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
