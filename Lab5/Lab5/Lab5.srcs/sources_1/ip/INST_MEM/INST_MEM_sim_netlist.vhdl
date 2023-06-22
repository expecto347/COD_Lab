-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed May 31 20:34:08 2023
-- Host        : VM5818-Ubuntu running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /root/COD_Lab/Lab5/Lab5/Lab5.srcs/sources_1/ip/INST_MEM/INST_MEM_sim_netlist.vhdl
-- Design      : INST_MEM
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity INST_MEM_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 30 downto 0 );
    a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of INST_MEM_rom : entity is "rom";
end INST_MEM_rom;

architecture STRUCTURE of INST_MEM_rom is
  signal \spo[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[9]_INST_0_i_6_n_0\ : STD_LOGIC;
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FFFFFFFFFFFF"
    )
        port map (
      I0 => a(6),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      I4 => a(5),
      I5 => a(7),
      O => spo(0)
    );
\spo[10]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[10]_INST_0_i_1_n_0\,
      I1 => \spo[10]_INST_0_i_2_n_0\,
      O => spo(9),
      S => a(7)
    );
\spo[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_3_n_0\,
      I1 => \spo[10]_INST_0_i_4_n_0\,
      O => \spo[10]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[10]_INST_0_i_5_n_0\,
      I1 => \spo[10]_INST_0_i_6_n_0\,
      O => \spo[10]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F937FFDDABB9DCF7"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[10]_INST_0_i_3_n_0\
    );
\spo[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6777BB395B37FBF7"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(1),
      I4 => a(3),
      I5 => a(2),
      O => \spo[10]_INST_0_i_4_n_0\
    );
\spo[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"023C63406F5D2BEC"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[10]_INST_0_i_5_n_0\
    );
\spo[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1004045445575744"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[10]_INST_0_i_6_n_0\
    );
\spo[11]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[11]_INST_0_i_1_n_0\,
      I1 => \spo[11]_INST_0_i_2_n_0\,
      O => spo(10),
      S => a(7)
    );
\spo[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_3_n_0\,
      I1 => \spo[11]_INST_0_i_4_n_0\,
      O => \spo[11]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[11]_INST_0_i_5_n_0\,
      I1 => \spo[11]_INST_0_i_6_n_0\,
      O => \spo[11]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9377FDD23B9DCF7"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[11]_INST_0_i_3_n_0\
    );
\spo[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C26BC04CBA1D885"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[11]_INST_0_i_4_n_0\
    );
\spo[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2AC63E0605028E5"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[11]_INST_0_i_5_n_0\
    );
\spo[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001C385604"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(3),
      I3 => a(2),
      I4 => a(4),
      I5 => a(5),
      O => \spo[11]_INST_0_i_6_n_0\
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \spo[12]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => \spo[12]_INST_0_i_2_n_0\,
      I3 => a(6),
      I4 => \spo[12]_INST_0_i_3_n_0\,
      O => spo(11)
    );
\spo[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020004000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[12]_INST_0_i_1_n_0\
    );
\spo[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000408202000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[12]_INST_0_i_2_n_0\
    );
\spo[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000820"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[12]_INST_0_i_3_n_0\
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \spo[13]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => \spo[13]_INST_0_i_2_n_0\,
      I3 => a(6),
      I4 => \spo[13]_INST_0_i_3_n_0\,
      O => spo(12)
    );
\spo[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000400005000048"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      I5 => a(2),
      O => \spo[13]_INST_0_i_1_n_0\
    );
\spo[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A09006000AA8000"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(4),
      O => \spo[13]_INST_0_i_2_n_0\
    );
\spo[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28C0001000000000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[13]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[14]_INST_0_i_1_n_0\,
      I1 => \spo[14]_INST_0_i_2_n_0\,
      O => spo(13),
      S => a(7)
    );
\spo[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_3_n_0\,
      I1 => \spo[14]_INST_0_i_4_n_0\,
      O => \spo[14]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[14]_INST_0_i_5_n_0\,
      I1 => \spo[14]_INST_0_i_6_n_0\,
      O => \spo[14]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040010000000000"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[14]_INST_0_i_3_n_0\
    );
\spo[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000408000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[14]_INST_0_i_4_n_0\
    );
\spo[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A111020000CC2008"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(1),
      O => \spo[14]_INST_0_i_5_n_0\
    );
\spo[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A004100"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[14]_INST_0_i_6_n_0\
    );
\spo[15]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[15]_INST_0_i_1_n_0\,
      I1 => \spo[15]_INST_0_i_2_n_0\,
      O => spo(14),
      S => a(7)
    );
\spo[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[15]_INST_0_i_3_n_0\,
      I1 => \spo[15]_INST_0_i_4_n_0\,
      O => \spo[15]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[15]_INST_0_i_5_n_0\,
      I1 => \spo[15]_INST_0_i_6_n_0\,
      O => \spo[15]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300400000840048"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(0),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[15]_INST_0_i_3_n_0\
    );
\spo[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8026C84190024400"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[15]_INST_0_i_4_n_0\
    );
\spo[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2084022019010520"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(2),
      O => \spo[15]_INST_0_i_5_n_0\
    );
\spo[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4415510610040042"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(3),
      I5 => a(1),
      O => \spo[15]_INST_0_i_6_n_0\
    );
\spo[16]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[16]_INST_0_i_1_n_0\,
      I1 => \spo[16]_INST_0_i_2_n_0\,
      O => spo(15),
      S => a(7)
    );
\spo[16]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_3_n_0\,
      I1 => \spo[16]_INST_0_i_4_n_0\,
      O => \spo[16]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[16]_INST_0_i_5_n_0\,
      I1 => \spo[16]_INST_0_i_6_n_0\,
      O => \spo[16]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220082088034618"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[16]_INST_0_i_3_n_0\
    );
\spo[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E9304854E401C010"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[16]_INST_0_i_4_n_0\
    );
\spo[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9080800005408220"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(3),
      I5 => a(2),
      O => \spo[16]_INST_0_i_5_n_0\
    );
\spo[16]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4144440611014546"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[16]_INST_0_i_6_n_0\
    );
\spo[17]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[17]_INST_0_i_1_n_0\,
      I1 => \spo[17]_INST_0_i_2_n_0\,
      O => spo(16),
      S => a(7)
    );
\spo[17]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_3_n_0\,
      I1 => \spo[17]_INST_0_i_4_n_0\,
      O => \spo[17]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[17]_INST_0_i_5_n_0\,
      I1 => \spo[17]_INST_0_i_6_n_0\,
      O => \spo[17]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02200822D8034218"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[17]_INST_0_i_3_n_0\
    );
\spo[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60E7C8D230825600"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[17]_INST_0_i_4_n_0\
    );
\spo[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000002010080004"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(4),
      O => \spo[17]_INST_0_i_5_n_0\
    );
\spo[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4115410554011202"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[17]_INST_0_i_6_n_0\
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \spo[18]_INST_0_i_1_n_0\,
      I1 => a(7),
      I2 => \spo[18]_INST_0_i_2_n_0\,
      I3 => a(6),
      I4 => \spo[19]_INST_0_i_4_n_0\,
      O => spo(17)
    );
\spo[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001F574000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[18]_INST_0_i_1_n_0\
    );
\spo[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69309806E3838300"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[18]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[19]_INST_0_i_1_n_0\,
      I1 => \spo[19]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[19]_INST_0_i_3_n_0\,
      I4 => a(6),
      I5 => \spo[19]_INST_0_i_4_n_0\,
      O => spo(18)
    );
\spo[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001C504000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[19]_INST_0_i_1_n_0\
    );
\spo[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(5),
      O => \spo[19]_INST_0_i_2_n_0\
    );
\spo[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4C0800040000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(2),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[19]_INST_0_i_3_n_0\
    );
\spo[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000098014210"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[19]_INST_0_i_4_n_0\
    );
\spo[20]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[20]_INST_0_i_1_n_0\,
      I1 => \spo[20]_INST_0_i_2_n_0\,
      O => spo(19),
      S => a(7)
    );
\spo[20]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_3_n_0\,
      I1 => \spo[20]_INST_0_i_4_n_0\,
      O => \spo[20]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[20]_INST_0_i_5_n_0\,
      I1 => \spo[20]_INST_0_i_6_n_0\,
      O => \spo[20]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0021482200024210"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[20]_INST_0_i_3_n_0\
    );
\spo[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"58209518A3851910"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[20]_INST_0_i_4_n_0\
    );
\spo[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001905082110201D"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[20]_INST_0_i_5_n_0\
    );
\spo[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101500001440640"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[20]_INST_0_i_6_n_0\
    );
\spo[21]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[21]_INST_0_i_1_n_0\,
      I1 => \spo[21]_INST_0_i_2_n_0\,
      O => spo(20),
      S => a(7)
    );
\spo[21]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_3_n_0\,
      I1 => \spo[21]_INST_0_i_4_n_0\,
      O => \spo[21]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[21]_INST_0_i_5_n_0\,
      I1 => \spo[21]_INST_0_i_6_n_0\,
      O => \spo[21]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080CA20010060039"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(2),
      I4 => a(1),
      I5 => a(0),
      O => \spo[21]_INST_0_i_3_n_0\
    );
\spo[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EA00C80F0011830"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[21]_INST_0_i_4_n_0\
    );
\spo[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2111080001101595"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(3),
      I4 => a(2),
      I5 => a(1),
      O => \spo[21]_INST_0_i_5_n_0\
    );
\spo[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000019510010"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[21]_INST_0_i_6_n_0\
    );
\spo[22]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[22]_INST_0_i_1_n_0\,
      I1 => \spo[22]_INST_0_i_2_n_0\,
      O => spo(21),
      S => a(7)
    );
\spo[22]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_3_n_0\,
      I1 => \spo[22]_INST_0_i_4_n_0\,
      O => \spo[22]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[22]_INST_0_i_5_n_0\,
      I1 => \spo[22]_INST_0_i_6_n_0\,
      O => \spo[22]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"009D8802A1022218"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[22]_INST_0_i_3_n_0\
    );
\spo[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA3B8B4A7A009AAA"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[22]_INST_0_i_4_n_0\
    );
\spo[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"013888494C302000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[22]_INST_0_i_5_n_0\
    );
\spo[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000087848D9"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(3),
      I3 => a(2),
      I4 => a(4),
      I5 => a(5),
      O => \spo[22]_INST_0_i_6_n_0\
    );
\spo[23]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[23]_INST_0_i_1_n_0\,
      I1 => \spo[23]_INST_0_i_2_n_0\,
      O => spo(22),
      S => a(7)
    );
\spo[23]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_3_n_0\,
      I1 => \spo[23]_INST_0_i_4_n_0\,
      O => \spo[23]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[23]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[23]_INST_0_i_5_n_0\,
      I1 => \spo[23]_INST_0_i_6_n_0\,
      O => \spo[23]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0882A00210898260"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(4),
      O => \spo[23]_INST_0_i_3_n_0\
    );
\spo[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7B709C88E78982A0"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[23]_INST_0_i_4_n_0\
    );
\spo[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080988400021203"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[23]_INST_0_i_5_n_0\
    );
\spo[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0114444404041204"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[23]_INST_0_i_6_n_0\
    );
\spo[24]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[24]_INST_0_i_1_n_0\,
      I1 => \spo[24]_INST_0_i_2_n_0\,
      O => spo(23),
      S => a(7)
    );
\spo[24]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_3_n_0\,
      I1 => \spo[24]_INST_0_i_4_n_0\,
      O => \spo[24]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[24]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[24]_INST_0_i_5_n_0\,
      I1 => \spo[24]_INST_0_i_6_n_0\,
      O => \spo[24]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880280210890260"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(4),
      O => \spo[24]_INST_0_i_3_n_0\
    );
\spo[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E20808220084500"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(1),
      I4 => a(3),
      I5 => a(2),
      O => \spo[24]_INST_0_i_4_n_0\
    );
\spo[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000414090111024"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(2),
      I4 => a(0),
      I5 => a(3),
      O => \spo[24]_INST_0_i_5_n_0\
    );
\spo[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000024440010"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(5),
      O => \spo[24]_INST_0_i_6_n_0\
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[25]_INST_0_i_1_n_0\,
      I1 => \spo[25]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[25]_INST_0_i_3_n_0\,
      I4 => a(6),
      I5 => \spo[27]_INST_0_i_4_n_0\,
      O => spo(24)
    );
\spo[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100047004000"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => a(4),
      I3 => a(0),
      I4 => a(1),
      I5 => a(2),
      O => \spo[25]_INST_0_i_1_n_0\
    );
\spo[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010F051D9120B284"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[25]_INST_0_i_2_n_0\
    );
\spo[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"140020000C440000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[25]_INST_0_i_3_n_0\
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[26]_INST_0_i_1_n_0\,
      I1 => \spo[26]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[27]_INST_0_i_3_n_0\,
      I4 => a(6),
      I5 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(25)
    );
\spo[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404000053410100"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => \spo[26]_INST_0_i_1_n_0\
    );
\spo[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C00CB00A808C9831"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(1),
      I3 => a(2),
      I4 => a(3),
      I5 => a(0),
      O => \spo[26]_INST_0_i_2_n_0\
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[27]_INST_0_i_1_n_0\,
      I1 => \spo[27]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[27]_INST_0_i_3_n_0\,
      I4 => a(6),
      I5 => \spo[27]_INST_0_i_4_n_0\,
      O => spo(26)
    );
\spo[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004050204000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[27]_INST_0_i_1_n_0\
    );
\spo[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4887000800025828"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(4),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[27]_INST_0_i_2_n_0\
    );
\spo[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040044020000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(2),
      I5 => a(4),
      O => \spo[27]_INST_0_i_3_n_0\
    );
\spo[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000890260"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(4),
      O => \spo[27]_INST_0_i_4_n_0\
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_1_n_0\,
      I1 => \spo[28]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[28]_INST_0_i_3_n_0\,
      I4 => a(6),
      I5 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(27)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440004050204002"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101010190170000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[28]_INST_0_i_2_n_0\
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0544044020000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(2),
      I5 => a(4),
      O => \spo[28]_INST_0_i_3_n_0\
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => \spo[31]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[30]_INST_0_i_2_n_0\,
      I4 => a(6),
      I5 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(28)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4142044150001000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[29]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => \spo[2]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[12]_INST_0_i_2_n_0\,
      I4 => a(6),
      I5 => \spo[2]_INST_0_i_3_n_0\,
      O => spo(1)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000062004081"
    )
        port map (
      I0 => a(1),
      I1 => a(3),
      I2 => a(0),
      I3 => a(2),
      I4 => a(4),
      I5 => a(5),
      O => \spo[2]_INST_0_i_1_n_0\
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A0840E400002202"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(1),
      I3 => a(3),
      I4 => a(2),
      I5 => a(4),
      O => \spo[2]_INST_0_i_2_n_0\
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000008000820"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_1_n_0\,
      I1 => \spo[31]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[30]_INST_0_i_2_n_0\,
      I4 => a(6),
      I5 => \spo[30]_INST_0_i_3_n_0\,
      O => spo(29)
    );
\spo[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4542044150001000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[30]_INST_0_i_1_n_0\
    );
\spo[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0144044020000000"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(2),
      I5 => a(4),
      O => \spo[30]_INST_0_i_2_n_0\
    );
\spo[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000280000890260"
    )
        port map (
      I0 => a(5),
      I1 => a(0),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(4),
      O => \spo[30]_INST_0_i_3_n_0\
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[31]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[31]_INST_0_i_3_n_0\,
      I4 => a(6),
      I5 => \spo[31]_INST_0_i_4_n_0\,
      O => spo(30)
    );
\spo[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0542044110001000"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[31]_INST_0_i_1_n_0\
    );
\spo[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1810F0D90B72288"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[31]_INST_0_i_2_n_0\
    );
\spo[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040044020002020"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(2),
      I5 => a(4),
      O => \spo[31]_INST_0_i_3_n_0\
    );
\spo[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0021080248000210"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[31]_INST_0_i_4_n_0\
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => a(6),
      I2 => \spo[3]_INST_0_i_2_n_0\,
      I3 => a(7),
      O => spo(2)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009000000000202"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(3),
      I4 => a(0),
      I5 => a(4),
      O => \spo[3]_INST_0_i_1_n_0\
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004001"
    )
        port map (
      I0 => a(4),
      I1 => a(1),
      I2 => a(3),
      I3 => a(0),
      I4 => a(2),
      I5 => a(5),
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[4]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_1_n_0\,
      I1 => \spo[4]_INST_0_i_2_n_0\,
      O => spo(3),
      S => a(7)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_3_n_0\,
      I1 => \spo[4]_INST_0_i_4_n_0\,
      O => \spo[4]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_5_n_0\,
      I1 => \spo[4]_INST_0_i_6_n_0\,
      O => \spo[4]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F77F5FFFFFFFFFFF"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => a(3),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[4]_INST_0_i_3_n_0\
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7E6E7DFDFFFF777"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(3),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[4]_INST_0_i_4_n_0\
    );
\spo[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E2EF75A60F05875"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[4]_INST_0_i_5_n_0\
    );
\spo[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5041444555411656"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[4]_INST_0_i_6_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => \spo[6]_INST_0_i_2_n_0\,
      I2 => a(7),
      I3 => \spo[5]_INST_0_i_2_n_0\,
      I4 => a(6),
      I5 => \spo[5]_INST_0_i_3_n_0\,
      O => spo(4)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0556141251451505"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_1_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB6931CA5819270"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[5]_INST_0_i_2_n_0\
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0180A00040060008"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(3),
      I4 => a(1),
      I5 => a(2),
      O => \spo[5]_INST_0_i_3_n_0\
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[6]_INST_0_i_1_n_0\,
      I1 => a(6),
      I2 => \spo[6]_INST_0_i_2_n_0\,
      I3 => a(7),
      I4 => \spo[6]_INST_0_i_3_n_0\,
      O => spo(5)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0514021010104101"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[6]_INST_0_i_1_n_0\
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1D19F0F08A5A78A"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[6]_INST_0_i_2_n_0\
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => a(5),
      I1 => a(2),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(6),
      O => \spo[6]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => \spo[7]_INST_0_i_2_n_0\,
      O => spo(6),
      S => a(7)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_3_n_0\,
      I1 => \spo[7]_INST_0_i_4_n_0\,
      O => \spo[7]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_5_n_0\,
      I1 => \spo[7]_INST_0_i_6_n_0\,
      O => \spo[7]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5E35EFD3BF9DF6E"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[7]_INST_0_i_3_n_0\
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C91DB25268F96D55"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[7]_INST_0_i_4_n_0\
    );
\spo[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE3D67FF6FB5EFEE"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(0),
      I3 => a(2),
      I4 => a(1),
      I5 => a(3),
      O => \spo[7]_INST_0_i_5_n_0\
    );
\spo[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4542514144451016"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(0),
      I5 => a(1),
      O => \spo[7]_INST_0_i_6_n_0\
    );
\spo[8]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => \spo[8]_INST_0_i_2_n_0\,
      O => spo(7),
      S => a(7)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_3_n_0\,
      I1 => \spo[8]_INST_0_i_4_n_0\,
      O => \spo[8]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_5_n_0\,
      I1 => \spo[8]_INST_0_i_6_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF3F3FFFBFFD3AFF"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(4),
      I3 => a(3),
      I4 => a(0),
      I5 => a(2),
      O => \spo[8]_INST_0_i_3_n_0\
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65737F68F0F14CD5"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[8]_INST_0_i_4_n_0\
    );
\spo[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E60469022C05863"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(3),
      I5 => a(0),
      O => \spo[8]_INST_0_i_5_n_0\
    );
\spo[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5140144044411446"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(3),
      I5 => a(1),
      O => \spo[8]_INST_0_i_6_n_0\
    );
\spo[9]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[9]_INST_0_i_1_n_0\,
      I1 => \spo[9]_INST_0_i_2_n_0\,
      O => spo(8),
      S => a(7)
    );
\spo[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_3_n_0\,
      I1 => \spo[9]_INST_0_i_4_n_0\,
      O => \spo[9]_INST_0_i_1_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[9]_INST_0_i_5_n_0\,
      I1 => \spo[9]_INST_0_i_6_n_0\,
      O => \spo[9]_INST_0_i_2_n_0\,
      S => a(6)
    );
\spo[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF67BBFEFF"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(3),
      I4 => a(1),
      I5 => a(0),
      O => \spo[9]_INST_0_i_3_n_0\
    );
\spo[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A7F73372FAFE7EE7"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(0),
      I4 => a(1),
      I5 => a(3),
      O => \spo[9]_INST_0_i_4_n_0\
    );
\spo[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D70A200AE4E17D9"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(3),
      I3 => a(1),
      I4 => a(2),
      I5 => a(0),
      O => \spo[9]_INST_0_i_5_n_0\
    );
\spo[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4140511556505612"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(2),
      I3 => a(1),
      I4 => a(0),
      I5 => a(3),
      O => \spo[9]_INST_0_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity INST_MEM_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 30 downto 0 );
    a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of INST_MEM_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end INST_MEM_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of INST_MEM_dist_mem_gen_v8_0_13_synth is
begin
\gen_rom.rom_inst\: entity work.INST_MEM_rom
     port map (
      a(7 downto 0) => a(7 downto 0),
      spo(30 downto 0) => spo(30 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity INST_MEM_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of INST_MEM_dist_mem_gen_v8_0_13 : entity is 8;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of INST_MEM_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of INST_MEM_dist_mem_gen_v8_0_13 : entity is 256;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of INST_MEM_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of INST_MEM_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of INST_MEM_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of INST_MEM_dist_mem_gen_v8_0_13 : entity is "INST_MEM.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of INST_MEM_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of INST_MEM_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of INST_MEM_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of INST_MEM_dist_mem_gen_v8_0_13 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of INST_MEM_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end INST_MEM_dist_mem_gen_v8_0_13;

architecture STRUCTURE of INST_MEM_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(31 downto 2) <= \^spo\(31 downto 2);
  spo(1) <= \^spo\(0);
  spo(0) <= \^spo\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.INST_MEM_dist_mem_gen_v8_0_13_synth
     port map (
      a(7 downto 0) => a(7 downto 0),
      spo(30 downto 1) => \^spo\(31 downto 2),
      spo(0) => \^spo\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity INST_MEM is
  port (
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of INST_MEM : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of INST_MEM : entity is "INST_MEM,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of INST_MEM : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of INST_MEM : entity is "dist_mem_gen_v8_0_13,Vivado 2019.1";
end INST_MEM;

architecture STRUCTURE of INST_MEM is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 8;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 256;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "INST_MEM.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.INST_MEM_dist_mem_gen_v8_0_13
     port map (
      a(7 downto 0) => a(7 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(7 downto 0) => B"00000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
