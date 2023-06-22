-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Jun 21 16:07:53 2023
-- Host        : VM5818-Ubuntu running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ main_memory_sim_netlist.vhdl
-- Design      : main_memory
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm is
  port (
    s_axi_arready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.r_valid_r_reg_0\ : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_aresetn_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.r_valid_r_reg_1\ : out STD_LOGIC;
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\ : out STD_LOGIC;
    s_axi_arvalid_0 : out STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[7]\ : out STD_LOGIC;
    s_axi_arlen_1_sp_1 : out STD_LOGIC;
    s_axi_arlen_2_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_arlen[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxi_full_sm.arlen_cntr_reg[4]\ : out STD_LOGIC;
    \s_axi_arid[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ENB_I : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_arburst[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1]\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[6]\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[3]\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[4]_0\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[4]_1\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[5]\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[7]_1\ : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[7]_2\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0\ : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grid.S_AXI_RID_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ENB_dly_D : in STD_LOGIC;
    \gaxi_full_sm.arlen_cntr_reg[0]\ : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addr_cnt_enb_r : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\ : in STD_LOGIC;
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\ : in STD_LOGIC;
    incr_en_r : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ar_ready_c : STD_LOGIC;
  signal \gaxi_full_sm.S_AXI_RLAST_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.ar_ready_r_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\ : STD_LOGIC;
  signal \^gaxi_full_sm.arlen_cntr_reg[4]\ : STD_LOGIC;
  signal \^gaxi_full_sm.arlen_cntr_reg[7]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.outstanding_read_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.r_valid_r_i_1_n_0\ : STD_LOGIC;
  signal \^gaxi_full_sm.r_valid_r_reg_0\ : STD_LOGIC;
  signal \^gaxi_full_sm.r_valid_r_reg_1\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal outstanding_read_r : STD_LOGIC;
  signal present_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_arlen_1_sn_1 : STD_LOGIC;
  signal s_axi_arlen_2_sn_1 : STD_LOGIC;
  signal \^s_axi_arvalid_0\ : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_4\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[0]\ : label is "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : label is "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10";
  attribute SOFT_HLUTNM of \gaxi_full_sm.S_AXI_RLAST_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gaxi_full_sm.ar_ready_r_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gaxi_full_sm.ar_ready_r_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_sm.ar_ready_r_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \grid.ar_id_r[3]_i_1\ : label is "soft_lutpair4";
begin
  ADDRBWRADDR(9 downto 0) <= \^addrbwraddr\(9 downto 0);
  E(0) <= \^e\(0);
  \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\ <= \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\;
  SR(0) <= \^sr\(0);
  \gaxi_full_sm.arlen_cntr_reg[4]\ <= \^gaxi_full_sm.arlen_cntr_reg[4]\;
  \gaxi_full_sm.arlen_cntr_reg[7]\ <= \^gaxi_full_sm.arlen_cntr_reg[7]\;
  \gaxi_full_sm.r_valid_r_reg_0\ <= \^gaxi_full_sm.r_valid_r_reg_0\;
  \gaxi_full_sm.r_valid_r_reg_1\ <= \^gaxi_full_sm.r_valid_r_reg_1\;
  s_axi_arlen_1_sp_1 <= s_axi_arlen_1_sn_1;
  s_axi_arlen_2_sp_1 <= s_axi_arlen_2_sn_1;
  s_axi_arvalid_0 <= \^s_axi_arvalid_0\;
  s_axi_rlast <= \^s_axi_rlast\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45EF40EF40EF40"
    )
        port map (
      I0 => addr_cnt_enb_r(6),
      I1 => s_axi_araddr(11),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(9),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(8),
      O => \^addrbwraddr\(9)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA45EF40"
    )
        port map (
      I0 => addr_cnt_enb_r(6),
      I1 => s_axi_araddr(10),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(8),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\,
      O => \^addrbwraddr\(8)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA45EF40"
    )
        port map (
      I0 => addr_cnt_enb_r(6),
      I1 => s_axi_araddr(9),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(7),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\,
      O => \^addrbwraddr\(7)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45EF40EF40EF40"
    )
        port map (
      I0 => addr_cnt_enb_r(6),
      I1 => s_axi_araddr(8),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(6),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(5),
      O => \^addrbwraddr\(6)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF40EA45EF40EF40"
    )
        port map (
      I0 => addr_cnt_enb_r(6),
      I1 => s_axi_araddr(7),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(5),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(4),
      O => \^addrbwraddr\(5)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA4045"
    )
        port map (
      I0 => addr_cnt_enb_r(5),
      I1 => s_axi_araddr(6),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(4),
      O => \^addrbwraddr\(4)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEFFEEAAAEAFEE"
    )
        port map (
      I0 => ENB_dly_D,
      I1 => s_axi_arvalid,
      I2 => present_state(1),
      I3 => present_state(0),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\,
      I5 => outstanding_read_r,
      O => ENB_I
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF40EA45"
    )
        port map (
      I0 => addr_cnt_enb_r(4),
      I1 => s_axi_araddr(5),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(3),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5]\,
      O => \^addrbwraddr\(3)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF40EA45"
    )
        port map (
      I0 => addr_cnt_enb_r(3),
      I1 => s_axi_araddr(4),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(2),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\,
      O => \^addrbwraddr\(2)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF40EA45"
    )
        port map (
      I0 => addr_cnt_enb_r(2),
      I1 => s_axi_araddr(3),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(1),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\,
      O => \^addrbwraddr\(1)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA45EF40EF40EF40"
    )
        port map (
      I0 => addr_cnt_enb_r(1),
      I1 => s_axi_araddr(2),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(0),
      I4 => incr_en_r,
      I5 => Q(2),
      O => \^addrbwraddr\(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I1 => s_axi_rready,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4500FFFF"
    )
        port map (
      I0 => outstanding_read_r,
      I1 => s_axi_rready,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => present_state(1),
      I4 => present_state(0),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5151515100005100"
    )
        port map (
      I0 => \^gaxi_full_sm.arlen_cntr_reg[7]\,
      I1 => \gaxi_full_sm.ar_ready_r_i_5_n_0\,
      I2 => \gaxi_full_sm.ar_ready_r_i_4_n_0\,
      I3 => s_axi_arvalid,
      I4 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I5 => \gaxi_full_sm.ar_ready_r_i_2_n_0\,
      O => next_state(0)
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0D8D"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\,
      I3 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0\,
      I4 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0\,
      I5 => \^gaxi_full_sm.arlen_cntr_reg[7]\,
      O => next_state(1)
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDFFDF"
    )
        port map (
      I0 => present_state(1),
      I1 => present_state(0),
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => s_axi_rready,
      I4 => s_axi_arvalid,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => present_state(0),
      I1 => present_state(1),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2000000"
    )
        port map (
      I0 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I1 => s_axi_rready,
      I2 => outstanding_read_r,
      I3 => present_state(1),
      I4 => present_state(0),
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_state(0),
      Q => present_state(0),
      R => \^sr\(0)
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_state(1),
      Q => present_state(1),
      R => \^sr\(0)
    );
\gaxi_full_sm.S_AXI_RLAST_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE00FE"
    )
        port map (
      I0 => \^gaxi_full_sm.arlen_cntr_reg[7]\,
      I1 => s_axi_arlen_1_sn_1,
      I2 => \^gaxi_full_sm.r_valid_r_reg_1\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\,
      I4 => \^s_axi_rlast\,
      O => \gaxi_full_sm.S_AXI_RLAST_i_1_n_0\
    );
\gaxi_full_sm.S_AXI_RLAST_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(2),
      I3 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0\,
      I4 => s_axi_arlen(7),
      I5 => \^s_axi_arvalid_0\,
      O => s_axi_arlen_1_sn_1
    );
\gaxi_full_sm.S_AXI_RLAST_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0000000"
    )
        port map (
      I0 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I1 => s_axi_rready,
      I2 => outstanding_read_r,
      I3 => present_state(1),
      I4 => present_state(0),
      O => \^gaxi_full_sm.r_valid_r_reg_1\
    );
\gaxi_full_sm.S_AXI_RLAST_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => '1',
      D => \gaxi_full_sm.S_AXI_RLAST_i_1_n_0\,
      Q => \^s_axi_rlast\,
      R => \^sr\(0)
    );
\gaxi_full_sm.ar_ready_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45FF4545"
    )
        port map (
      I0 => \gaxi_full_sm.ar_ready_r_i_2_n_0\,
      I1 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I2 => s_axi_arvalid,
      I3 => \gaxi_full_sm.ar_ready_r_i_4_n_0\,
      I4 => \gaxi_full_sm.ar_ready_r_i_5_n_0\,
      I5 => \^gaxi_full_sm.arlen_cntr_reg[7]\,
      O => ar_ready_c
    );
\gaxi_full_sm.ar_ready_r_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFECE"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => present_state(0),
      I2 => present_state(1),
      I3 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I4 => s_axi_rready,
      O => \gaxi_full_sm.ar_ready_r_i_2_n_0\
    );
\gaxi_full_sm.ar_ready_r_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(6),
      I5 => s_axi_arlen_2_sn_1,
      O => \gaxi_full_sm.ar_ready_r_i_3_n_0\
    );
\gaxi_full_sm.ar_ready_r_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => outstanding_read_r,
      I1 => s_axi_rready,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      O => \gaxi_full_sm.ar_ready_r_i_4_n_0\
    );
\gaxi_full_sm.ar_ready_r_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => present_state(0),
      I1 => present_state(1),
      O => \gaxi_full_sm.ar_ready_r_i_5_n_0\
    );
\gaxi_full_sm.ar_ready_r_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(7),
      I1 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(6),
      I2 => \^gaxi_full_sm.arlen_cntr_reg[4]\,
      I3 => s_axi_rready,
      I4 => present_state(0),
      I5 => present_state(1),
      O => \^gaxi_full_sm.arlen_cntr_reg[7]\
    );
\gaxi_full_sm.ar_ready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ar_ready_c,
      Q => s_axi_arready,
      R => \^sr\(0)
    );
\gaxi_full_sm.arlen_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF2F0D"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => present_state(0),
      I2 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      I3 => s_axi_arlen(0),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      O => \s_axi_arlen[7]\(0)
    );
\gaxi_full_sm.arlen_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B7B484B484B4B7"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(1),
      I3 => \^s_axi_arvalid_0\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(1),
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      O => \s_axi_arlen[7]\(1)
    );
\gaxi_full_sm.arlen_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(2),
      I3 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I4 => \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\,
      O => \s_axi_arlen[7]\(2)
    );
\gaxi_full_sm.arlen_cntr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arvalid,
      I2 => present_state(0),
      I3 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(2),
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(1),
      O => \gaxi_full_sm.arlen_cntr[2]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B484B4B7B4B7B484"
    )
        port map (
      I0 => s_axi_arlen_2_sn_1,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(3),
      I3 => \^s_axi_arvalid_0\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(3),
      I5 => \gaxi_full_sm.arlen_cntr_reg[3]\,
      O => \s_axi_arlen[7]\(3)
    );
\gaxi_full_sm.arlen_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7848787B787B7848"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[4]_0\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(4),
      I3 => \^s_axi_arvalid_0\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(4),
      I5 => \gaxi_full_sm.arlen_cntr_reg[4]_1\,
      O => \s_axi_arlen[7]\(4)
    );
\gaxi_full_sm.arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40BF4FBF40B040"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => \gaxi_full_sm.arlen_cntr_reg[4]_0\,
      I2 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I3 => s_axi_arlen(5),
      I4 => \^s_axi_arvalid_0\,
      I5 => \gaxi_full_sm.arlen_cntr_reg[5]\,
      O => \s_axi_arlen[7]\(5)
    );
\gaxi_full_sm.arlen_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7848787B787B7848"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[6]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(6),
      I3 => \^s_axi_arvalid_0\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(6),
      I5 => \^gaxi_full_sm.arlen_cntr_reg[4]\,
      O => \s_axi_arlen[7]\(6)
    );
\gaxi_full_sm.arlen_cntr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(4),
      I1 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(2),
      I2 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(1),
      I3 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(0),
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(3),
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(5),
      O => \^gaxi_full_sm.arlen_cntr_reg[4]\
    );
\gaxi_full_sm.arlen_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7737FFFF4404"
    )
        port map (
      I0 => present_state(1),
      I1 => present_state(0),
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => s_axi_rready,
      I4 => \gaxi_full_sm.arlen_cntr_reg[0]\,
      I5 => s_axi_arvalid,
      O => \FSM_sequential_gaxi_full_sm.present_state_reg[1]_1\(0)
    );
\gaxi_full_sm.arlen_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080B0B3B0B3B080"
    )
        port map (
      I0 => \gaxi_full_sm.arlen_cntr_reg[7]_1\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_arlen(7),
      I3 => \^s_axi_arvalid_0\,
      I4 => \gaxi_full_sm.arlen_cntr_reg[7]_0\(7),
      I5 => \gaxi_full_sm.arlen_cntr_reg[7]_2\,
      O => \s_axi_arlen[7]\(7)
    );
\gaxi_full_sm.aw_ready_r_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \^sr\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAAAFFFFFFFF"
    )
        port map (
      I0 => \^gaxi_full_sm.r_valid_r_reg_1\,
      I1 => \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\,
      I2 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I3 => \^s_axi_arvalid_0\,
      I4 => \^gaxi_full_sm.arlen_cntr_reg[7]\,
      I5 => s_aresetn,
      O => s_aresetn_0(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020202000"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => \^s_axi_arvalid_0\,
      I3 => s_axi_arlen_2_sn_1,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0\,
      I5 => s_axi_arlen(7),
      O => \s_axi_arburst[1]\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => present_state(1),
      I1 => s_axi_rready,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      O => \^fsm_sequential_gaxi_full_sm.present_state_reg[1]_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      O => s_axi_arlen_2_sn_1
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(6),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(6),
      I2 => s_axi_araddr(10),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(8),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(8)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA3033AAAA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gaxi_full_sm.arlen_cntr_reg[0]\,
      I2 => s_axi_rready,
      I3 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I4 => present_state(0),
      I5 => present_state(1),
      O => s_axi_arvalid_1(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(6),
      I2 => s_axi_araddr(11),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(9),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(9)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => present_state(0),
      I3 => \^addrbwraddr\(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5B0A0F4E4B0B1"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(2),
      I2 => s_axi_araddr(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(1),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5B0A0F4E4B0B1"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(3),
      I2 => s_axi_araddr(4),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(2),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5B0A0F4E4B0B1"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(4),
      I2 => s_axi_araddr(5),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(3),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(3)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F5F4E4B0A0B0B1"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(5),
      I2 => s_axi_araddr(6),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(4),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(4)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(6),
      I2 => s_axi_araddr(7),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(5),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(5)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(6),
      I2 => s_axi_araddr(8),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(6),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4E4B0B1F4F5B0A0"
    )
        port map (
      I0 => \^s_axi_arvalid_0\,
      I1 => addr_cnt_enb_r(6),
      I2 => s_axi_araddr(9),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(7),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(7)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787B78487848787B"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0]\(0),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_araddr(0),
      I3 => \^s_axi_arvalid_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(0),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0\,
      O => D(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I2 => Q(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B7B484B484B4B7"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\,
      I2 => s_axi_araddr(1),
      I3 => \^s_axi_arvalid_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0\,
      O => D(1)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0\,
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(2),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0\,
      I5 => s_axi_arlen(7),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5655A6AA"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(1),
      I1 => s_axi_araddr(1),
      I2 => addr_cnt_enb_r(0),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I4 => Q(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABEEEBBBE"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2_n_0\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(2),
      I2 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(1),
      I3 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\,
      I5 => \^s_axi_arvalid_0\,
      O => D(2)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0\,
      I2 => s_axi_arlen_2_sn_1,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA2"
    )
        port map (
      I0 => Q(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I2 => addr_cnt_enb_r(0),
      I3 => s_axi_araddr(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => Q(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0\,
      I2 => s_axi_araddr(0),
      I3 => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44044444"
    )
        port map (
      I0 => present_state(0),
      I1 => s_axi_arvalid,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => s_axi_rready,
      I4 => present_state(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0\
    );
\gaxi_full_sm.outstanding_read_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000080800000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0\,
      I3 => outstanding_read_r,
      I4 => present_state(1),
      I5 => present_state(0),
      O => \gaxi_full_sm.outstanding_read_r_i_1_n_0\
    );
\gaxi_full_sm.outstanding_read_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gaxi_full_sm.outstanding_read_r_i_1_n_0\,
      Q => outstanding_read_r,
      R => \^sr\(0)
    );
\gaxi_full_sm.r_valid_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAFFFFAEAAAEAA"
    )
        port map (
      I0 => \^e\(0),
      I1 => s_axi_arvalid,
      I2 => present_state(0),
      I3 => \gaxi_full_sm.ar_ready_r_i_3_n_0\,
      I4 => s_axi_rready,
      I5 => \^gaxi_full_sm.r_valid_r_reg_0\,
      O => \gaxi_full_sm.r_valid_r_i_1_n_0\
    );
\gaxi_full_sm.r_valid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gaxi_full_sm.r_valid_r_i_1_n_0\,
      Q => \^gaxi_full_sm.r_valid_r_reg_0\,
      R => \^sr\(0)
    );
\grid.S_AXI_RID[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBBBBB88088888"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => s_axi_rready,
      I4 => present_state(1),
      I5 => \grid.S_AXI_RID_reg[3]\(0),
      O => \s_axi_arid[3]\(0)
    );
\grid.S_AXI_RID[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBBBBB88088888"
    )
        port map (
      I0 => s_axi_arid(1),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => s_axi_rready,
      I4 => present_state(1),
      I5 => \grid.S_AXI_RID_reg[3]\(1),
      O => \s_axi_arid[3]\(1)
    );
\grid.S_AXI_RID[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBBBBB88088888"
    )
        port map (
      I0 => s_axi_arid(2),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => s_axi_rready,
      I4 => present_state(1),
      I5 => \grid.S_AXI_RID_reg[3]\(2),
      O => \s_axi_arid[3]\(2)
    );
\grid.S_AXI_RID[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ACFCFFF8A00CF00"
    )
        port map (
      I0 => outstanding_read_r,
      I1 => s_axi_rready,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => present_state(0),
      I4 => present_state(1),
      I5 => s_axi_arvalid,
      O => \^e\(0)
    );
\grid.S_AXI_RID[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBBBBB88088888"
    )
        port map (
      I0 => s_axi_arid(3),
      I1 => \^s_axi_arvalid_0\,
      I2 => \^gaxi_full_sm.r_valid_r_reg_0\,
      I3 => s_axi_rready,
      I4 => present_state(1),
      I5 => \grid.S_AXI_RID_reg[3]\(3),
      O => \s_axi_arid[3]\(3)
    );
\grid.ar_id_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => present_state(0),
      O => \^s_axi_arvalid_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0\ : out STD_LOGIC;
    \bvalid_count_r_reg[0]\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    bvalid_c : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_wlast_gen.awlen_cntr_r_reg[5]\ : out STD_LOGIC;
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_awaddr[11]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    s_axi_wvalid_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\ : out STD_LOGIC;
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0\ : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\ : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_wlast_gen.awlen_cntr_r_reg[7]\ : in STD_LOGIC;
    \gaxi_bvalid_id_r.bvalid_d1_c_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gaxif_wlast_gen.awlen_cntr_r_reg[5]_0\ : in STD_LOGIC;
    \gaxif_wlast_gen.awlen_cntr_r_reg[4]\ : in STD_LOGIC;
    \gaxif_wlast_gen.awlen_cntr_r_reg[3]\ : in STD_LOGIC;
    \gaxif_wlast_gen.awlen_cntr_r_reg[2]\ : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gaxif_ms_addr_gen.next_address_r_reg[2]\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gaxif_ms_addr_gen.next_address_r_reg[1]\ : in STD_LOGIC;
    \gaxif_ms_addr_gen.next_address_r_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxif_ms_addr_gen.next_address_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxif_ms_addr_gen.bmg_address_r_reg[11]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_4\ : in STD_LOGIC;
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_5\ : in STD_LOGIC;
    ENA_dly_D : in STD_LOGIC;
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm is
  signal \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_ready_c : STD_LOGIC;
  signal \^bvalid_c\ : STD_LOGIC;
  signal \^bvalid_count_r_reg[0]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.bmg_address_r[11]_i_2_n_0\ : STD_LOGIC;
  signal \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal present_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  signal w_ready_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gaxi_full_sm.present_state[1]_i_2\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[0]\ : label is "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gaxi_full_sm.present_state_reg[1]\ : label is "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gaxi_full_sm.w_ready_r_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.next_address_r[2]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[7]_i_1\ : label is "soft_lutpair17";
begin
  \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0\ <= \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\;
  Q(0) <= \^q\(0);
  bvalid_c <= \^bvalid_c\;
  \bvalid_count_r_reg[0]\ <= \^bvalid_count_r_reg[0]\;
  \gaxif_wlast_gen.awlen_cntr_r_reg[5]\ <= \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEA"
    )
        port map (
      I0 => ENA_dly_D,
      I1 => s_axi_wvalid,
      I2 => \^q\(0),
      I3 => present_state(0),
      O => ENA_I
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAABFAFAAAA"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\,
      I2 => s_axi_wvalid,
      I3 => \^bvalid_count_r_reg[0]\,
      I4 => present_state(0),
      I5 => \^q\(0),
      O => next_state(0)
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55000030"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => present_state(0),
      I4 => \^q\(0),
      O => \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(7),
      I1 => \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\,
      I2 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(6),
      O => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022F3A0FF22F3A0"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I2 => s_axi_awvalid,
      I3 => \^q\(0),
      I4 => present_state(0),
      I5 => s_axi_bready,
      O => next_state(1)
    );
\FSM_sequential_gaxi_full_sm.present_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(7),
      I1 => \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\,
      I2 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(6),
      I3 => s_axi_wvalid,
      I4 => \^bvalid_count_r_reg[0]\,
      O => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_state(0),
      Q => present_state(0),
      R => SS(0)
    );
\FSM_sequential_gaxi_full_sm.present_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_state(1),
      Q => \^q\(0),
      R => SS(0)
    );
\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awvalid,
      O => I17
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bvalid_c\,
      I1 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\(0),
      O => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0\
    );
\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\(0),
      I1 => \^bvalid_c\,
      I2 => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\(1),
      O => \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\
    );
\gaxi_bvalid_id_r.bvalid_d1_c_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000028"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^q\(0),
      I2 => present_state(0),
      I3 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(6),
      I4 => \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\,
      I5 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(7),
      O => \^bvalid_c\
    );
\gaxi_bvalid_id_r.bvalid_d1_c_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(5),
      I1 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(3),
      I2 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(1),
      I3 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(0),
      I4 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(2),
      I5 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(4),
      O => \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\
    );
\gaxi_full_sm.aw_ready_r_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4444444F44444FF"
    )
        port map (
      I0 => \^bvalid_count_r_reg[0]\,
      I1 => \^bvalid_c\,
      I2 => s_axi_bready,
      I3 => present_state(0),
      I4 => \^q\(0),
      I5 => s_axi_awvalid,
      O => aw_ready_c
    );
\gaxi_full_sm.aw_ready_r_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_sequential_gaxi_full_sm.present_state_reg[0]_3\,
      I1 => \FSM_sequential_gaxi_full_sm.present_state_reg[0]_4\,
      I2 => \FSM_sequential_gaxi_full_sm.present_state_reg[0]_5\,
      O => \^bvalid_count_r_reg[0]\
    );
\gaxi_full_sm.aw_ready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aw_ready_c,
      Q => \^s_axi_awready\,
      R => SS(0)
    );
\gaxi_full_sm.w_ready_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F2FAA"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^bvalid_count_r_reg[0]\,
      I2 => \^s_axi_wvalid_0\,
      I3 => \^q\(0),
      I4 => present_state(0),
      O => w_ready_c
    );
\gaxi_full_sm.w_ready_r_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(6),
      I2 => \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\,
      I3 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(7),
      O => \^s_axi_wvalid_0\
    );
\gaxi_full_sm.w_ready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => w_ready_c,
      Q => s_axi_wready,
      R => SS(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0A0FFFFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\,
      I1 => \^bvalid_count_r_reg[0]\,
      I2 => \^s_axi_wvalid_0\,
      I3 => \^q\(0),
      I4 => \gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\,
      I5 => s_aresetn,
      O => SR(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040440000"
    )
        port map (
      I0 => present_state(0),
      I1 => s_axi_awvalid,
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => s_axi_awburst(1),
      I5 => s_axi_awburst(0),
      O => \FSM_sequential_gaxi_full_sm.present_state_reg[0]_1\(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => present_state(0),
      I1 => s_axi_awvalid,
      O => \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\
    );
\gaxif_ms_addr_gen.bmg_address_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(8),
      O => \s_axi_awaddr[11]\(8)
    );
\gaxif_ms_addr_gen.bmg_address_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FBFB08FB08FB08"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \gaxif_ms_addr_gen.bmg_address_r[11]_i_2_n_0\,
      I2 => \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\,
      I3 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]\(1),
      I4 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\,
      I5 => \gaxif_ms_addr_gen.bmg_address_r_reg[11]\(0),
      O => \s_axi_awaddr[11]\(9)
    );
\gaxif_ms_addr_gen.bmg_address_r[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000004FFFFFFFF"
    )
        port map (
      I0 => \^bvalid_count_r_reg[0]\,
      I1 => s_axi_wvalid,
      I2 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(6),
      I3 => \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\,
      I4 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(7),
      I5 => \^q\(0),
      O => \gaxif_ms_addr_gen.bmg_address_r[11]_i_2_n_0\
    );
\gaxif_ms_addr_gen.bmg_address_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(0),
      O => \s_axi_awaddr[11]\(0)
    );
\gaxif_ms_addr_gen.bmg_address_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(1),
      O => \s_axi_awaddr[11]\(1)
    );
\gaxif_ms_addr_gen.bmg_address_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(2),
      O => \s_axi_awaddr[11]\(2)
    );
\gaxif_ms_addr_gen.bmg_address_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(3),
      O => \s_axi_awaddr[11]\(3)
    );
\gaxif_ms_addr_gen.bmg_address_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(4),
      O => \s_axi_awaddr[11]\(4)
    );
\gaxif_ms_addr_gen.bmg_address_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(5),
      O => \s_axi_awaddr[11]\(5)
    );
\gaxif_ms_addr_gen.bmg_address_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(6),
      O => \s_axi_awaddr[11]\(6)
    );
\gaxif_ms_addr_gen.bmg_address_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => ADDRARDADDR(7),
      O => \s_axi_awaddr[11]\(7)
    );
\gaxif_ms_addr_gen.next_address_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A2FFAEFFAE00A2"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\,
      I4 => \gaxif_ms_addr_gen.next_address_r_reg[0]\(0),
      I5 => \gaxif_ms_addr_gen.next_address_r_reg[0]_0\(0),
      O => \FSM_sequential_gaxi_full_sm.present_state_reg[0]_2\(0)
    );
\gaxif_ms_addr_gen.next_address_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => \gaxif_ms_addr_gen.next_address_r_reg[1]\,
      O => \FSM_sequential_gaxi_full_sm.present_state_reg[0]_2\(1)
    );
\gaxif_ms_addr_gen.next_address_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFA002A000A000A"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^bvalid_count_r_reg[0]\,
      I2 => \^q\(0),
      I3 => present_state(0),
      I4 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\,
      I5 => s_axi_wvalid,
      O => E(0)
    );
\gaxif_ms_addr_gen.next_address_r[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8A8A"
    )
        port map (
      I0 => \gaxif_ms_addr_gen.next_address_r_reg[2]\,
      I1 => present_state(0),
      I2 => s_axi_awvalid,
      I3 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I4 => \^q\(0),
      O => \FSM_sequential_gaxi_full_sm.present_state_reg[0]_2\(2)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I2 => s_axi_awvalid,
      I3 => present_state(0),
      O => \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A200FFFFAEFF"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(0),
      O => D(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAE00A200A2FFAE"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\,
      I4 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(1),
      I5 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(0),
      O => D(1)
    );
\gaxif_wlast_gen.awlen_cntr_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg[2]\,
      O => D(2)
    );
\gaxif_wlast_gen.awlen_cntr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg[3]\,
      O => D(3)
    );
\gaxif_wlast_gen.awlen_cntr_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg[4]\,
      O => D(4)
    );
\gaxif_wlast_gen.awlen_cntr_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg[5]_0\,
      O => D(5)
    );
\gaxif_wlast_gen.awlen_cntr_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAE00A200A2FFAE"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => \^fsm_sequential_gaxi_full_sm.present_state_reg[0]_0\,
      I4 => \^gaxif_wlast_gen.awlen_cntr_r_reg[5]\,
      I5 => \gaxi_bvalid_id_r.bvalid_d1_c_reg\(6),
      O => D(6)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAF2AA2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0\,
      I2 => present_state(0),
      I3 => \^q\(0),
      I4 => s_axi_awvalid,
      O => s_axi_wvalid_1(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEFF0000A200"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => \^q\(0),
      I2 => \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0\,
      I3 => s_axi_awvalid,
      I4 => present_state(0),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg[7]\,
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_rstram_b : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \^ram_rstram_b\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  ram_rstram_b <= \^ram_rstram_b\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000700000006000000050000000400000003000000020000000100000000",
      INIT_01 => X"0000000F0000000E0000000D0000000C0000000B0000000A0000000900000008",
      INIT_02 => X"0000001700000016000000150000001400000013000000120000001100000010",
      INIT_03 => X"0000001F0000001E0000001D0000001C0000001B0000001A0000001900000018",
      INIT_04 => X"0000002700000026000000250000002400000023000000220000002100000020",
      INIT_05 => X"0000002F0000002E0000002D0000002C0000002B0000002A0000002900000028",
      INIT_06 => X"0000003700000036000000350000003400000033000000320000003100000030",
      INIT_07 => X"0000003F0000003E0000003D0000003C0000003B0000003A0000003900000038",
      INIT_08 => X"0000004700000046000000450000004400000043000000420000004100000040",
      INIT_09 => X"0000004F0000004E0000004D0000004C0000004B0000004A0000004900000048",
      INIT_0A => X"0000005700000056000000550000005400000053000000520000005100000050",
      INIT_0B => X"0000005F0000005E0000005D0000005C0000005B0000005A0000005900000058",
      INIT_0C => X"0000006700000066000000650000006400000063000000620000006100000060",
      INIT_0D => X"0000006F0000006E0000006D0000006C0000006B0000006A0000006900000068",
      INIT_0E => X"0000007700000076000000750000007400000073000000720000007100000070",
      INIT_0F => X"0000007F0000007E0000007D0000007C0000007B0000007A0000007900000078",
      INIT_10 => X"0000008700000086000000850000008400000083000000820000008100000080",
      INIT_11 => X"0000008F0000008E0000008D0000008C0000008B0000008A0000008900000088",
      INIT_12 => X"0000009700000096000000950000009400000093000000920000009100000090",
      INIT_13 => X"0000009F0000009E0000009D0000009C0000009B0000009A0000009900000098",
      INIT_14 => X"000000A7000000A6000000A5000000A4000000A3000000A2000000A1000000A0",
      INIT_15 => X"000000AF000000AE000000AD000000AC000000AB000000AA000000A9000000A8",
      INIT_16 => X"000000B7000000B6000000B5000000B4000000B3000000B2000000B1000000B0",
      INIT_17 => X"000000BF000000BE000000BD000000BC000000BB000000BA000000B9000000B8",
      INIT_18 => X"000000C7000000C6000000C5000000C4000000C3000000C2000000C1000000C0",
      INIT_19 => X"000000CF000000CE000000CD000000CC000000CB000000CA000000C9000000C8",
      INIT_1A => X"000000D7000000D6000000D5000000D4000000D3000000D2000000D1000000D0",
      INIT_1B => X"000000DF000000DE000000DD000000DC000000DB000000DA000000D9000000D8",
      INIT_1C => X"000000E7000000E6000000E5000000E4000000E3000000E2000000E1000000E0",
      INIT_1D => X"000000EF000000EE000000ED000000EC000000EB000000EA000000E9000000E8",
      INIT_1E => X"000000F7000000F6000000F5000000F4000000F3000000F2000000F1000000F0",
      INIT_1F => X"000000FF000000FE000000FD000000FC000000FB000000FA000000F9000000F8",
      INIT_20 => X"0000010700000106000001050000010400000103000001020000010100000100",
      INIT_21 => X"0000010F0000010E0000010D0000010C0000010B0000010A0000010900000108",
      INIT_22 => X"0000011700000116000001150000011400000113000001120000011100000110",
      INIT_23 => X"0000011F0000011E0000011D0000011C0000011B0000011A0000011900000118",
      INIT_24 => X"0000012700000126000001250000012400000123000001220000012100000120",
      INIT_25 => X"0000012F0000012E0000012D0000012C0000012B0000012A0000012900000128",
      INIT_26 => X"0000013700000136000001350000013400000133000001320000013100000130",
      INIT_27 => X"0000013F0000013E0000013D0000013C0000013B0000013A0000013900000138",
      INIT_28 => X"0000014700000146000001450000014400000143000001420000014100000140",
      INIT_29 => X"0000014F0000014E0000014D0000014C0000014B0000014A0000014900000148",
      INIT_2A => X"0000015700000156000001550000015400000153000001520000015100000150",
      INIT_2B => X"0000015F0000015E0000015D0000015C0000015B0000015A0000015900000158",
      INIT_2C => X"0000016700000166000001650000016400000163000001620000016100000160",
      INIT_2D => X"0000016F0000016E0000016D0000016C0000016B0000016A0000016900000168",
      INIT_2E => X"0000017700000176000001750000017400000173000001720000017100000170",
      INIT_2F => X"0000017F0000017E0000017D0000017C0000017B0000017A0000017900000178",
      INIT_30 => X"0000018700000186000001850000018400000183000001820000018100000180",
      INIT_31 => X"0000018F0000018E0000018D0000018C0000018B0000018A0000018900000188",
      INIT_32 => X"0000019700000196000001950000019400000193000001920000019100000190",
      INIT_33 => X"0000019F0000019E0000019D0000019C0000019B0000019A0000019900000198",
      INIT_34 => X"000001A7000001A6000001A5000001A4000001A3000001A2000001A1000001A0",
      INIT_35 => X"000001AF000001AE000001AD000001AC000001AB000001AA000001A9000001A8",
      INIT_36 => X"000001B7000001B6000001B5000001B4000001B3000001B2000001B1000001B0",
      INIT_37 => X"000001BF000001BE000001BD000001BC000001BB000001BA000001B9000001B8",
      INIT_38 => X"000001C7000001C6000001C5000001C4000001C3000001C2000001C1000001C0",
      INIT_39 => X"000001CF000001CE000001CD000001CC000001CB000001CA000001C9000001C8",
      INIT_3A => X"000001D7000001D6000001D5000001D4000001D3000001D2000001D1000001D0",
      INIT_3B => X"000001DF000001DE000001DD000001DC000001DB000001DA000001D9000001D8",
      INIT_3C => X"000001E7000001E6000001E5000001E4000001E3000001E2000001E1000001E0",
      INIT_3D => X"000001EF000001EE000001ED000001EC000001EB000001EA000001E9000001E8",
      INIT_3E => X"000001F7000001F6000001F5000001F4000001F3000001F2000001F1000001F0",
      INIT_3F => X"000001FF000001FE000001FD000001FC000001FB000001FA000001F9000001F8",
      INIT_40 => X"0000020700000206000002050000020400000203000002020000020100000200",
      INIT_41 => X"0000020F0000020E0000020D0000020C0000020B0000020A0000020900000208",
      INIT_42 => X"0000021700000216000002150000021400000213000002120000021100000210",
      INIT_43 => X"0000021F0000021E0000021D0000021C0000021B0000021A0000021900000218",
      INIT_44 => X"0000022700000226000002250000022400000223000002220000022100000220",
      INIT_45 => X"0000022F0000022E0000022D0000022C0000022B0000022A0000022900000228",
      INIT_46 => X"0000023700000236000002350000023400000233000002320000023100000230",
      INIT_47 => X"0000023F0000023E0000023D0000023C0000023B0000023A0000023900000238",
      INIT_48 => X"0000024700000246000002450000024400000243000002420000024100000240",
      INIT_49 => X"0000024F0000024E0000024D0000024C0000024B0000024A0000024900000248",
      INIT_4A => X"0000025700000256000002550000025400000253000002520000025100000250",
      INIT_4B => X"0000025F0000025E0000025D0000025C0000025B0000025A0000025900000258",
      INIT_4C => X"0000026700000266000002650000026400000263000002620000026100000260",
      INIT_4D => X"0000026F0000026E0000026D0000026C0000026B0000026A0000026900000268",
      INIT_4E => X"0000027700000276000002750000027400000273000002720000027100000270",
      INIT_4F => X"0000027F0000027E0000027D0000027C0000027B0000027A0000027900000278",
      INIT_50 => X"0000028700000286000002850000028400000283000002820000028100000280",
      INIT_51 => X"0000028F0000028E0000028D0000028C0000028B0000028A0000028900000288",
      INIT_52 => X"0000029700000296000002950000029400000293000002920000029100000290",
      INIT_53 => X"0000029F0000029E0000029D0000029C0000029B0000029A0000029900000298",
      INIT_54 => X"000002A7000002A6000002A5000002A4000002A3000002A2000002A1000002A0",
      INIT_55 => X"000002AF000002AE000002AD000002AC000002AB000002AA000002A9000002A8",
      INIT_56 => X"000002B7000002B6000002B5000002B4000002B3000002B2000002B1000002B0",
      INIT_57 => X"000002BF000002BE000002BD000002BC000002BB000002BA000002B9000002B8",
      INIT_58 => X"000002C7000002C6000002C5000002C4000002C3000002C2000002C1000002C0",
      INIT_59 => X"000002CF000002CE000002CD000002CC000002CB000002CA000002C9000002C8",
      INIT_5A => X"000002D7000002D6000002D5000002D4000002D3000002D2000002D1000002D0",
      INIT_5B => X"000002DF000002DE000002DD000002DC000002DB000002DA000002D9000002D8",
      INIT_5C => X"000002E7000002E6000002E5000002E4000002E3000002E2000002E1000002E0",
      INIT_5D => X"000002EF000002EE000002ED000002EC000002EB000002EA000002E9000002E8",
      INIT_5E => X"000002F7000002F6000002F5000002F4000002F3000002F2000002F1000002F0",
      INIT_5F => X"000002FF000002FE000002FD000002FC000002FB000002FA000002F9000002F8",
      INIT_60 => X"0000030700000306000003050000030400000303000003020000030100000300",
      INIT_61 => X"0000030F0000030E0000030D0000030C0000030B0000030A0000030900000308",
      INIT_62 => X"0000031700000316000003150000031400000313000003120000031100000310",
      INIT_63 => X"0000031F0000031E0000031D0000031C0000031B0000031A0000031900000318",
      INIT_64 => X"0000032700000326000003250000032400000323000003220000032100000320",
      INIT_65 => X"0000032F0000032E0000032D0000032C0000032B0000032A0000032900000328",
      INIT_66 => X"0000033700000336000003350000033400000333000003320000033100000330",
      INIT_67 => X"0000033F0000033E0000033D0000033C0000033B0000033A0000033900000338",
      INIT_68 => X"0000034700000346000003450000034400000343000003420000034100000340",
      INIT_69 => X"0000034F0000034E0000034D0000034C0000034B0000034A0000034900000348",
      INIT_6A => X"0000035700000356000003550000035400000353000003520000035100000350",
      INIT_6B => X"0000035F0000035E0000035D0000035C0000035B0000035A0000035900000358",
      INIT_6C => X"0000036700000366000003650000036400000363000003620000036100000360",
      INIT_6D => X"0000036F0000036E0000036D0000036C0000036B0000036A0000036900000368",
      INIT_6E => X"0000037700000376000003750000037400000373000003720000037100000370",
      INIT_6F => X"0000037F0000037E0000037D0000037C0000037B0000037A0000037900000378",
      INIT_70 => X"0000038700000386000003850000038400000383000003820000038100000380",
      INIT_71 => X"0000038F0000038E0000038D0000038C0000038B0000038A0000038900000388",
      INIT_72 => X"0000039700000396000003950000039400000393000003920000039100000390",
      INIT_73 => X"0000039F0000039E0000039D0000039C0000039B0000039A0000039900000398",
      INIT_74 => X"000003A7000003A6000003A5000003A4000003A3000003A2000003A1000003A0",
      INIT_75 => X"000003AF000003AE000003AD000003AC000003AB000003AA000003A9000003A8",
      INIT_76 => X"000003B7000003B6000003B5000003B4000003B3000003B2000003B1000003B0",
      INIT_77 => X"000003BF000003BE000003BD000003BC000003BB000003BA000003B9000003B8",
      INIT_78 => X"000003C7000003C6000003C5000003C4000003C3000003C2000003C1000003C0",
      INIT_79 => X"000003CF000003CE000003CD000003CC000003CB000003CA000003C9000003C8",
      INIT_7A => X"000003D7000003D6000003D5000003D4000003D3000003D2000003D1000003D0",
      INIT_7B => X"000003DF000003DE000003DD000003DC000003DB000003DA000003D9000003D8",
      INIT_7C => X"000003E7000003E6000003E5000003E4000003E3000003E2000003E1000003E0",
      INIT_7D => X"000003EF000003EE000003ED000003EC000003EB000003EA000003E9000003E8",
      INIT_7E => X"000003F7000003F6000003F5000003F4000003F3000003F2000003F1000003F0",
      INIT_7F => X"000003FF000003FE000003FD000003FC000003FB000003FA000003F9000003F8",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => ADDRARDADDR(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => ADDRBWRADDR(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => s_axi_rdata(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENA_I,
      ENBWREN => ENB_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_A,
      RSTRAMB => \^ram_rstram_b\,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => s_axi_wstrb(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => POR_A,
      I1 => s_aresetn,
      O => \^ram_rstram_b\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper is
  port (
    s_axi_arready : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_sm.r_valid_r_reg\ : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    ENB_I : out STD_LOGIC;
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ENB_dly_D : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_cnt_enb_r : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal ar_id_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arlen_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_read_fsm_n_10 : STD_LOGIC;
  signal axi_read_fsm_n_11 : STD_LOGIC;
  signal axi_read_fsm_n_12 : STD_LOGIC;
  signal axi_read_fsm_n_13 : STD_LOGIC;
  signal axi_read_fsm_n_14 : STD_LOGIC;
  signal axi_read_fsm_n_15 : STD_LOGIC;
  signal axi_read_fsm_n_16 : STD_LOGIC;
  signal axi_read_fsm_n_17 : STD_LOGIC;
  signal axi_read_fsm_n_18 : STD_LOGIC;
  signal axi_read_fsm_n_19 : STD_LOGIC;
  signal axi_read_fsm_n_20 : STD_LOGIC;
  signal axi_read_fsm_n_21 : STD_LOGIC;
  signal axi_read_fsm_n_22 : STD_LOGIC;
  signal axi_read_fsm_n_23 : STD_LOGIC;
  signal axi_read_fsm_n_24 : STD_LOGIC;
  signal axi_read_fsm_n_25 : STD_LOGIC;
  signal axi_read_fsm_n_26 : STD_LOGIC;
  signal axi_read_fsm_n_28 : STD_LOGIC;
  signal axi_read_fsm_n_29 : STD_LOGIC;
  signal axi_read_fsm_n_30 : STD_LOGIC;
  signal axi_read_fsm_n_32 : STD_LOGIC;
  signal axi_read_fsm_n_33 : STD_LOGIC;
  signal axi_read_fsm_n_34 : STD_LOGIC;
  signal axi_read_fsm_n_35 : STD_LOGIC;
  signal axi_read_fsm_n_36 : STD_LOGIC;
  signal axi_read_fsm_n_37 : STD_LOGIC;
  signal axi_read_fsm_n_38 : STD_LOGIC;
  signal axi_read_fsm_n_39 : STD_LOGIC;
  signal axi_read_fsm_n_4 : STD_LOGIC;
  signal axi_read_fsm_n_40 : STD_LOGIC;
  signal axi_read_fsm_n_41 : STD_LOGIC;
  signal axi_read_fsm_n_5 : STD_LOGIC;
  signal axi_read_fsm_n_6 : STD_LOGIC;
  signal axi_read_fsm_n_7 : STD_LOGIC;
  signal axi_read_fsm_n_8 : STD_LOGIC;
  signal axi_read_fsm_n_9 : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[5]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2]\ : STD_LOGIC;
  signal incr_en_r : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[3]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gaxi_full_sm.arlen_cntr[7]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1\ : label is "soft_lutpair15";
begin
  SS(0) <= \^ss\(0);
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7]\,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8]\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\,
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7]\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2]\,
      I2 => incr_en_r,
      I3 => p_0_in3_in,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3]\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5]\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3]\,
      I1 => p_0_in3_in,
      I2 => incr_en_r,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2]\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4]\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2]\,
      I1 => incr_en_r,
      I2 => p_0_in3_in,
      I3 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3]\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => incr_en_r,
      I2 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2]\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0\
    );
axi_read_fsm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm
     port map (
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      D(2) => axi_read_fsm_n_11,
      D(1) => axi_read_fsm_n_12,
      D(0) => axi_read_fsm_n_13,
      E(0) => axi_read_fsm_n_28,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\ => axi_read_fsm_n_6,
      \FSM_sequential_gaxi_full_sm.present_state_reg[1]_1\(0) => axi_read_fsm_n_29,
      Q(2) => p_0_in3_in,
      Q(1) => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1]\,
      Q(0) => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0]\,
      SR(0) => \^ss\(0),
      addr_cnt_enb_r(6) => addr_cnt_enb_r(11),
      addr_cnt_enb_r(5 downto 0) => addr_cnt_enb_r(6 downto 1),
      \gaxi_full_sm.arlen_cntr_reg[0]\ => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[3]\ => \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[4]\ => axi_read_fsm_n_22,
      \gaxi_full_sm.arlen_cntr_reg[4]_0\ => \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[4]_1\ => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[5]\ => \gaxi_full_sm.arlen_cntr[5]_i_3_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[6]\ => \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[7]\ => axi_read_fsm_n_8,
      \gaxi_full_sm.arlen_cntr_reg[7]_0\(7 downto 0) => arlen_cntr(7 downto 0),
      \gaxi_full_sm.arlen_cntr_reg[7]_1\ => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\,
      \gaxi_full_sm.arlen_cntr_reg[7]_2\ => \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(9) => axi_read_fsm_n_32,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(8) => axi_read_fsm_n_33,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(7) => axi_read_fsm_n_34,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(6) => axi_read_fsm_n_35,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(5) => axi_read_fsm_n_36,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(4) => axi_read_fsm_n_37,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(3) => axi_read_fsm_n_38,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(2) => axi_read_fsm_n_39,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(1) => axi_read_fsm_n_40,
      \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\(0) => axi_read_fsm_n_41,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(9) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(8) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(7) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(6) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(5) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(4) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(3) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(2) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(1) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\(0) => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2]\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0\ => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\ => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0]\(0) => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1]\ => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0\,
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(2) => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2]\,
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(1) => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1]\,
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\(0) => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0]\,
      \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0\ => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0\,
      \gaxi_full_sm.r_valid_r_reg_0\ => \gaxi_full_sm.r_valid_r_reg\,
      \gaxi_full_sm.r_valid_r_reg_1\ => axi_read_fsm_n_5,
      \grid.S_AXI_RID_reg[3]\(3 downto 0) => ar_id_r(3 downto 0),
      incr_en_r => incr_en_r,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_aresetn_0(0) => axi_read_fsm_n_4,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      \s_axi_arburst[1]\(0) => p_2_out,
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      \s_axi_arid[3]\(3) => axi_read_fsm_n_23,
      \s_axi_arid[3]\(2) => axi_read_fsm_n_24,
      \s_axi_arid[3]\(1) => axi_read_fsm_n_25,
      \s_axi_arid[3]\(0) => axi_read_fsm_n_26,
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      \s_axi_arlen[7]\(7) => axi_read_fsm_n_14,
      \s_axi_arlen[7]\(6) => axi_read_fsm_n_15,
      \s_axi_arlen[7]\(5) => axi_read_fsm_n_16,
      \s_axi_arlen[7]\(4) => axi_read_fsm_n_17,
      \s_axi_arlen[7]\(3) => axi_read_fsm_n_18,
      \s_axi_arlen[7]\(2) => axi_read_fsm_n_19,
      \s_axi_arlen[7]\(1) => axi_read_fsm_n_20,
      \s_axi_arlen[7]\(0) => axi_read_fsm_n_21,
      s_axi_arlen_1_sp_1 => axi_read_fsm_n_9,
      s_axi_arlen_2_sp_1 => axi_read_fsm_n_10,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arvalid_0 => axi_read_fsm_n_7,
      s_axi_arvalid_1(0) => axi_read_fsm_n_30,
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready
    );
\gaxi_full_sm.arlen_cntr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => arlen_cntr(0),
      I1 => arlen_cntr(1),
      I2 => arlen_cntr(2),
      O => \gaxi_full_sm.arlen_cntr[3]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => arlen_cntr(2),
      I1 => arlen_cntr(1),
      I2 => arlen_cntr(0),
      I3 => arlen_cntr(3),
      O => \gaxi_full_sm.arlen_cntr[4]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(2),
      O => \gaxi_full_sm.arlen_cntr[5]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => arlen_cntr(5),
      I1 => arlen_cntr(4),
      I2 => arlen_cntr(2),
      I3 => arlen_cntr(1),
      I4 => arlen_cntr(0),
      I5 => arlen_cntr(3),
      O => \gaxi_full_sm.arlen_cntr[5]_i_3_n_0\
    );
\gaxi_full_sm.arlen_cntr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(4),
      I5 => s_axi_arlen(5),
      O => \gaxi_full_sm.arlen_cntr[6]_i_2_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => axi_read_fsm_n_10,
      I1 => s_axi_arlen(6),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(5),
      I4 => s_axi_arlen(4),
      O => \gaxi_full_sm.arlen_cntr[7]_i_3_n_0\
    );
\gaxi_full_sm.arlen_cntr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_read_fsm_n_22,
      I1 => arlen_cntr(6),
      O => \gaxi_full_sm.arlen_cntr[7]_i_4_n_0\
    );
\gaxi_full_sm.arlen_cntr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_21,
      Q => arlen_cntr(0),
      S => \^ss\(0)
    );
\gaxi_full_sm.arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_20,
      Q => arlen_cntr(1),
      R => \^ss\(0)
    );
\gaxi_full_sm.arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_19,
      Q => arlen_cntr(2),
      R => \^ss\(0)
    );
\gaxi_full_sm.arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_18,
      Q => arlen_cntr(3),
      R => \^ss\(0)
    );
\gaxi_full_sm.arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_17,
      Q => arlen_cntr(4),
      R => \^ss\(0)
    );
\gaxi_full_sm.arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_16,
      Q => arlen_cntr(5),
      R => \^ss\(0)
    );
\gaxi_full_sm.arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_15,
      Q => arlen_cntr(6),
      R => \^ss\(0)
    );
\gaxi_full_sm.arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_29,
      D => axi_read_fsm_n_14,
      Q => arlen_cntr(7),
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABABBAAAAAAAA"
    )
        port map (
      I0 => p_2_out,
      I1 => axi_read_fsm_n_5,
      I2 => axi_read_fsm_n_6,
      I3 => axi_read_fsm_n_9,
      I4 => axi_read_fsm_n_8,
      I5 => addr_cnt_enb_r(11),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\,
      I2 => s_axi_arlen(1),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arsize(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000111"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\,
      I2 => s_axi_arlen(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(2),
      I5 => s_axi_arsize(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000010003000B"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(2),
      I2 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\,
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arsize(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00101111001F113F"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arlen(1),
      I3 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\,
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(2),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000F020FFFFF"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(2),
      I5 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\,
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515FFFF151515FF"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(2),
      I4 => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\,
      I5 => s_axi_arlen(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(4),
      I4 => s_axi_arlen(0),
      I5 => s_axi_arlen(7),
      O => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1_n_0\,
      Q => addr_cnt_enb_r(11),
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out,
      D => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0\,
      Q => addr_cnt_enb_r(1),
      R => axi_read_fsm_n_4
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out,
      D => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0\,
      Q => addr_cnt_enb_r(2),
      R => axi_read_fsm_n_4
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out,
      D => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0\,
      Q => addr_cnt_enb_r(3),
      R => axi_read_fsm_n_4
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out,
      D => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0\,
      Q => addr_cnt_enb_r(4),
      R => axi_read_fsm_n_4
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out,
      D => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0\,
      Q => addr_cnt_enb_r(5),
      R => axi_read_fsm_n_4
    );
\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_2_out,
      D => \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0\,
      Q => addr_cnt_enb_r(6),
      R => axi_read_fsm_n_4
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_rready,
      I1 => axi_read_fsm_n_22,
      I2 => arlen_cntr(6),
      I3 => arlen_cntr(7),
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10]\,
      I1 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8]\,
      I2 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\,
      I4 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7]\,
      I5 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7]\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0\,
      I2 => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\,
      O => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_33,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_32,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_41,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_40,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_39,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_38,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_37,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_36,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_35,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_34,
      Q => \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0\,
      Q => incr_en_r,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCFD"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0FF57"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_13,
      Q => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_12,
      Q => \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_30,
      D => axi_read_fsm_n_11,
      Q => p_0_in3_in,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      O => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1_n_0\
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0\,
      Q => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0\,
      Q => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1]\,
      R => \^ss\(0)
    );
\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1_n_0\,
      Q => \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2]\,
      R => \^ss\(0)
    );
\grid.S_AXI_RID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_28,
      D => axi_read_fsm_n_26,
      Q => s_axi_rid(0),
      R => \^ss\(0)
    );
\grid.S_AXI_RID_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_28,
      D => axi_read_fsm_n_25,
      Q => s_axi_rid(1),
      R => \^ss\(0)
    );
\grid.S_AXI_RID_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_28,
      D => axi_read_fsm_n_24,
      Q => s_axi_rid(2),
      R => \^ss\(0)
    );
\grid.S_AXI_RID_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_28,
      D => axi_read_fsm_n_23,
      Q => s_axi_rid(3),
      R => \^ss\(0)
    );
\grid.ar_id_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => s_axi_arid(0),
      Q => ar_id_r(0),
      R => \^ss\(0)
    );
\grid.ar_id_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => s_axi_arid(1),
      Q => ar_id_r(1),
      R => \^ss\(0)
    );
\grid.ar_id_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => s_axi_arid(2),
      Q => ar_id_r(2),
      R => \^ss\(0)
    );
\grid.ar_id_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_read_fsm_n_7,
      D => s_axi_arid(3),
      Q => ar_id_r(3),
      R => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \gaxi_bvalid_id_r.bvalid_r_reg_0\ : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ENA_I : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ENA_dly_D : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal CONV_INTEGER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0\ : STD_LOGIC;
  signal addr_en_c : STD_LOGIC;
  signal axi_wr_fsm_n_17 : STD_LOGIC;
  signal axi_wr_fsm_n_2 : STD_LOGIC;
  signal axi_wr_fsm_n_22 : STD_LOGIC;
  signal axi_wr_fsm_n_23 : STD_LOGIC;
  signal axi_wr_fsm_n_24 : STD_LOGIC;
  signal axi_wr_fsm_n_25 : STD_LOGIC;
  signal axi_wr_fsm_n_26 : STD_LOGIC;
  signal axi_wr_fsm_n_27 : STD_LOGIC;
  signal axi_wr_fsm_n_28 : STD_LOGIC;
  signal axi_wr_fsm_n_29 : STD_LOGIC;
  signal axi_wr_fsm_n_3 : STD_LOGIC;
  signal axi_wr_fsm_n_30 : STD_LOGIC;
  signal axi_wr_fsm_n_31 : STD_LOGIC;
  signal axi_wr_fsm_n_33 : STD_LOGIC;
  signal axi_wr_fsm_n_35 : STD_LOGIC;
  signal axi_wr_fsm_n_36 : STD_LOGIC;
  signal axi_wr_fsm_n_37 : STD_LOGIC;
  signal axi_wr_fsm_n_4 : STD_LOGIC;
  signal axi_wr_fsm_n_5 : STD_LOGIC;
  signal axi_wr_fsm_n_8 : STD_LOGIC;
  signal bmg_address_r : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal bvalid_c : STD_LOGIC;
  signal \bvalid_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \bvalid_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal bvalid_d1_c : STD_LOGIC;
  signal bvalid_rd_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bvalid_wr_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_0\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_1\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_2\ : STD_LOGIC;
  signal \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_3\ : STD_LOGIC;
  signal \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\ : STD_LOGIC;
  signal \^gaxi_bvalid_id_r.bvalid_r_reg_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.next_address_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \gaxif_wlast_gen.awlen_cntr_r_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal incr_en_r : STD_LOGIC;
  signal next_address_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal num_of_bytes_c : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_4_out : STD_LOGIC;
  signal present_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is 16;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is "inst_blk_mem_gen/gnbram.gaxibmg.axi_wr_fsm/gaxi_bid_gen.axi_bid_array";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\ : label is 3;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.incr_en_r_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.next_address_r[1]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.next_address_r[2]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gaxif_wlast_gen.awlen_cntr_r[4]_i_2\ : label is "soft_lutpair20";
begin
  ADDRARDADDR(9 downto 0) <= \^addrardaddr\(9 downto 0);
  \gaxi_bvalid_id_r.bvalid_r_reg_0\ <= \^gaxi_bvalid_id_r.bvalid_r_reg_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => bmg_address_r(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0\,
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5]\,
      O => \^addrardaddr\(3)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => bmg_address_r(4),
      I1 => bmg_address_r(2),
      I2 => incr_en_r,
      I3 => p_0_in5_in,
      I4 => bmg_address_r(3),
      I5 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4]\,
      O => \^addrardaddr\(2)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => bmg_address_r(3),
      I1 => p_0_in5_in,
      I2 => incr_en_r,
      I3 => bmg_address_r(2),
      I4 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3]\,
      O => \^addrardaddr\(1)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => bmg_address_r(2),
      I1 => incr_en_r,
      I2 => p_0_in5_in,
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2]\,
      O => \^addrardaddr\(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => bmg_address_r(9),
      I1 => bmg_address_r(8),
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I3 => bmg_address_r(6),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\,
      I5 => bmg_address_r(7),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => bmg_address_r(4),
      I1 => bmg_address_r(2),
      I2 => incr_en_r,
      I3 => p_0_in5_in,
      I4 => bmg_address_r(3),
      I5 => bmg_address_r(5),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I1 => bmg_address_r(6),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => bmg_address_r(3),
      I1 => p_0_in5_in,
      I2 => incr_en_r,
      I3 => bmg_address_r(2),
      I4 => bmg_address_r(4),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bmg_address_r(11),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      I2 => bmg_address_r(10),
      O => \^addrardaddr\(9)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6AAAAAAAAAAAA"
    )
        port map (
      I0 => bmg_address_r(10),
      I1 => bmg_address_r(7),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0\,
      I4 => bmg_address_r(8),
      I5 => bmg_address_r(9),
      O => \^addrardaddr\(8)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00200000"
    )
        port map (
      I0 => bmg_address_r(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\,
      I2 => bmg_address_r(6),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I4 => bmg_address_r(8),
      I5 => bmg_address_r(9),
      O => \^addrardaddr\(7)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAAAA"
    )
        port map (
      I0 => bmg_address_r(8),
      I1 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      I2 => bmg_address_r(6),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\,
      I4 => bmg_address_r(7),
      O => \^addrardaddr\(6)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => bmg_address_r(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\,
      I2 => bmg_address_r(6),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      O => \^addrardaddr\(5)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => bmg_address_r(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0\,
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6]\,
      O => \^addrardaddr\(4)
    );
axi_wr_fsm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm
     port map (
      ADDRARDADDR(8 downto 0) => \^addrardaddr\(8 downto 0),
      D(7 downto 0) => p_0_in(7 downto 0),
      E(0) => axi_wr_fsm_n_8,
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0\ => axi_wr_fsm_n_3,
      \FSM_sequential_gaxi_full_sm.present_state_reg[0]_1\(0) => p_4_out,
      \FSM_sequential_gaxi_full_sm.present_state_reg[0]_2\(2 downto 0) => next_address_r(2 downto 0),
      \FSM_sequential_gaxi_full_sm.present_state_reg[0]_3\ => \bvalid_count_r_reg_n_0_[0]\,
      \FSM_sequential_gaxi_full_sm.present_state_reg[0]_4\ => \bvalid_count_r_reg_n_0_[2]\,
      \FSM_sequential_gaxi_full_sm.present_state_reg[0]_5\ => \bvalid_count_r_reg_n_0_[1]\,
      \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0\(0) => addr_en_c,
      I17 => axi_wr_fsm_n_33,
      Q(0) => present_state(1),
      SR(0) => axi_wr_fsm_n_2,
      SS(0) => SS(0),
      bvalid_c => bvalid_c,
      \bvalid_count_r_reg[0]\ => axi_wr_fsm_n_4,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\ => axi_wr_fsm_n_36,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0\ => axi_wr_fsm_n_37,
      \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\(1 downto 0) => bvalid_wr_cnt_r(1 downto 0),
      \gaxi_bvalid_id_r.bvalid_d1_c_reg\(7 downto 0) => \gaxif_wlast_gen.awlen_cntr_r_reg\(7 downto 0),
      \gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\ => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0\,
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]\(1 downto 0) => bmg_address_r(11 downto 10),
      \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0\,
      \gaxif_ms_addr_gen.next_address_r_reg[0]\(0) => p_1_in(0),
      \gaxif_ms_addr_gen.next_address_r_reg[0]_0\(0) => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\,
      \gaxif_ms_addr_gen.next_address_r_reg[1]\ => \gaxif_ms_addr_gen.next_address_r[1]_i_2_n_0\,
      \gaxif_ms_addr_gen.next_address_r_reg[2]\ => \gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[2]\ => \gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[3]\ => \gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[4]\ => \gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[5]\ => axi_wr_fsm_n_17,
      \gaxif_wlast_gen.awlen_cntr_r_reg[5]_0\ => \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0\,
      \gaxif_wlast_gen.awlen_cntr_r_reg[7]\ => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      \s_axi_awaddr[11]\(9) => axi_wr_fsm_n_22,
      \s_axi_awaddr[11]\(8) => axi_wr_fsm_n_23,
      \s_axi_awaddr[11]\(7) => axi_wr_fsm_n_24,
      \s_axi_awaddr[11]\(6) => axi_wr_fsm_n_25,
      \s_axi_awaddr[11]\(5) => axi_wr_fsm_n_26,
      \s_axi_awaddr[11]\(4) => axi_wr_fsm_n_27,
      \s_axi_awaddr[11]\(3) => axi_wr_fsm_n_28,
      \s_axi_awaddr[11]\(2) => axi_wr_fsm_n_29,
      \s_axi_awaddr[11]\(1) => axi_wr_fsm_n_30,
      \s_axi_awaddr[11]\(0) => axi_wr_fsm_n_31,
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => axi_wr_fsm_n_5,
      s_axi_wvalid_1(0) => axi_wr_fsm_n_35
    );
\bvalid_count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"959595956A6A6A2A"
    )
        port map (
      I0 => bvalid_c,
      I1 => \^gaxi_bvalid_id_r.bvalid_r_reg_0\,
      I2 => s_axi_bready,
      I3 => \bvalid_count_r_reg_n_0_[2]\,
      I4 => \bvalid_count_r_reg_n_0_[1]\,
      I5 => \bvalid_count_r_reg_n_0_[0]\,
      O => \bvalid_count_r[0]_i_1_n_0\
    );
\bvalid_count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA5A5A5AA4AAAAAA"
    )
        port map (
      I0 => \bvalid_count_r_reg_n_0_[1]\,
      I1 => \bvalid_count_r_reg_n_0_[2]\,
      I2 => \bvalid_count_r_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^gaxi_bvalid_id_r.bvalid_r_reg_0\,
      I5 => bvalid_c,
      O => \bvalid_count_r[1]_i_1_n_0\
    );
\bvalid_count_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC6C6C6CC8CCCCCC"
    )
        port map (
      I0 => \bvalid_count_r_reg_n_0_[1]\,
      I1 => \bvalid_count_r_reg_n_0_[2]\,
      I2 => \bvalid_count_r_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^gaxi_bvalid_id_r.bvalid_r_reg_0\,
      I5 => bvalid_c,
      O => \bvalid_count_r[2]_i_1_n_0\
    );
\bvalid_count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \bvalid_count_r[0]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[0]\,
      R => SS(0)
    );
\bvalid_count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \bvalid_count_r[1]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[1]\,
      R => SS(0)
    );
\bvalid_count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \bvalid_count_r[2]_i_1_n_0\,
      Q => \bvalid_count_r_reg_n_0_[2]\,
      R => SS(0)
    );
\gaxi_bid_gen.S_AXI_BID_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_1\,
      Q => s_axi_bid(0),
      R => '0'
    );
\gaxi_bid_gen.S_AXI_BID_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_0\,
      Q => s_axi_bid(1),
      R => '0'
    );
\gaxi_bid_gen.S_AXI_BID_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_3\,
      Q => s_axi_bid(2),
      R => '0'
    );
\gaxi_bid_gen.S_AXI_BID_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => s_aresetn,
      D => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_2\,
      Q => s_axi_bid(3),
      R => '0'
    );
\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => CONV_INTEGER(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => CONV_INTEGER(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => CONV_INTEGER(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => bvalid_wr_cnt_r(1 downto 0),
      DIA(1 downto 0) => s_axi_awid(1 downto 0),
      DIB(1 downto 0) => s_axi_awid(3 downto 2),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_0\,
      DOA(0) => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_1\,
      DOB(1) => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_2\,
      DOB(0) => \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_3\,
      DOC(1 downto 0) => \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOD_UNCONNECTED\(1 downto 0),
      WCLK => s_aclk,
      WE => axi_wr_fsm_n_33
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bvalid_rd_cnt_r(0),
      I1 => \^gaxi_bvalid_id_r.bvalid_r_reg_0\,
      I2 => s_axi_bready,
      O => CONV_INTEGER(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bvalid_rd_cnt_r(1),
      I1 => s_axi_bready,
      I2 => \^gaxi_bvalid_id_r.bvalid_r_reg_0\,
      I3 => bvalid_rd_cnt_r(0),
      O => CONV_INTEGER(1)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => CONV_INTEGER(0),
      Q => bvalid_rd_cnt_r(0),
      R => SS(0)
    );
\gaxi_bid_gen.bvalid_rd_cnt_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => CONV_INTEGER(1),
      Q => bvalid_rd_cnt_r(1),
      R => SS(0)
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => axi_wr_fsm_n_37,
      Q => bvalid_wr_cnt_r(0),
      R => SS(0)
    );
\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => axi_wr_fsm_n_36,
      Q => bvalid_wr_cnt_r(1),
      R => SS(0)
    );
\gaxi_bvalid_id_r.bvalid_d1_c_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => bvalid_c,
      Q => bvalid_d1_c,
      R => SS(0)
    );
\gaxi_bvalid_id_r.bvalid_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAAAA"
    )
        port map (
      I0 => bvalid_d1_c,
      I1 => \bvalid_count_r_reg_n_0_[1]\,
      I2 => \bvalid_count_r_reg_n_0_[2]\,
      I3 => s_axi_bready,
      I4 => \^gaxi_bvalid_id_r.bvalid_r_reg_0\,
      O => \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\
    );
\gaxi_bvalid_id_r.bvalid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gaxi_bvalid_id_r.bvalid_r_i_1_n_0\,
      Q => \^gaxi_bvalid_id_r.bvalid_r_reg_0\,
      R => SS(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F1F5F00001151"
    )
        port map (
      I0 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0\,
      I1 => present_state(1),
      I2 => axi_wr_fsm_n_5,
      I3 => axi_wr_fsm_n_4,
      I4 => axi_wr_fsm_n_3,
      I5 => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      O => \gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000111"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0\,
      I2 => s_axi_awlen(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000110013"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0\,
      I4 => s_axi_awlen(1),
      I5 => s_axi_awlen(2),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005000501053F37"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(0),
      I2 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0\,
      I3 => s_axi_awlen(1),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00553377005533F7"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(1),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0\,
      I4 => s_axi_awsize(2),
      I5 => s_axi_awsize(0),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F533F700F5FFFF"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(1),
      I3 => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0\,
      I4 => s_axi_awsize(2),
      I5 => s_axi_awsize(0),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awlen(4),
      I4 => s_axi_awlen(3),
      I5 => s_axi_awlen(0),
      O => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0\
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1_n_0\,
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11]\,
      R => SS(0)
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_4_out,
      D => \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0\,
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2]\,
      R => axi_wr_fsm_n_2
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_4_out,
      D => \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0\,
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3]\,
      R => axi_wr_fsm_n_2
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_4_out,
      D => \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0\,
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4]\,
      R => axi_wr_fsm_n_2
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_4_out,
      D => \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0\,
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5]\,
      R => axi_wr_fsm_n_2
    );
\gaxif_ms_addr_gen.addr_cnt_enb_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => p_4_out,
      D => \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0\,
      Q => \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6]\,
      R => axi_wr_fsm_n_2
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_23,
      Q => bmg_address_r(10),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_22,
      Q => bmg_address_r(11),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_31,
      Q => bmg_address_r(2),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_30,
      Q => bmg_address_r(3),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_29,
      Q => bmg_address_r(4),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_28,
      Q => bmg_address_r(5),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_27,
      Q => bmg_address_r(6),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_26,
      Q => bmg_address_r(7),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_25,
      Q => bmg_address_r(8),
      R => SS(0)
    );
\gaxif_ms_addr_gen.bmg_address_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => axi_wr_fsm_n_24,
      Q => bmg_address_r(9),
      R => SS(0)
    );
\gaxif_ms_addr_gen.incr_en_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      O => p_0_out
    );
\gaxif_ms_addr_gen.incr_en_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      D => p_0_out,
      Q => incr_en_r,
      R => SS(0)
    );
\gaxif_ms_addr_gen.next_address_r[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\,
      I1 => p_1_in(0),
      I2 => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1]\,
      I3 => p_1_in(1),
      O => \gaxif_ms_addr_gen.next_address_r[1]_i_2_n_0\
    );
\gaxif_ms_addr_gen.next_address_r[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"566A6A6A"
    )
        port map (
      I0 => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2]\,
      I1 => p_1_in(1),
      I2 => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1]\,
      I3 => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\,
      I4 => p_1_in(0),
      O => \gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0\
    );
\gaxif_ms_addr_gen.next_address_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => next_address_r(0),
      Q => p_1_in(0),
      R => SS(0)
    );
\gaxif_ms_addr_gen.next_address_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => next_address_r(1),
      Q => p_1_in(1),
      R => SS(0)
    );
\gaxif_ms_addr_gen.next_address_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_8,
      D => next_address_r(2),
      Q => p_0_in5_in,
      R => SS(0)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => num_of_bytes_c(0)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => num_of_bytes_c(1)
    );
\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => num_of_bytes_c(2)
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      D => num_of_bytes_c(0),
      Q => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0]\,
      R => SS(0)
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      D => num_of_bytes_c(1),
      Q => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1]\,
      R => SS(0)
    );
\gaxif_ms_addr_gen.num_of_bytes_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => addr_en_c,
      D => num_of_bytes_c(2),
      Q => \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2]\,
      R => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg\(1),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg\(0),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg\(2),
      O => \gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg\(2),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg\(0),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg\(1),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg\(3),
      O => \gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg\(3),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg\(1),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg\(0),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg\(2),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg\(4),
      O => \gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg\(4),
      I1 => \gaxif_wlast_gen.awlen_cntr_r_reg\(2),
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg\(0),
      I3 => \gaxif_wlast_gen.awlen_cntr_r_reg\(1),
      I4 => \gaxif_wlast_gen.awlen_cntr_r_reg\(3),
      I5 => \gaxif_wlast_gen.awlen_cntr_r_reg\(5),
      O => \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \gaxif_wlast_gen.awlen_cntr_r_reg\(6),
      I1 => axi_wr_fsm_n_17,
      I2 => \gaxif_wlast_gen.awlen_cntr_r_reg\(7),
      O => \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0\
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(0),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(0),
      S => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(1),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(1),
      S => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(2),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(2),
      S => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(3),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(3),
      S => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(4),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(4),
      S => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(5),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(5),
      S => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(6),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(6),
      S => SS(0)
    );
\gaxif_wlast_gen.awlen_cntr_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => axi_wr_fsm_n_35,
      D => p_0_in(7),
      Q => \gaxif_wlast_gen.awlen_cntr_r_reg\(7),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENA_dly_D : out STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  signal ENA_dly : STD_LOGIC;
  signal \^ena_dly_d\ : STD_LOGIC;
  signal ENB_dly : STD_LOGIC;
  signal \^enb_dly_d\ : STD_LOGIC;
  signal POR_A : STD_LOGIC;
  signal RSTA_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal ram_rstram_a_busy : STD_LOGIC;
  signal ram_rstram_b : STD_LOGIC;
  signal ram_rstram_b_busy : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\inst_blk_mem_gen/gnbram.gaxibmg.axi_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\inst_blk_mem_gen/gnbram.gaxibmg.axi_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 ";
begin
  ENA_dly_D <= \^ena_dly_d\;
  ENB_dly_D <= \^enb_dly_d\;
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ENA_dly,
      Q => \^ena_dly_d\,
      R => '0'
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => POR_A,
      Q => ENA_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ENB_dly,
      Q => \^enb_dly_d\,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_rstram_b,
      Q => ENB_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_A_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTA_SHFT_REG(0),
      I1 => RSTA_SHFT_REG(4),
      O => p_3_out
    );
\SAFETY_CKT_GEN.POR_A_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_3_out,
      Q => POR_A,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_BUSY_NO_REG.RSTA_BUSY_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ENA_dly,
      I1 => \^ena_dly_d\,
      I2 => POR_A,
      O => ram_rstram_a_busy
    );
\SAFETY_CKT_GEN.RSTA_BUSY_NO_REG.RSTA_BUSY_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => '1',
      D => ram_rstram_a_busy,
      Q => rsta_busy,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => '1',
      Q => RSTA_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => s_aclk,
      D => RSTA_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTA_SHFT_REG(4),
      R => '0'
    );
\SAFETY_CKT_GEN.nSPRAM_RST_BUSY.RSTB_BUSY_NO_REG.RSTB_BUSY_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => s_aresetn,
      I1 => POR_A,
      I2 => ENB_dly,
      I3 => \^enb_dly_d\,
      O => ram_rstram_b_busy
    );
\SAFETY_CKT_GEN.nSPRAM_RST_BUSY.RSTB_BUSY_NO_REG.RSTB_BUSY_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_aclk,
      CE => '1',
      D => ram_rstram_b_busy,
      Q => rstb_busy,
      R => '0'
    );
\prim_init.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      ram_rstram_b => ram_rstram_b,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENA_dly_D : out STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      rsta_busy => rsta_busy,
      rstb_busy => rstb_busy,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ENA_dly_D : out STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      ADDRARDADDR(9 downto 0) => ADDRARDADDR(9 downto 0),
      ADDRBWRADDR(9 downto 0) => ADDRBWRADDR(9 downto 0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      rsta_busy => rsta_busy,
      rstb_busy => rstb_busy,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3_synth is
  port (
    \gaxi_full_sm.r_valid_r_reg\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \gaxi_bvalid_id_r.bvalid_r_reg\ : out STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3_synth is
  signal s_aresetn_a_c : STD_LOGIC;
  signal s_axi_araddr_out_c : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal s_axi_awaddr_out_c : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \valid.cstr/ramloop[0].ram.r/ENA_I\ : STD_LOGIC;
  signal \valid.cstr/ramloop[0].ram.r/ENA_dly_D\ : STD_LOGIC;
  signal \valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \valid.cstr/ramloop[0].ram.r/ENB_dly_D\ : STD_LOGIC;
begin
\gnbram.gaxibmg.axi_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      ADDRARDADDR(9 downto 0) => s_axi_awaddr_out_c(9 downto 0),
      ADDRBWRADDR(9 downto 0) => s_axi_araddr_out_c(9 downto 0),
      ENA_I => \valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENA_dly_D => \valid.cstr/ramloop[0].ram.r/ENA_dly_D\,
      ENB_I => \valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      rsta_busy => rsta_busy,
      rstb_busy => rstb_busy,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
\gnbram.gaxibmg.axi_rd_sm\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper
     port map (
      ADDRBWRADDR(9 downto 0) => s_axi_araddr_out_c(9 downto 0),
      ENB_I => \valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      SS(0) => s_aresetn_a_c,
      \gaxi_full_sm.r_valid_r_reg\ => \gaxi_full_sm.r_valid_r_reg\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready
    );
\gnbram.gaxibmg.axi_wr_fsm\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper
     port map (
      ADDRARDADDR(9 downto 0) => s_axi_awaddr_out_c(9 downto 0),
      ENA_I => \valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENA_dly_D => \valid.cstr/ramloop[0].ram.r/ENA_dly_D\,
      SS(0) => s_aresetn_a_c,
      \gaxi_bvalid_id_r.bvalid_r_reg_0\ => \gaxi_bvalid_id_r.bvalid_r_reg\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "Estimated Power for IP     :     5.96515 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "main_memory.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "main_memory.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 4;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 4;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "READ_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3_synth
     port map (
      \gaxi_bvalid_id_r.bvalid_r_reg\ => s_axi_bvalid,
      \gaxi_full_sm.r_valid_r_reg\ => s_axi_rvalid,
      rsta_busy => rsta_busy,
      rstb_busy => rstb_busy,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "main_memory,blk_mem_gen_v8_4_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_4_3,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 10;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 10;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     5.96515 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 1;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 1;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "main_memory.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "main_memory.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 1;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1024;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1024;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 4;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 4;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1024;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1024;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "READ_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of s_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_aclk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF AXI_SLAVE_S_AXI:AXILite_SLAVE_S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of s_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute x_interface_parameter of s_aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARBURST";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARLEN";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWBURST";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWID";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME AXI_SLAVE_S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWLEN";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WSTRB";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_3
     port map (
      addra(9 downto 0) => B"0000000000",
      addrb(9 downto 0) => B"0000000000",
      clka => '0',
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => B"00000000000000000000000000000000",
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => NLW_U0_douta_UNCONNECTED(31 downto 0),
      doutb(31 downto 0) => NLW_U0_doutb_UNCONNECTED(31 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(9 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(9 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => rsta_busy,
      rstb => '0',
      rstb_busy => rstb_busy,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(9 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(9 downto 0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(3 downto 0) => B"0000",
      web(3 downto 0) => B"0000"
    );
end STRUCTURE;
