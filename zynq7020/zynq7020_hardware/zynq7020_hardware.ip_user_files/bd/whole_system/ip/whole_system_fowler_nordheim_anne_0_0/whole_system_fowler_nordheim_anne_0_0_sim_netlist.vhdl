-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri May  9 17:50:18 2025
-- Host        : mlewan running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/mlewand/Desktop/PROJS/FPGA-simulated-annealing/zynq7020/zynq7020_hardware/zynq7020_hardware.gen/sources_1/bd/whole_system/ip/whole_system_fowler_nordheim_anne_0_0/whole_system_fowler_nordheim_anne_0_0_sim_netlist.vhdl
-- Design      : whole_system_fowler_nordheim_anne_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_LFSR is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[4]_2\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_LFSR : entity is "LFSR";
end whole_system_fowler_nordheim_anne_0_0_LFSR;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_LFSR is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F909"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(1),
      I2 => \state_reg[4]_0\(0),
      I3 => \state_reg[4]_1\(0),
      I4 => state,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(1),
      I3 => state,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(2),
      I3 => state,
      O => \state[2]_i_1__1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(3),
      I3 => state,
      O => \state[3]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \state_reg[4]_0\(0),
      I1 => storage_CE_advance,
      I2 => state,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(4),
      I3 => state,
      O => \state[4]_i_2_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \state_reg[4]_0\(0),
      I1 => \state_reg[4]_1\(2),
      I2 => \state_reg[4]_1\(3),
      I3 => \state_reg[4]_1\(4),
      I4 => \state_reg[4]_1\(0),
      I5 => \state_reg[4]_1\(1),
      O => state
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      S => \state_reg[4]_2\
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      S => \state_reg[4]_2\
    );
\state_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[2]_i_1__1_n_0\,
      Q => \state_reg_n_0_[2]\,
      S => \state_reg[4]_2\
    );
\state_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[3]_i_1_n_0\,
      Q => \^q\(0),
      S => \state_reg[4]_2\
    );
\state_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[4]_i_2_n_0\,
      Q => \^q\(1),
      S => \state_reg[4]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_LFSR_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[4]_2\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_LFSR_4 : entity is "LFSR";
end whole_system_fowler_nordheim_anne_0_0_LFSR_4;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_LFSR_4 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC;
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F909"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^q\(1),
      I2 => \state_reg[4]_0\(0),
      I3 => \state_reg[4]_1\(0),
      I4 => state,
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(1),
      I3 => state,
      O => \state[1]_i_1__0_n_0\
    );
\state[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(2),
      I3 => state,
      O => \state[2]_i_1__2_n_0\
    );
\state[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(3),
      I3 => state,
      O => \state[3]_i_1__0_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => storage_CE_advance,
      I1 => \state_reg[4]_0\(0),
      I2 => state,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[4]_0\(0),
      I2 => \state_reg[4]_1\(4),
      I3 => state,
      O => \state[4]_i_2__0_n_0\
    );
\state[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \state_reg[4]_0\(0),
      I1 => \state_reg[4]_1\(2),
      I2 => \state_reg[4]_1\(3),
      I3 => \state_reg[4]_1\(4),
      I4 => \state_reg[4]_1\(0),
      I5 => \state_reg[4]_1\(1),
      O => state
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[0]_i_1__0_n_0\,
      Q => \state_reg_n_0_[0]\,
      S => \state_reg[4]_2\
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[1]_i_1__0_n_0\,
      Q => \state_reg_n_0_[1]\,
      S => \state_reg[4]_2\
    );
\state_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[2]_i_1__2_n_0\,
      Q => \state_reg_n_0_[2]\,
      S => \state_reg[4]_2\
    );
\state_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[3]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \state_reg[4]_2\
    );
\state_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => \state[4]_i_2__0_n_0\,
      Q => \^q\(1),
      S => \state_reg[4]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0\ is
  port (
    \state_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_2\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0\ : entity is "LFSR";
end \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0\;

architecture STRUCTURE of \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0\ is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \state[10]_i_1_n_0\ : STD_LOGIC;
  signal \state[11]_i_1_n_0\ : STD_LOGIC;
  signal \state[12]_i_1_n_0\ : STD_LOGIC;
  signal \state[13]_i_1_n_0\ : STD_LOGIC;
  signal \state[14]_i_1_n_0\ : STD_LOGIC;
  signal \state[15]_i_2_n_0\ : STD_LOGIC;
  signal \state[15]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \state[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_1_n_0\ : STD_LOGIC;
  signal \state[6]_i_1_n_0\ : STD_LOGIC;
  signal \state[7]_i_1_n_0\ : STD_LOGIC;
  signal \state[8]_i_1_n_0\ : STD_LOGIC;
  signal \state[9]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[15]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal \state_reg_n_0_[5]\ : STD_LOGIC;
  signal \state_reg_n_0_[6]\ : STD_LOGIC;
  signal \state_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[0]_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \state[1]_i_1__1\ : label is "soft_lutpair36";
begin
  SS(0) <= \^ss\(0);
  \state_reg[15]_0\(7 downto 0) <= \^state_reg[15]_0\(7 downto 0);
\state[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \state[0]_i_2__2_n_0\,
      I1 => \state_reg[15]_1\,
      I2 => Q(0),
      O => \state[0]_i_1__1_n_0\
    );
\state[0]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B8BB88BB8B88B"
    )
        port map (
      I0 => \state_reg[15]_2\(0),
      I1 => Q(0),
      I2 => \^state_reg[15]_0\(6),
      I3 => \^state_reg[15]_0\(4),
      I4 => \state_reg_n_0_[3]\,
      I5 => \^state_reg[15]_0\(7),
      O => \state[0]_i_2__2_n_0\
    );
\state[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(1),
      I1 => \state_reg[15]_2\(10),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[10]_i_1_n_0\
    );
\state[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(2),
      I1 => \state_reg[15]_2\(11),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[11]_i_1_n_0\
    );
\state[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(3),
      I1 => \state_reg[15]_2\(12),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[12]_i_1_n_0\
    );
\state[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(4),
      I1 => \state_reg[15]_2\(13),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[13]_i_1_n_0\
    );
\state[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(5),
      I1 => \state_reg[15]_2\(14),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[14]_i_1_n_0\
    );
\state[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => \state_reg[0]_1\,
      I2 => \state_reg[0]_2\,
      O => \^ss\(0)
    );
\state[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF3E"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => \state_reg[0]_1\,
      I2 => \state_reg[0]_2\,
      I3 => Q(0),
      O => \state[15]_i_2_n_0\
    );
\state[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(6),
      I1 => \state_reg[15]_2\(15),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[15]_i_3_n_0\
    );
\state[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg[15]_2\(1),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[1]_i_1__1_n_0\
    );
\state[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg[15]_2\(2),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[2]_i_1__3_n_0\
    );
\state[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg[15]_2\(3),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[3]_i_1__1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg[15]_2\(4),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[4]_i_1_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg[15]_2\(5),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[5]_i_1_n_0\
    );
\state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg[15]_2\(6),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[6]_i_1_n_0\
    );
\state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[6]\,
      I1 => \state_reg[15]_2\(7),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[7]_i_1_n_0\
    );
\state[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[7]\,
      I1 => \state_reg[15]_2\(8),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[8]_i_1_n_0\
    );
\state[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(0),
      I1 => \state_reg[15]_2\(9),
      I2 => \state_reg[15]_1\,
      I3 => Q(0),
      O => \state[9]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[0]_i_1__1_n_0\,
      Q => \state_reg_n_0_[0]\,
      S => \^ss\(0)
    );
\state_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[10]_i_1_n_0\,
      Q => \^state_reg[15]_0\(2),
      S => \^ss\(0)
    );
\state_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[11]_i_1_n_0\,
      Q => \^state_reg[15]_0\(3),
      S => \^ss\(0)
    );
\state_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[12]_i_1_n_0\,
      Q => \^state_reg[15]_0\(4),
      S => \^ss\(0)
    );
\state_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[13]_i_1_n_0\,
      Q => \^state_reg[15]_0\(5),
      S => \^ss\(0)
    );
\state_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[14]_i_1_n_0\,
      Q => \^state_reg[15]_0\(6),
      S => \^ss\(0)
    );
\state_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[15]_i_3_n_0\,
      Q => \^state_reg[15]_0\(7),
      S => \^ss\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[1]_i_1__1_n_0\,
      Q => \state_reg_n_0_[1]\,
      S => \^ss\(0)
    );
\state_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[2]_i_1__3_n_0\,
      Q => \state_reg_n_0_[2]\,
      S => \^ss\(0)
    );
\state_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[3]_i_1__1_n_0\,
      Q => \state_reg_n_0_[3]\,
      S => \^ss\(0)
    );
\state_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[4]_i_1_n_0\,
      Q => \state_reg_n_0_[4]\,
      S => \^ss\(0)
    );
\state_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[5]_i_1_n_0\,
      Q => \state_reg_n_0_[5]\,
      S => \^ss\(0)
    );
\state_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[6]_i_1_n_0\,
      Q => \state_reg_n_0_[6]\,
      S => \^ss\(0)
    );
\state_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[7]_i_1_n_0\,
      Q => \state_reg_n_0_[7]\,
      S => \^ss\(0)
    );
\state_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[8]_i_1_n_0\,
      Q => \^state_reg[15]_0\(0),
      S => \^ss\(0)
    );
\state_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[9]_i_1_n_0\,
      Q => \^state_reg[15]_0\(1),
      S => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0_8\ is
  port (
    \slv_reg3_reg[14]\ : out STD_LOGIC;
    \state_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[15]_2\ : in STD_LOGIC;
    \state_reg[15]_3\ : in STD_LOGIC;
    \state_reg[15]_4\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0_8\ : entity is "LFSR";
end \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0_8\;

architecture STRUCTURE of \whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0_8\ is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^slv_reg3_reg[14]\ : STD_LOGIC;
  signal \state[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \state[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[15]_i_2_n_0\ : STD_LOGIC;
  signal \state[15]_i_3__0_n_0\ : STD_LOGIC;
  signal \state[15]_i_5_n_0\ : STD_LOGIC;
  signal \state[15]_i_6_n_0\ : STD_LOGIC;
  signal \state[15]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \state[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \state[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \state[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^state_reg[15]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal \state_reg_n_0_[5]\ : STD_LOGIC;
  signal \state_reg_n_0_[6]\ : STD_LOGIC;
  signal \state_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[0]_i_1__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[1]_i_1__2\ : label is "soft_lutpair5";
begin
  SS(0) <= \^ss\(0);
  \slv_reg3_reg[14]\ <= \^slv_reg3_reg[14]\;
  \state_reg[15]_0\(7 downto 0) <= \^state_reg[15]_0\(7 downto 0);
\state[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \^slv_reg3_reg[14]\,
      I2 => Q(0),
      O => \state[0]_i_1__2_n_0\
    );
\state[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88B8BB88BB8B88B"
    )
        port map (
      I0 => \state_reg[15]_1\(0),
      I1 => Q(0),
      I2 => \^state_reg[15]_0\(6),
      I3 => \^state_reg[15]_0\(4),
      I4 => \state_reg_n_0_[3]\,
      I5 => \^state_reg[15]_0\(7),
      O => p_1_in(0)
    );
\state[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(1),
      I1 => \state_reg[15]_1\(10),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[10]_i_1__0_n_0\
    );
\state[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(2),
      I1 => \state_reg[15]_1\(11),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[11]_i_1__0_n_0\
    );
\state[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(3),
      I1 => \state_reg[15]_1\(12),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[12]_i_1__0_n_0\
    );
\state[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(4),
      I1 => \state_reg[15]_1\(13),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[13]_i_1__0_n_0\
    );
\state[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(5),
      I1 => \state_reg[15]_1\(14),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[14]_i_1__0_n_0\
    );
\state[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg[15]_2\,
      I1 => \state_reg[15]_3\,
      I2 => \state_reg[15]_4\,
      O => \^ss\(0)
    );
\state[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF3E"
    )
        port map (
      I0 => \state_reg[15]_2\,
      I1 => \state_reg[15]_3\,
      I2 => \state_reg[15]_4\,
      I3 => Q(0),
      O => \state[15]_i_2_n_0\
    );
\state[15]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(6),
      I1 => \state_reg[15]_1\(15),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[15]_i_3__0_n_0\
    );
\state[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \state[15]_i_5_n_0\,
      I1 => \state_reg[15]_1\(14),
      I2 => \state_reg[15]_1\(0),
      I3 => \state_reg[15]_1\(15),
      I4 => \state_reg[15]_1\(12),
      I5 => \state[15]_i_6_n_0\,
      O => \^slv_reg3_reg[14]\
    );
\state[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \state_reg[15]_1\(4),
      I1 => \state_reg[15]_1\(5),
      I2 => \state_reg[15]_1\(9),
      I3 => \state_reg[15]_1\(1),
      O => \state[15]_i_5_n_0\
    );
\state[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \state_reg[15]_1\(8),
      I1 => \state_reg[15]_1\(11),
      I2 => \state_reg[15]_1\(7),
      I3 => \state_reg[15]_1\(6),
      I4 => \state[15]_i_7_n_0\,
      O => \state[15]_i_6_n_0\
    );
\state[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \state_reg[15]_1\(13),
      I1 => \state_reg[15]_1\(3),
      I2 => \state_reg[15]_1\(10),
      I3 => \state_reg[15]_1\(2),
      O => \state[15]_i_7_n_0\
    );
\state[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg[15]_1\(1),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[1]_i_1__2_n_0\
    );
\state[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg[15]_1\(2),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[2]_i_1__4_n_0\
    );
\state[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg[15]_1\(3),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[3]_i_1__2_n_0\
    );
\state[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg[15]_1\(4),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[4]_i_1__0_n_0\
    );
\state[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg[15]_1\(5),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[5]_i_1__0_n_0\
    );
\state[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg[15]_1\(6),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[6]_i_1__0_n_0\
    );
\state[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[6]\,
      I1 => \state_reg[15]_1\(7),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[7]_i_1__0_n_0\
    );
\state[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \state_reg_n_0_[7]\,
      I1 => \state_reg[15]_1\(8),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[8]_i_1__0_n_0\
    );
\state[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => \^state_reg[15]_0\(0),
      I1 => \state_reg[15]_1\(9),
      I2 => \^slv_reg3_reg[14]\,
      I3 => Q(0),
      O => \state[9]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[0]_i_1__2_n_0\,
      Q => \state_reg_n_0_[0]\,
      S => \^ss\(0)
    );
\state_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[10]_i_1__0_n_0\,
      Q => \^state_reg[15]_0\(2),
      S => \^ss\(0)
    );
\state_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[11]_i_1__0_n_0\,
      Q => \^state_reg[15]_0\(3),
      S => \^ss\(0)
    );
\state_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[12]_i_1__0_n_0\,
      Q => \^state_reg[15]_0\(4),
      S => \^ss\(0)
    );
\state_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[13]_i_1__0_n_0\,
      Q => \^state_reg[15]_0\(5),
      S => \^ss\(0)
    );
\state_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[14]_i_1__0_n_0\,
      Q => \^state_reg[15]_0\(6),
      S => \^ss\(0)
    );
\state_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[15]_i_3__0_n_0\,
      Q => \^state_reg[15]_0\(7),
      S => \^ss\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[1]_i_1__2_n_0\,
      Q => \state_reg_n_0_[1]\,
      S => \^ss\(0)
    );
\state_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[2]_i_1__4_n_0\,
      Q => \state_reg_n_0_[2]\,
      S => \^ss\(0)
    );
\state_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[3]_i_1__2_n_0\,
      Q => \state_reg_n_0_[3]\,
      S => \^ss\(0)
    );
\state_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[4]_i_1__0_n_0\,
      Q => \state_reg_n_0_[4]\,
      S => \^ss\(0)
    );
\state_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[5]_i_1__0_n_0\,
      Q => \state_reg_n_0_[5]\,
      S => \^ss\(0)
    );
\state_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[6]_i_1__0_n_0\,
      Q => \state_reg_n_0_[6]\,
      S => \^ss\(0)
    );
\state_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[7]_i_1__0_n_0\,
      Q => \state_reg_n_0_[7]\,
      S => \^ss\(0)
    );
\state_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[8]_i_1__0_n_0\,
      Q => \^state_reg[15]_0\(0),
      S => \^ss\(0)
    );
\state_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \state[15]_i_2_n_0\,
      D => \state[9]_i_1__0_n_0\,
      Q => \^state_reg[15]_0\(1),
      S => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg5_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg5_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg5_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]_0\ : in STD_LOGIC;
    \Q_out_reg[0]_0\ : in STD_LOGIC;
    \Q_out_reg[0]_1\ : in STD_LOGIC;
    \Q_out_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_out_reg[0]_2\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory : entity is "distributed_graph_memory";
end whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory is
  signal CE_output_from_distributed_graph : STD_LOGIC;
  signal Q_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_out[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_out[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_out[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Q_out[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q_out[3]_i_2\ : label is "soft_lutpair4";
begin
\Q_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(1),
      I1 => \Q_out_reg[3]_0\(2),
      I2 => \Q_out_reg[3]_0\(0),
      O => \Q_out[0]_i_1_n_0\
    );
\Q_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(0),
      I1 => \Q_out_reg[3]_0\(2),
      I2 => \Q_out_reg[3]_0\(1),
      O => \Q_out[1]_i_1_n_0\
    );
\Q_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(0),
      I1 => \Q_out_reg[3]_0\(1),
      I2 => \Q_out_reg[3]_0\(2),
      O => \Q_out[2]_i_1_n_0\
    );
\Q_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_out_reg[0]_0\,
      I1 => \Q_out_reg[0]_1\,
      O => CE_output_from_distributed_graph
    );
\Q_out[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(1),
      I1 => \Q_out_reg[3]_0\(0),
      I2 => \Q_out_reg[3]_0\(2),
      O => \Q_out[3]_i_2_n_0\
    );
\Q_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[0]_i_1_n_0\,
      Q => Q_out(0),
      R => \Q_out_reg[0]_2\
    );
\Q_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[1]_i_1_n_0\,
      Q => Q_out(1),
      R => \Q_out_reg[0]_2\
    );
\Q_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[2]_i_1_n_0\,
      Q => Q_out(2),
      R => \Q_out_reg[0]_2\
    );
\Q_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[3]_i_2_n_0\,
      Q => Q_out(3),
      R => \Q_out_reg[0]_2\
    );
\mem_ram[0][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F101010"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(1),
      I1 => \mem_ram_reg[0][0]\(0),
      I2 => Q(0),
      I3 => Q_out(0),
      I4 => \mem_ram_reg[0][0]_0\,
      O => E(0)
    );
\mem_ram[1][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F404040"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(1),
      I1 => \mem_ram_reg[0][0]\(0),
      I2 => Q(0),
      I3 => Q_out(1),
      I4 => \mem_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[1]\(0)
    );
\mem_ram[2][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F404040"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(0),
      I1 => \mem_ram_reg[0][0]\(1),
      I2 => Q(0),
      I3 => Q_out(2),
      I4 => \mem_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[0]\(0)
    );
\mem_ram[3][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(1),
      I1 => \mem_ram_reg[0][0]\(0),
      I2 => Q(0),
      I3 => Q_out(3),
      I4 => \mem_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg5_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg5_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg5_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]_0\ : in STD_LOGIC;
    \Q_out_reg[0]_0\ : in STD_LOGIC;
    \Q_out_reg[0]_1\ : in STD_LOGIC;
    \Q_out_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Q_out_reg[0]_2\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory__parameterized0\ : entity is "distributed_graph_memory";
end \whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory__parameterized0\;

architecture STRUCTURE of \whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory__parameterized0\ is
  signal CE_output_from_distributed_graph : STD_LOGIC;
  signal Q_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_out[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_out[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Q_out[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Q_out[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Q_out[3]_i_2\ : label is "soft_lutpair35";
begin
\Q_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"63"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(0),
      I1 => \Q_out_reg[3]_0\(1),
      I2 => \Q_out_reg[3]_0\(2),
      O => \Q_out[0]_i_1_n_0\
    );
\Q_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(1),
      I1 => \Q_out_reg[3]_0\(2),
      I2 => \Q_out_reg[3]_0\(0),
      O => \Q_out[1]_i_1_n_0\
    );
\Q_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(1),
      I1 => \Q_out_reg[3]_0\(2),
      I2 => \Q_out_reg[3]_0\(0),
      O => \Q_out[2]_i_1_n_0\
    );
\Q_out[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Q_out_reg[0]_0\,
      I1 => \Q_out_reg[0]_1\,
      O => CE_output_from_distributed_graph
    );
\Q_out[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => \Q_out_reg[3]_0\(0),
      I1 => \Q_out_reg[3]_0\(2),
      I2 => \Q_out_reg[3]_0\(1),
      O => \Q_out[3]_i_2_n_0\
    );
\Q_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[0]_i_1_n_0\,
      Q => Q_out(0),
      R => \Q_out_reg[0]_2\
    );
\Q_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[1]_i_1_n_0\,
      Q => Q_out(1),
      R => \Q_out_reg[0]_2\
    );
\Q_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[2]_i_1_n_0\,
      Q => Q_out(2),
      R => \Q_out_reg[0]_2\
    );
\Q_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => CE_output_from_distributed_graph,
      D => \Q_out[3]_i_2_n_0\,
      Q => Q_out(3),
      R => \Q_out_reg[0]_2\
    );
\mem_ram[0][9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F101010"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(1),
      I1 => \mem_ram_reg[0][0]\(0),
      I2 => Q(0),
      I3 => Q_out(0),
      I4 => \mem_ram_reg[0][0]_0\,
      O => E(0)
    );
\mem_ram[1][9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F404040"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(1),
      I1 => \mem_ram_reg[0][0]\(0),
      I2 => Q(0),
      I3 => Q_out(1),
      I4 => \mem_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[1]\(0)
    );
\mem_ram[2][9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F404040"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(0),
      I1 => \mem_ram_reg[0][0]\(1),
      I2 => Q(0),
      I3 => Q_out(2),
      I4 => \mem_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[0]\(0)
    );
\mem_ram[3][9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \mem_ram_reg[0][0]\(1),
      I1 => \mem_ram_reg[0][0]\(0),
      I2 => Q(0),
      I3 => Q_out(3),
      I4 => \mem_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_scheduler_2 is
  port (
    add_r : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    \cuts_best_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \step_cnt_reg[10]_0\ : out STD_LOGIC;
    add_mem : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    spiked1 : in STD_LOGIC;
    \off_r_reg[1]_0\ : in STD_LOGIC;
    \off_r_reg[1]_1\ : in STD_LOGIC;
    membrane : in STD_LOGIC_VECTOR ( 9 downto 0 );
    offset : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_scheduler_2 : entity is "scheduler_2";
end whole_system_fowler_nordheim_anne_0_0_scheduler_2;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_scheduler_2 is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[2]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^add_r\ : STD_LOGIC;
  signal cuts_best : STD_LOGIC;
  signal \cuts_best0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_n_0\ : STD_LOGIC;
  signal \cuts_best0_carry__0_n_1\ : STD_LOGIC;
  signal \cuts_best0_carry__0_n_2\ : STD_LOGIC;
  signal \cuts_best0_carry__0_n_3\ : STD_LOGIC;
  signal cuts_best0_carry_i_1_n_0 : STD_LOGIC;
  signal cuts_best0_carry_i_2_n_0 : STD_LOGIC;
  signal cuts_best0_carry_i_3_n_0 : STD_LOGIC;
  signal cuts_best0_carry_i_4_n_0 : STD_LOGIC;
  signal cuts_best0_carry_i_5_n_0 : STD_LOGIC;
  signal cuts_best0_carry_i_6_n_0 : STD_LOGIC;
  signal cuts_best0_carry_i_7_n_0 : STD_LOGIC;
  signal cuts_best0_carry_i_8_n_0 : STD_LOGIC;
  signal cuts_best0_carry_n_0 : STD_LOGIC;
  signal cuts_best0_carry_n_1 : STD_LOGIC;
  signal cuts_best0_carry_n_2 : STD_LOGIC;
  signal cuts_best0_carry_n_3 : STD_LOGIC;
  signal \^cuts_best_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cuts_cur : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cuts_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \halt_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \halt_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \halt_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \halt_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \halt_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \halt_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__7_n_0\ : STD_LOGIC;
  signal mem_r : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mem_r_0 : STD_LOGIC;
  signal \step_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal step_cnt_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \step_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \step_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \step_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \step_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \step_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \step_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \step_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \step_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \step_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \step_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \step_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \step_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \step_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \step_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \step_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \step_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \x[8]_i_4_n_0\ : STD_LOGIC;
  signal \x[8]_i_5_n_0\ : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cuts_best0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cuts_best0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_step_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "S_RESET:0001,S_WAIT:0010,S_CAPTURE:0100,S_HALT:1000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cuts_best0_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of cuts_best0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \cuts_best0_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \cuts_best0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \halt_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \halt_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \halt_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \offset_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS of \step_cnt_reg[0]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \step_cnt_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \step_cnt_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \FSM_onehot_state_reg[0]_0\ <= \^fsm_onehot_state_reg[0]_0\;
  \FSM_onehot_state_reg[2]_0\ <= \^fsm_onehot_state_reg[2]_0\;
  add_r <= \^add_r\;
  \cuts_best_reg[15]_0\(15 downto 0) <= \^cuts_best_reg[15]_0\(15 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBBBBBBBBBBB"
    )
        port map (
      I0 => mem_r_0,
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      I2 => \halt_cnt_reg_n_0_[1]\,
      I3 => \halt_cnt_reg_n_0_[0]\,
      I4 => \halt_cnt_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\,
      I1 => \^fsm_onehot_state_reg[0]_0\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => '0',
      Q => \^fsm_onehot_state_reg[0]_0\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \^fsm_onehot_state_reg[2]_0\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \^fsm_onehot_state_reg[2]_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => \^add_r\,
      DI(3 downto 0) => cuts_cur(3 downto 0),
      O(3 downto 0) => cuts_next(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4__7_n_0\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cuts_cur(7 downto 4),
      O(3 downto 0) => cuts_next(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2) => \_inferred__0/i__carry__1_n_1\,
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cuts_cur(11 downto 8),
      O(3 downto 0) => cuts_next(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__0/i__carry__2_n_1\,
      CO(1) => \_inferred__0/i__carry__2_n_2\,
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => cuts_cur(14 downto 12),
      O(3 downto 0) => cuts_next(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
add_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => add_mem,
      Q => \^add_r\,
      R => '0'
    );
cuts_best0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cuts_best0_carry_n_0,
      CO(2) => cuts_best0_carry_n_1,
      CO(1) => cuts_best0_carry_n_2,
      CO(0) => cuts_best0_carry_n_3,
      CYINIT => '0',
      DI(3) => cuts_best0_carry_i_1_n_0,
      DI(2) => cuts_best0_carry_i_2_n_0,
      DI(1) => cuts_best0_carry_i_3_n_0,
      DI(0) => cuts_best0_carry_i_4_n_0,
      O(3 downto 0) => NLW_cuts_best0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cuts_best0_carry_i_5_n_0,
      S(2) => cuts_best0_carry_i_6_n_0,
      S(1) => cuts_best0_carry_i_7_n_0,
      S(0) => cuts_best0_carry_i_8_n_0
    );
\cuts_best0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cuts_best0_carry_n_0,
      CO(3) => \cuts_best0_carry__0_n_0\,
      CO(2) => \cuts_best0_carry__0_n_1\,
      CO(1) => \cuts_best0_carry__0_n_2\,
      CO(0) => \cuts_best0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cuts_best0_carry__0_i_1_n_0\,
      DI(2) => \cuts_best0_carry__0_i_2_n_0\,
      DI(1) => \cuts_best0_carry__0_i_3_n_0\,
      DI(0) => \cuts_best0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_cuts_best0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cuts_best0_carry__0_i_5_n_0\,
      S(2) => \cuts_best0_carry__0_i_6_n_0\,
      S(1) => \cuts_best0_carry__0_i_7_n_0\,
      S(0) => \cuts_best0_carry__0_i_8_n_0\
    );
\cuts_best0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(15),
      I1 => cuts_next(15),
      I2 => cuts_next(14),
      I3 => \^cuts_best_reg[15]_0\(14),
      O => \cuts_best0_carry__0_i_1_n_0\
    );
\cuts_best0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cuts_next(13),
      I1 => \^cuts_best_reg[15]_0\(13),
      I2 => cuts_next(12),
      I3 => \^cuts_best_reg[15]_0\(12),
      O => \cuts_best0_carry__0_i_2_n_0\
    );
\cuts_best0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cuts_next(11),
      I1 => \^cuts_best_reg[15]_0\(11),
      I2 => cuts_next(10),
      I3 => \^cuts_best_reg[15]_0\(10),
      O => \cuts_best0_carry__0_i_3_n_0\
    );
\cuts_best0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cuts_next(9),
      I1 => \^cuts_best_reg[15]_0\(9),
      I2 => cuts_next(8),
      I3 => \^cuts_best_reg[15]_0\(8),
      O => \cuts_best0_carry__0_i_4_n_0\
    );
\cuts_best0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cuts_next(15),
      I1 => \^cuts_best_reg[15]_0\(15),
      I2 => \^cuts_best_reg[15]_0\(14),
      I3 => cuts_next(14),
      O => \cuts_best0_carry__0_i_5_n_0\
    );
\cuts_best0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(13),
      I1 => cuts_next(13),
      I2 => \^cuts_best_reg[15]_0\(12),
      I3 => cuts_next(12),
      O => \cuts_best0_carry__0_i_6_n_0\
    );
\cuts_best0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(11),
      I1 => cuts_next(11),
      I2 => \^cuts_best_reg[15]_0\(10),
      I3 => cuts_next(10),
      O => \cuts_best0_carry__0_i_7_n_0\
    );
\cuts_best0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(9),
      I1 => cuts_next(9),
      I2 => \^cuts_best_reg[15]_0\(8),
      I3 => cuts_next(8),
      O => \cuts_best0_carry__0_i_8_n_0\
    );
cuts_best0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cuts_next(7),
      I1 => \^cuts_best_reg[15]_0\(7),
      I2 => cuts_next(6),
      I3 => \^cuts_best_reg[15]_0\(6),
      O => cuts_best0_carry_i_1_n_0
    );
cuts_best0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cuts_next(5),
      I1 => \^cuts_best_reg[15]_0\(5),
      I2 => cuts_next(4),
      I3 => \^cuts_best_reg[15]_0\(4),
      O => cuts_best0_carry_i_2_n_0
    );
cuts_best0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cuts_next(3),
      I1 => \^cuts_best_reg[15]_0\(3),
      I2 => cuts_next(2),
      I3 => \^cuts_best_reg[15]_0\(2),
      O => cuts_best0_carry_i_3_n_0
    );
cuts_best0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cuts_next(1),
      I1 => \^cuts_best_reg[15]_0\(1),
      I2 => cuts_next(0),
      I3 => \^cuts_best_reg[15]_0\(0),
      O => cuts_best0_carry_i_4_n_0
    );
cuts_best0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(7),
      I1 => cuts_next(7),
      I2 => \^cuts_best_reg[15]_0\(6),
      I3 => cuts_next(6),
      O => cuts_best0_carry_i_5_n_0
    );
cuts_best0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(5),
      I1 => cuts_next(5),
      I2 => \^cuts_best_reg[15]_0\(4),
      I3 => cuts_next(4),
      O => cuts_best0_carry_i_6_n_0
    );
cuts_best0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(3),
      I1 => cuts_next(3),
      I2 => \^cuts_best_reg[15]_0\(2),
      I3 => cuts_next(2),
      O => cuts_best0_carry_i_7_n_0
    );
cuts_best0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cuts_best_reg[15]_0\(1),
      I1 => cuts_next(1),
      I2 => \^cuts_best_reg[15]_0\(0),
      I3 => cuts_next(0),
      O => cuts_best0_carry_i_8_n_0
    );
\cuts_best[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\,
      I1 => \cuts_best0_carry__0_n_0\,
      O => cuts_best
    );
\cuts_best_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(0),
      Q => \^cuts_best_reg[15]_0\(0),
      R => '0'
    );
\cuts_best_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(10),
      Q => \^cuts_best_reg[15]_0\(10),
      R => '0'
    );
\cuts_best_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(11),
      Q => \^cuts_best_reg[15]_0\(11),
      R => '0'
    );
\cuts_best_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(12),
      Q => \^cuts_best_reg[15]_0\(12),
      R => '0'
    );
\cuts_best_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(13),
      Q => \^cuts_best_reg[15]_0\(13),
      R => '0'
    );
\cuts_best_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(14),
      Q => \^cuts_best_reg[15]_0\(14),
      R => '0'
    );
\cuts_best_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(15),
      Q => \^cuts_best_reg[15]_0\(15),
      R => '0'
    );
\cuts_best_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(1),
      Q => \^cuts_best_reg[15]_0\(1),
      R => '0'
    );
\cuts_best_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(2),
      Q => \^cuts_best_reg[15]_0\(2),
      R => '0'
    );
\cuts_best_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(3),
      Q => \^cuts_best_reg[15]_0\(3),
      R => '0'
    );
\cuts_best_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(4),
      Q => \^cuts_best_reg[15]_0\(4),
      R => '0'
    );
\cuts_best_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(5),
      Q => \^cuts_best_reg[15]_0\(5),
      R => '0'
    );
\cuts_best_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(6),
      Q => \^cuts_best_reg[15]_0\(6),
      R => '0'
    );
\cuts_best_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(7),
      Q => \^cuts_best_reg[15]_0\(7),
      R => '0'
    );
\cuts_best_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(8),
      Q => \^cuts_best_reg[15]_0\(8),
      R => '0'
    );
\cuts_best_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cuts_best,
      D => cuts_next(9),
      Q => \^cuts_best_reg[15]_0\(9),
      R => '0'
    );
\cuts_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(0),
      Q => cuts_cur(0),
      R => '0'
    );
\cuts_cur_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(10),
      Q => cuts_cur(10),
      R => '0'
    );
\cuts_cur_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(11),
      Q => cuts_cur(11),
      R => '0'
    );
\cuts_cur_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(12),
      Q => cuts_cur(12),
      R => '0'
    );
\cuts_cur_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(13),
      Q => cuts_cur(13),
      R => '0'
    );
\cuts_cur_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(14),
      Q => cuts_cur(14),
      R => '0'
    );
\cuts_cur_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(15),
      Q => cuts_cur(15),
      R => '0'
    );
\cuts_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(1),
      Q => cuts_cur(1),
      R => '0'
    );
\cuts_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(2),
      Q => cuts_cur(2),
      R => '0'
    );
\cuts_cur_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(3),
      Q => cuts_cur(3),
      R => '0'
    );
\cuts_cur_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(4),
      Q => cuts_cur(4),
      R => '0'
    );
\cuts_cur_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(5),
      Q => cuts_cur(5),
      R => '0'
    );
\cuts_cur_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(6),
      Q => cuts_cur(6),
      R => '0'
    );
\cuts_cur_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(7),
      Q => cuts_cur(7),
      R => '0'
    );
\cuts_cur_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(8),
      Q => cuts_cur(8),
      R => '0'
    );
\cuts_cur_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^fsm_onehot_state_reg[2]_0\,
      D => cuts_next(9),
      Q => cuts_cur(9),
      R => '0'
    );
\halt_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \halt_cnt_reg_n_0_[0]\,
      O => \halt_cnt[0]_i_1_n_0\
    );
\halt_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"53A0"
    )
        port map (
      I0 => \halt_cnt_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \halt_cnt_reg_n_0_[1]\,
      O => \halt_cnt[1]_i_1_n_0\
    );
\halt_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"770F8800"
    )
        port map (
      I0 => \halt_cnt_reg_n_0_[0]\,
      I1 => \halt_cnt_reg_n_0_[1]\,
      I2 => \^fsm_onehot_state_reg[2]_0\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \halt_cnt_reg_n_0_[2]\,
      O => \halt_cnt[2]_i_1_n_0\
    );
\halt_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \halt_cnt[0]_i_1_n_0\,
      Q => \halt_cnt_reg_n_0_[0]\,
      R => '0'
    );
\halt_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \halt_cnt[1]_i_1_n_0\,
      Q => \halt_cnt_reg_n_0_[1]\,
      R => '0'
    );
\halt_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \halt_cnt[2]_i_1_n_0\,
      Q => \halt_cnt_reg_n_0_[2]\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(7),
      I1 => mem_r(7),
      I2 => \^add_r\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(6),
      I1 => mem_r(6),
      I2 => \^add_r\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(5),
      I1 => mem_r(5),
      I2 => \^add_r\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(4),
      I1 => mem_r(4),
      I2 => \^add_r\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(11),
      I1 => mem_r(9),
      I2 => \^add_r\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(10),
      I1 => mem_r(9),
      I2 => \^add_r\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(9),
      I1 => mem_r(9),
      I2 => \^add_r\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(8),
      I1 => mem_r(8),
      I2 => \^add_r\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(15),
      I1 => mem_r(9),
      I2 => \^add_r\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(14),
      I1 => mem_r(9),
      I2 => \^add_r\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(13),
      I1 => mem_r(9),
      I2 => \^add_r\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(12),
      I1 => mem_r(9),
      I2 => \^add_r\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(3),
      I1 => mem_r(3),
      I2 => \^add_r\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(2),
      I1 => mem_r(2),
      I2 => \^add_r\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(1),
      I1 => mem_r(1),
      I2 => \^add_r\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cuts_cur(0),
      I1 => mem_r(0),
      I2 => \^add_r\,
      O => \i__carry_i_4__7_n_0\
    );
\mem_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \off_r_reg[1]_0\,
      I2 => \off_r_reg[1]_1\,
      O => mem_r_0
    );
\mem_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(0),
      Q => mem_r(0),
      R => '0'
    );
\mem_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(1),
      Q => mem_r(1),
      R => '0'
    );
\mem_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(2),
      Q => mem_r(2),
      R => '0'
    );
\mem_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(3),
      Q => mem_r(3),
      R => '0'
    );
\mem_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(4),
      Q => mem_r(4),
      R => '0'
    );
\mem_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(5),
      Q => mem_r(5),
      R => '0'
    );
\mem_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(6),
      Q => mem_r(6),
      R => '0'
    );
\mem_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(7),
      Q => mem_r(7),
      R => '0'
    );
\mem_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(8),
      Q => mem_r(8),
      R => '0'
    );
\mem_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => membrane(9),
      Q => mem_r(9),
      R => '0'
    );
\off_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => offset(0),
      Q => D(0),
      R => '0'
    );
\off_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => offset(1),
      Q => D(1),
      R => '0'
    );
\offset_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      O => SR(0)
    );
\step_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => step_cnt_reg(0),
      O => \step_cnt[0]_i_2_n_0\
    );
\step_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[0]_i_1_n_7\,
      Q => step_cnt_reg(0),
      R => '0'
    );
\step_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \step_cnt_reg[0]_i_1_n_0\,
      CO(2) => \step_cnt_reg[0]_i_1_n_1\,
      CO(1) => \step_cnt_reg[0]_i_1_n_2\,
      CO(0) => \step_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \step_cnt_reg[0]_i_1_n_4\,
      O(2) => \step_cnt_reg[0]_i_1_n_5\,
      O(1) => \step_cnt_reg[0]_i_1_n_6\,
      O(0) => \step_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => step_cnt_reg(3 downto 1),
      S(0) => \step_cnt[0]_i_2_n_0\
    );
\step_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[8]_i_1_n_5\,
      Q => step_cnt_reg(10),
      R => '0'
    );
\step_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[8]_i_1_n_4\,
      Q => step_cnt_reg(11),
      R => '0'
    );
\step_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[0]_i_1_n_6\,
      Q => step_cnt_reg(1),
      R => '0'
    );
\step_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[0]_i_1_n_5\,
      Q => step_cnt_reg(2),
      R => '0'
    );
\step_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[0]_i_1_n_4\,
      Q => step_cnt_reg(3),
      R => '0'
    );
\step_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[4]_i_1_n_7\,
      Q => step_cnt_reg(4),
      R => '0'
    );
\step_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_cnt_reg[0]_i_1_n_0\,
      CO(3) => \step_cnt_reg[4]_i_1_n_0\,
      CO(2) => \step_cnt_reg[4]_i_1_n_1\,
      CO(1) => \step_cnt_reg[4]_i_1_n_2\,
      CO(0) => \step_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_cnt_reg[4]_i_1_n_4\,
      O(2) => \step_cnt_reg[4]_i_1_n_5\,
      O(1) => \step_cnt_reg[4]_i_1_n_6\,
      O(0) => \step_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => step_cnt_reg(7 downto 4)
    );
\step_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[4]_i_1_n_6\,
      Q => step_cnt_reg(5),
      R => '0'
    );
\step_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[4]_i_1_n_5\,
      Q => step_cnt_reg(6),
      R => '0'
    );
\step_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[4]_i_1_n_4\,
      Q => step_cnt_reg(7),
      R => '0'
    );
\step_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[8]_i_1_n_7\,
      Q => step_cnt_reg(8),
      R => '0'
    );
\step_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \step_cnt_reg[4]_i_1_n_0\,
      CO(3) => \NLW_step_cnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \step_cnt_reg[8]_i_1_n_1\,
      CO(1) => \step_cnt_reg[8]_i_1_n_2\,
      CO(0) => \step_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \step_cnt_reg[8]_i_1_n_4\,
      O(2) => \step_cnt_reg[8]_i_1_n_5\,
      O(1) => \step_cnt_reg[8]_i_1_n_6\,
      O(0) => \step_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => step_cnt_reg(11 downto 8)
    );
\step_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \step_cnt_reg[8]_i_1_n_6\,
      Q => step_cnt_reg(9),
      R => '0'
    );
\unit_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => mem_r_0,
      D => spiked1,
      Q => D(2),
      R => '0'
    );
\x[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => step_cnt_reg(10),
      I1 => step_cnt_reg(7),
      I2 => step_cnt_reg(9),
      I3 => step_cnt_reg(1),
      I4 => \x[8]_i_4_n_0\,
      I5 => \x[8]_i_5_n_0\,
      O => \step_cnt_reg[10]_0\
    );
\x[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => step_cnt_reg(4),
      I1 => step_cnt_reg(0),
      I2 => step_cnt_reg(2),
      I3 => step_cnt_reg(5),
      O => \x[8]_i_4_n_0\
    );
\x[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => step_cnt_reg(3),
      I1 => step_cnt_reg(11),
      I2 => step_cnt_reg(6),
      I3 => step_cnt_reg(8),
      O => \x[8]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_temperature_module is
  port (
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    x_reg_rep : in STD_LOGIC;
    x_reg_rep_0 : in STD_LOGIC;
    x_reg_rep_1 : in STD_LOGIC;
    reset_flipping : in STD_LOGIC;
    \x_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_temperature_module : entity is "temperature_module";
end whole_system_fowler_nordheim_anne_0_0_temperature_module;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_temperature_module is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \x[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \x[8]_i_2__0_n_0\ : STD_LOGIC;
  signal x_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal x_reg_rep_i_23_n_0 : STD_LOGIC;
  signal x_reg_rep_i_24_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \x[0]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \x[1]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \x[2]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \x[3]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \x[4]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \x[7]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \x[8]_i_2__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of x_reg_rep_i_24 : label is "soft_lutpair39";
begin
  E(0) <= \^e\(0);
\x[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_reg(0),
      O => \x[0]_i_1__0_n_0\
    );
\x[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x_reg(1),
      I1 => x_reg(0),
      O => \x[1]_i_1__0_n_0\
    );
\x[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      O => \x[2]_i_1__0_n_0\
    );
\x[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => x_reg(3),
      I1 => x_reg(0),
      I2 => x_reg(1),
      I3 => x_reg(2),
      O => \x[3]_i_1__0_n_0\
    );
\x[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => x_reg(4),
      I1 => x_reg(3),
      I2 => x_reg(0),
      I3 => x_reg(1),
      I4 => x_reg(2),
      O => \x[4]_i_1__0_n_0\
    );
\x[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => x_reg(5),
      I1 => x_reg(3),
      I2 => x_reg(0),
      I3 => x_reg(1),
      I4 => x_reg(2),
      I5 => x_reg(4),
      O => \x[5]_i_1__0_n_0\
    );
\x[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => x_reg(6),
      I1 => x_reg_rep_i_23_n_0,
      O => \x[6]_i_1__0_n_0\
    );
\x[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => x_reg_rep_i_23_n_0,
      I1 => x_reg(6),
      I2 => x_reg(7),
      O => \x[7]_i_1__0_n_0\
    );
\x[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F7FF"
    )
        port map (
      I0 => x_reg(7),
      I1 => x_reg(6),
      I2 => x_reg_rep_i_23_n_0,
      I3 => x_reg(8),
      I4 => \x_reg[0]_0\,
      O => \^e\(0)
    );
\x[8]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => x_reg(8),
      I1 => x_reg_rep_i_23_n_0,
      I2 => x_reg(6),
      I3 => x_reg(7),
      O => \x[8]_i_2__0_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[0]_i_1__0_n_0\,
      Q => x_reg(0),
      R => reset_flipping
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[1]_i_1__0_n_0\,
      Q => x_reg(1),
      R => reset_flipping
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[2]_i_1__0_n_0\,
      Q => x_reg(2),
      R => reset_flipping
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[3]_i_1__0_n_0\,
      Q => x_reg(3),
      R => reset_flipping
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[4]_i_1__0_n_0\,
      Q => x_reg(4),
      R => reset_flipping
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[5]_i_1__0_n_0\,
      Q => x_reg(5),
      R => reset_flipping
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[6]_i_1__0_n_0\,
      Q => x_reg(6),
      R => reset_flipping
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[7]_i_1__0_n_0\,
      Q => x_reg(7),
      R => reset_flipping
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \x[8]_i_2__0_n_0\,
      Q => x_reg(8),
      R => reset_flipping
    );
x_reg_rep_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F708"
    )
        port map (
      I0 => x_reg(7),
      I1 => x_reg(6),
      I2 => x_reg_rep_i_23_n_0,
      I3 => x_reg(8),
      I4 => reset_flipping,
      O => ADDRBWRADDR(8)
    );
x_reg_rep_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A6A6A6A6A6A600"
    )
        port map (
      I0 => x_reg(7),
      I1 => x_reg(6),
      I2 => x_reg_rep_i_23_n_0,
      I3 => x_reg_rep,
      I4 => x_reg_rep_0,
      I5 => x_reg_rep_1,
      O => ADDRBWRADDR(7)
    );
x_reg_rep_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999990"
    )
        port map (
      I0 => x_reg_rep_i_23_n_0,
      I1 => x_reg(6),
      I2 => x_reg_rep,
      I3 => x_reg_rep_0,
      I4 => x_reg_rep_1,
      O => ADDRBWRADDR(6)
    );
x_reg_rep_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2D2D2D2D2D200"
    )
        port map (
      I0 => x_reg(4),
      I1 => x_reg_rep_i_24_n_0,
      I2 => x_reg(5),
      I3 => x_reg_rep,
      I4 => x_reg_rep_0,
      I5 => x_reg_rep_1,
      O => ADDRBWRADDR(5)
    );
x_reg_rep_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      I3 => x_reg(3),
      I4 => x_reg(4),
      I5 => reset_flipping,
      O => ADDRBWRADDR(4)
    );
x_reg_rep_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      I3 => x_reg(3),
      I4 => reset_flipping,
      O => ADDRBWRADDR(3)
    );
x_reg_rep_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878787800"
    )
        port map (
      I0 => x_reg(0),
      I1 => x_reg(1),
      I2 => x_reg(2),
      I3 => x_reg_rep,
      I4 => x_reg_rep_0,
      I5 => x_reg_rep_1,
      O => ADDRBWRADDR(2)
    );
x_reg_rep_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666660"
    )
        port map (
      I0 => x_reg(0),
      I1 => x_reg(1),
      I2 => x_reg_rep,
      I3 => x_reg_rep_0,
      I4 => x_reg_rep_1,
      O => ADDRBWRADDR(1)
    );
x_reg_rep_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => x_reg(0),
      I1 => x_reg_rep,
      I2 => x_reg_rep_0,
      I3 => x_reg_rep_1,
      O => ADDRBWRADDR(0)
    );
x_reg_rep_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => x_reg(4),
      I1 => x_reg(2),
      I2 => x_reg(1),
      I3 => x_reg(0),
      I4 => x_reg(3),
      I5 => x_reg(5),
      O => x_reg_rep_i_23_n_0
    );
x_reg_rep_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      I3 => x_reg(3),
      O => x_reg_rep_i_24_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_temperature_module_6 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    B : out STD_LOGIC_VECTOR ( 17 downto 0 );
    x_reg_rep_0 : in STD_LOGIC;
    x_reg_rep_1 : in STD_LOGIC;
    x_reg_rep_2 : in STD_LOGIC;
    reset_flipping : in STD_LOGIC;
    \x_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    x_reg_rep_3 : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_temperature_module_6 : entity is "temperature_module";
end whole_system_fowler_nordheim_anne_0_0_temperature_module_6;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_temperature_module_6 is
  signal \x[0]_i_1_n_0\ : STD_LOGIC;
  signal \x[1]_i_1_n_0\ : STD_LOGIC;
  signal \x[2]_i_1_n_0\ : STD_LOGIC;
  signal \x[3]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_1_n_0\ : STD_LOGIC;
  signal \x[5]_i_1_n_0\ : STD_LOGIC;
  signal \x[6]_i_1_n_0\ : STD_LOGIC;
  signal \x[7]_i_1_n_0\ : STD_LOGIC;
  signal \x[8]_i_1_n_0\ : STD_LOGIC;
  signal \x[8]_i_2_n_0\ : STD_LOGIC;
  signal x_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal x_reg_rep_i_10_n_0 : STD_LOGIC;
  signal x_reg_rep_i_11_n_0 : STD_LOGIC;
  signal x_reg_rep_i_1_n_0 : STD_LOGIC;
  signal x_reg_rep_i_21_n_0 : STD_LOGIC;
  signal x_reg_rep_i_22_n_0 : STD_LOGIC;
  signal x_reg_rep_i_3_n_0 : STD_LOGIC;
  signal x_reg_rep_i_4_n_0 : STD_LOGIC;
  signal x_reg_rep_i_5_n_0 : STD_LOGIC;
  signal x_reg_rep_i_6_n_0 : STD_LOGIC;
  signal x_reg_rep_i_7_n_0 : STD_LOGIC;
  signal x_reg_rep_i_8_n_0 : STD_LOGIC;
  signal x_reg_rep_i_9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \x[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \x[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \x[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \x[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \x[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \x[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \x[8]_i_2\ : label is "soft_lutpair7";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of x_reg_rep : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of x_reg_rep : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of x_reg_rep : label is 9216;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of x_reg_rep : label is "neuroSA_machine/unit_gen[0].unit_inst/neuron_ensemble_inst/u_flip/u_temp/x_reg_rep";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of x_reg_rep : label is "NONE";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of x_reg_rep : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of x_reg_rep : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of x_reg_rep : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of x_reg_rep : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of x_reg_rep : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of x_reg_rep : label is 17;
  attribute SOFT_HLUTNM of x_reg_rep_i_22 : label is "soft_lutpair8";
begin
\x[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_reg(0),
      O => \x[0]_i_1_n_0\
    );
\x[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x_reg(1),
      I1 => x_reg(0),
      O => \x[1]_i_1_n_0\
    );
\x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      O => \x[2]_i_1_n_0\
    );
\x[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => x_reg(3),
      I1 => x_reg(0),
      I2 => x_reg(1),
      I3 => x_reg(2),
      O => \x[3]_i_1_n_0\
    );
\x[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => x_reg(4),
      I1 => x_reg(3),
      I2 => x_reg(0),
      I3 => x_reg(1),
      I4 => x_reg(2),
      O => \x[4]_i_1_n_0\
    );
\x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => x_reg(5),
      I1 => x_reg(3),
      I2 => x_reg(0),
      I3 => x_reg(1),
      I4 => x_reg(2),
      I5 => x_reg(4),
      O => \x[5]_i_1_n_0\
    );
\x[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => x_reg(6),
      I1 => x_reg_rep_i_21_n_0,
      O => \x[6]_i_1_n_0\
    );
\x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => x_reg_rep_i_21_n_0,
      I1 => x_reg(6),
      I2 => x_reg(7),
      O => \x[7]_i_1_n_0\
    );
\x[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F7FF"
    )
        port map (
      I0 => x_reg(7),
      I1 => x_reg(6),
      I2 => x_reg_rep_i_21_n_0,
      I3 => x_reg(8),
      I4 => \x_reg[0]_0\,
      O => \x[8]_i_1_n_0\
    );
\x[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => x_reg(8),
      I1 => x_reg_rep_i_21_n_0,
      I2 => x_reg(6),
      I3 => x_reg(7),
      O => \x[8]_i_2_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[0]_i_1_n_0\,
      Q => x_reg(0),
      R => reset_flipping
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[1]_i_1_n_0\,
      Q => x_reg(1),
      R => reset_flipping
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[2]_i_1_n_0\,
      Q => x_reg(2),
      R => reset_flipping
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[3]_i_1_n_0\,
      Q => x_reg(3),
      R => reset_flipping
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[4]_i_1_n_0\,
      Q => x_reg(4),
      R => reset_flipping
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[5]_i_1_n_0\,
      Q => x_reg(5),
      R => reset_flipping
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[6]_i_1_n_0\,
      Q => x_reg(6),
      R => reset_flipping
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[7]_i_1_n_0\,
      Q => x_reg(7),
      R => reset_flipping
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \x[8]_i_1_n_0\,
      D => \x[8]_i_2_n_0\,
      Q => x_reg(8),
      R => reset_flipping
    );
x_reg_rep: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000004",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0E460F4C107C11E01388158818001B241F3C24D02CE83998507085C090006F30",
      INIT_01 => X"0726076107A007E4082C087C08D0092E099209C80A3C0ABE0B4A0BE80C9A0D62",
      INIT_02 => X"04E004F905140521053E055C057B059C05BE05E306090632065D068B06BB06EF",
      INIT_03 => X"03BA03C803D603E503F404040414042504370449045C04700485049A04B004C8",
      INIT_04 => X"0311031A0323032C03360340034A0354035F036A03750381038D0393039F03AC",
      INIT_05 => X"02A102A702AD02B302BA02C102C702CB02D202D902E102E802F002F803000308",
      INIT_06 => X"024E02520257025C02600265026A026F02740279027E02840289028F0295029B",
      INIT_07 => X"021202150219021C022002240227022B022F02330237023B023F02430247024C",
      INIT_08 => X"01E301E601E801EB01EE01F101F401F701FA01FD01FE020202050208020B020F",
      INIT_09 => X"01BD01C001C201C401C501C801CA01CC01CF01D101D401D601D901DB01DE01E0",
      INIT_0A => X"019E019F01A101A301A501A701A901AB01AD01AF01B101B301B501B701B901BB",
      INIT_0B => X"0184018501870189018A018C018D018F019101920194019601970199019A019C",
      INIT_0C => X"016E016F0171017201730175017601780178017A017B017C017E017F01810182",
      INIT_0D => X"015B015C015D015E015F01600162016301640165016601680169016A016B016D",
      INIT_0E => X"014A014B014C014D014E014F015001510152015401550156015701580159015A",
      INIT_0F => X"013C013D013E013F014001400141014201430144014501450146014701480149",
      INIT_10 => X"012F0130013101320132013301340134013501360137013801390139013A013B",
      INIT_11 => X"012301240125012601260127012801280129012A012B012B012C012D012E012E",
      INIT_12 => X"0119011A011B011B011C011C011D011E011E011F012001200121012201220123",
      INIT_13 => X"0110011101110112011201130114011401140115011601160117011701180119",
      INIT_14 => X"0108010801080109010A010A010B010B010C010C010D010D010E010E010F0110",
      INIT_15 => X"0100010001010101010201020103010301040104010501050106010601070107",
      INIT_16 => X"00F900F900FA00FA00FA00FB00FB00FC00FC00FD00FD00FE00FE00FE00FF00FF",
      INIT_17 => X"00F200F300F300F300F400F400F400F500F500F600F600F700F700F700F800F8",
      INIT_18 => X"00EC00EC00ED00ED00EE00EE00EE00EF00EF00EF00F000F000F100F100F100F2",
      INIT_19 => X"00E700E700E700E800E800E800E900E900E900EA00EA00EA00EB00EB00EC00EC",
      INIT_1A => X"00E100E200E200E200E300E300E300E400E400E400E400E500E500E500E600E6",
      INIT_1B => X"00DD00DD00DD00DD00DE00DE00DE00DF00DF00DF00DF00E000E000E000E100E1",
      INIT_1C => X"00D800D800D800D900D900D900DA00DA00DA00DA00DB00DB00DB00DC00DC00DC",
      INIT_1D => X"00D400D400D400D500D500D500D500D600D600D600D600D700D700D700D700D8",
      INIT_1E => X"00D000D000D000D100D100D100D100D100D200D200D200D200D300D300D300D3",
      INIT_1F => X"00CC00CC00CC00CD00CD00CD00CD00CE00CE00CE00CE00CF00CF00CF00CF00D0",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12) => x_reg_rep_i_3_n_0,
      ADDRARDADDR(11) => x_reg_rep_i_4_n_0,
      ADDRARDADDR(10) => x_reg_rep_i_5_n_0,
      ADDRARDADDR(9) => x_reg_rep_i_6_n_0,
      ADDRARDADDR(8) => x_reg_rep_i_7_n_0,
      ADDRARDADDR(7) => x_reg_rep_i_8_n_0,
      ADDRARDADDR(6) => x_reg_rep_i_9_n_0,
      ADDRARDADDR(5) => x_reg_rep_i_10_n_0,
      ADDRARDADDR(4) => x_reg_rep_i_11_n_0,
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13) => '0',
      ADDRBWRADDR(12 downto 4) => ADDRBWRADDR(8 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => \out\(15 downto 0),
      DOBDO(15 downto 0) => B(15 downto 0),
      DOPADOP(1 downto 0) => \out\(17 downto 16),
      DOPBDOP(1 downto 0) => B(17 downto 16),
      ENARDEN => x_reg_rep_i_1_n_0,
      ENBWREN => x_reg_rep_3,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
x_reg_rep_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => x_reg_rep_0,
      I1 => x_reg_rep_1,
      I2 => x_reg_rep_2,
      I3 => \x[8]_i_1_n_0\,
      O => x_reg_rep_i_1_n_0
    );
x_reg_rep_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666660"
    )
        port map (
      I0 => x_reg(0),
      I1 => x_reg(1),
      I2 => x_reg_rep_0,
      I3 => x_reg_rep_1,
      I4 => x_reg_rep_2,
      O => x_reg_rep_i_10_n_0
    );
x_reg_rep_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => x_reg(0),
      I1 => x_reg_rep_0,
      I2 => x_reg_rep_1,
      I3 => x_reg_rep_2,
      O => x_reg_rep_i_11_n_0
    );
x_reg_rep_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => x_reg(4),
      I1 => x_reg(2),
      I2 => x_reg(1),
      I3 => x_reg(0),
      I4 => x_reg(3),
      I5 => x_reg(5),
      O => x_reg_rep_i_21_n_0
    );
x_reg_rep_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      I3 => x_reg(3),
      O => x_reg_rep_i_22_n_0
    );
x_reg_rep_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F708"
    )
        port map (
      I0 => x_reg(7),
      I1 => x_reg(6),
      I2 => x_reg_rep_i_21_n_0,
      I3 => x_reg(8),
      I4 => reset_flipping,
      O => x_reg_rep_i_3_n_0
    );
x_reg_rep_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A6A6A6A6A6A600"
    )
        port map (
      I0 => x_reg(7),
      I1 => x_reg(6),
      I2 => x_reg_rep_i_21_n_0,
      I3 => x_reg_rep_0,
      I4 => x_reg_rep_1,
      I5 => x_reg_rep_2,
      O => x_reg_rep_i_4_n_0
    );
x_reg_rep_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999990"
    )
        port map (
      I0 => x_reg_rep_i_21_n_0,
      I1 => x_reg(6),
      I2 => x_reg_rep_0,
      I3 => x_reg_rep_1,
      I4 => x_reg_rep_2,
      O => x_reg_rep_i_5_n_0
    );
x_reg_rep_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2D2D2D2D2D200"
    )
        port map (
      I0 => x_reg(4),
      I1 => x_reg_rep_i_22_n_0,
      I2 => x_reg(5),
      I3 => x_reg_rep_0,
      I4 => x_reg_rep_1,
      I5 => x_reg_rep_2,
      O => x_reg_rep_i_6_n_0
    );
x_reg_rep_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      I3 => x_reg(3),
      I4 => x_reg(4),
      I5 => reset_flipping,
      O => x_reg_rep_i_7_n_0
    );
x_reg_rep_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => x_reg(2),
      I1 => x_reg(1),
      I2 => x_reg(0),
      I3 => x_reg(3),
      I4 => reset_flipping,
      O => x_reg_rep_i_8_n_0
    );
x_reg_rep_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878787800"
    )
        port map (
      I0 => x_reg(0),
      I1 => x_reg(1),
      I2 => x_reg(2),
      I3 => x_reg_rep_0,
      I4 => x_reg_rep_1,
      I5 => x_reg_rep_2,
      O => x_reg_rep_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_transmit_buffer is
  port (
    add_mem_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    spike_reg_reg_0 : out STD_LOGIC;
    \cnt_prop_reg[0]_0\ : out STD_LOGIC;
    spiked1 : out STD_LOGIC;
    \offset_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \membrane_reg_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \state_reg[1]_1\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    spike_reg_reg_1 : in STD_LOGIC;
    \state_reg[2]_1\ : in STD_LOGIC;
    \unit_r_reg[0]\ : in STD_LOGIC;
    \offset_reg_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \membrane_reg_reg[9]_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_transmit_buffer : entity is "transmit_buffer";
end whole_system_fowler_nordheim_anne_0_0_transmit_buffer;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_transmit_buffer is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_prop[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \^cnt_prop_reg[0]_0\ : STD_LOGIC;
  signal \cnt_prop_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_upd[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_upd[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_upd_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_upd_reg_n_0_[1]\ : STD_LOGIC;
  signal \^spike_reg_reg_0\ : STD_LOGIC;
  signal \state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  \cnt_prop_reg[0]_0\ <= \^cnt_prop_reg[0]_0\;
  spike_reg_reg_0 <= \^spike_reg_reg_0\;
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
  \state_reg[2]_0\ <= \^state_reg[2]_0\;
add_mem_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => Q(0),
      Q => add_mem_reg_reg_0(0),
      R => SR(0)
    );
\cnt_prop[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \state_reg[0]_1\,
      I1 => \cnt_prop_reg_n_0_[0]\,
      I2 => \^state_reg[0]_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \^state_reg[1]_0\,
      O => \cnt_prop[0]_i_1__0_n_0\
    );
\cnt_prop_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_prop[0]_i_1__0_n_0\,
      Q => \cnt_prop_reg_n_0_[0]\,
      R => '0'
    );
\cnt_upd[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \cnt_upd_reg_n_0_[0]\,
      I1 => \^state_reg[2]_0\,
      I2 => \state_reg[0]_1\,
      I3 => \^state_reg[0]_0\,
      I4 => \^state_reg[1]_0\,
      O => \cnt_upd[0]_i_1_n_0\
    );
\cnt_upd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000060"
    )
        port map (
      I0 => \cnt_upd_reg_n_0_[1]\,
      I1 => \cnt_upd_reg_n_0_[0]\,
      I2 => \^state_reg[2]_0\,
      I3 => \state_reg[0]_1\,
      I4 => \^state_reg[0]_0\,
      I5 => \^state_reg[1]_0\,
      O => \cnt_upd[1]_i_1_n_0\
    );
\cnt_upd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_upd[0]_i_1_n_0\,
      Q => \cnt_upd_reg_n_0_[0]\,
      R => '0'
    );
\cnt_upd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_upd[1]_i_1_n_0\,
      Q => \cnt_upd_reg_n_0_[1]\,
      R => '0'
    );
\membrane_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(0),
      Q => \membrane_reg_reg[9]_0\(0),
      R => SR(0)
    );
\membrane_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(1),
      Q => \membrane_reg_reg[9]_0\(1),
      R => SR(0)
    );
\membrane_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(2),
      Q => \membrane_reg_reg[9]_0\(2),
      R => SR(0)
    );
\membrane_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(3),
      Q => \membrane_reg_reg[9]_0\(3),
      R => SR(0)
    );
\membrane_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(4),
      Q => \membrane_reg_reg[9]_0\(4),
      R => SR(0)
    );
\membrane_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(5),
      Q => \membrane_reg_reg[9]_0\(5),
      R => SR(0)
    );
\membrane_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(6),
      Q => \membrane_reg_reg[9]_0\(6),
      R => SR(0)
    );
\membrane_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(7),
      Q => \membrane_reg_reg[9]_0\(7),
      R => SR(0)
    );
\membrane_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(8),
      Q => \membrane_reg_reg[9]_0\(8),
      R => SR(0)
    );
\membrane_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_1\(9),
      Q => \membrane_reg_reg[9]_0\(9),
      R => SR(0)
    );
\offset_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \^state_reg[1]_0\,
      I2 => \^state_reg[2]_0\,
      O => \^e\(0)
    );
\offset_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \offset_reg_reg[1]_1\(0),
      Q => \offset_reg_reg[1]_0\(0),
      R => SR(0)
    );
\offset_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \offset_reg_reg[1]_1\(1),
      Q => \offset_reg_reg[1]_0\(1),
      R => SR(0)
    );
spike_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spike_reg_reg_1,
      Q => \^spike_reg_reg_0\,
      R => '0'
    );
\state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006222"
    )
        port map (
      I0 => \^state_reg[2]_0\,
      I1 => \^cnt_prop_reg[0]_0\,
      I2 => \^state_reg[1]_0\,
      I3 => \^state_reg[0]_0\,
      I4 => \state_reg[0]_1\,
      I5 => \state_reg[2]_1\,
      O => \state[2]_i_1__0_n_0\
    );
\state[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE222"
    )
        port map (
      I0 => \cnt_prop_reg_n_0_[0]\,
      I1 => \^state_reg[2]_0\,
      I2 => \cnt_upd_reg_n_0_[1]\,
      I3 => \cnt_upd_reg_n_0_[0]\,
      I4 => \^state_reg[1]_0\,
      I5 => \^state_reg[0]_0\,
      O => \^cnt_prop_reg[0]_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_reg[0]_2\,
      Q => \^state_reg[0]_0\,
      R => \state_reg[0]_1\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_reg[1]_1\,
      Q => \^state_reg[1]_0\,
      R => \state_reg[0]_1\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[2]_i_1__0_n_0\,
      Q => \^state_reg[2]_0\,
      R => '0'
    );
\unit_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^spike_reg_reg_0\,
      I1 => \unit_r_reg[0]\,
      O => spiked1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_transmit_buffer_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    storage_CE_advance : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    spike_reg_reg_0 : out STD_LOGIC;
    \cnt_prop_reg[0]_0\ : out STD_LOGIC;
    add_mem : out STD_LOGIC;
    offset : out STD_LOGIC_VECTOR ( 1 downto 0 );
    membrane : out STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    new_sample_reg_0 : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \state_reg[1]_1\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    spike_reg_reg_1 : in STD_LOGIC;
    \state_reg[2]_1\ : in STD_LOGIC;
    \mem_r_reg[0]\ : in STD_LOGIC;
    add_r_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \off_r_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_r_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \offset_reg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \membrane_reg_reg[9]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_transmit_buffer_0 : entity is "transmit_buffer";
end whole_system_fowler_nordheim_anne_0_0_transmit_buffer_0;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_transmit_buffer_0 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_mems : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_prop[0]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_prop_reg[0]_0\ : STD_LOGIC;
  signal \cnt_prop_reg_n_0_[0]\ : STD_LOGIC;
  signal cnt_upd : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt_upd[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_upd[1]_i_1_n_0\ : STD_LOGIC;
  signal membrane_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal offsets : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^spike_reg_reg_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \^state_reg[2]_0\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  \cnt_prop_reg[0]_0\ <= \^cnt_prop_reg[0]_0\;
  spike_reg_reg_0 <= \^spike_reg_reg_0\;
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
  \state_reg[2]_0\ <= \^state_reg[2]_0\;
add_mem_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => Q(0),
      Q => add_mems(0),
      R => SR(0)
    );
add_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => add_mems(0),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => add_r_reg(0),
      O => add_mem
    );
\cnt_prop[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \state_reg[0]_1\,
      I1 => \cnt_prop_reg_n_0_[0]\,
      I2 => \^state_reg[0]_0\,
      I3 => \^state_reg[2]_0\,
      I4 => \^state_reg[1]_0\,
      O => \cnt_prop[0]_i_1_n_0\
    );
\cnt_prop_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_prop[0]_i_1_n_0\,
      Q => \cnt_prop_reg_n_0_[0]\,
      R => '0'
    );
\cnt_upd[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => cnt_upd(0),
      I1 => \^state_reg[2]_0\,
      I2 => \state_reg[0]_1\,
      I3 => \^state_reg[0]_0\,
      I4 => \^state_reg[1]_0\,
      O => \cnt_upd[0]_i_1_n_0\
    );
\cnt_upd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000060"
    )
        port map (
      I0 => cnt_upd(1),
      I1 => cnt_upd(0),
      I2 => \^state_reg[2]_0\,
      I3 => \state_reg[0]_1\,
      I4 => \^state_reg[0]_0\,
      I5 => \^state_reg[1]_0\,
      O => \cnt_upd[1]_i_1_n_0\
    );
\cnt_upd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_upd[0]_i_1_n_0\,
      Q => cnt_upd(0),
      R => '0'
    );
\cnt_upd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_upd[1]_i_1_n_0\,
      Q => cnt_upd(1),
      R => '0'
    );
\mem_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(0),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(0),
      O => membrane(0)
    );
\mem_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(1),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(1),
      O => membrane(1)
    );
\mem_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(2),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(2),
      O => membrane(2)
    );
\mem_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(3),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(3),
      O => membrane(3)
    );
\mem_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(4),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(4),
      O => membrane(4)
    );
\mem_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(5),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(5),
      O => membrane(5)
    );
\mem_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(6),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(6),
      O => membrane(6)
    );
\mem_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(7),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(7),
      O => membrane(7)
    );
\mem_r[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(8),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(8),
      O => membrane(8)
    );
\mem_r[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => membrane_reg(9),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \mem_r_reg[9]\(9),
      O => membrane(9)
    );
\membrane_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(0),
      Q => membrane_reg(0),
      R => SR(0)
    );
\membrane_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(1),
      Q => membrane_reg(1),
      R => SR(0)
    );
\membrane_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(2),
      Q => membrane_reg(2),
      R => SR(0)
    );
\membrane_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(3),
      Q => membrane_reg(3),
      R => SR(0)
    );
\membrane_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(4),
      Q => membrane_reg(4),
      R => SR(0)
    );
\membrane_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(5),
      Q => membrane_reg(5),
      R => SR(0)
    );
\membrane_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(6),
      Q => membrane_reg(6),
      R => SR(0)
    );
\membrane_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(7),
      Q => membrane_reg(7),
      R => SR(0)
    );
\membrane_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(8),
      Q => membrane_reg(8),
      R => SR(0)
    );
\membrane_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \membrane_reg_reg[9]_0\(9),
      Q => membrane_reg(9),
      R => SR(0)
    );
new_sample_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => new_sample_reg_0,
      Q => storage_CE_advance,
      R => '0'
    );
\off_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => offsets(0),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \off_r_reg[1]\(0),
      O => offset(0)
    );
\off_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => offsets(1),
      I1 => \mem_r_reg[0]\,
      I2 => \^spike_reg_reg_0\,
      I3 => \off_r_reg[1]\(1),
      O => offset(1)
    );
\offset_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \^state_reg[1]_0\,
      I2 => \^state_reg[2]_0\,
      O => \^e\(0)
    );
\offset_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \offset_reg_reg[1]_0\(0),
      Q => offsets(0),
      R => SR(0)
    );
\offset_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      D => \offset_reg_reg[1]_0\(1),
      Q => offsets(1),
      R => SR(0)
    );
spike_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spike_reg_reg_1,
      Q => \^spike_reg_reg_0\,
      R => '0'
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006222"
    )
        port map (
      I0 => \^state_reg[2]_0\,
      I1 => \^cnt_prop_reg[0]_0\,
      I2 => \^state_reg[1]_0\,
      I3 => \^state_reg[0]_0\,
      I4 => \state_reg[0]_1\,
      I5 => \state_reg[2]_1\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE222"
    )
        port map (
      I0 => \cnt_prop_reg_n_0_[0]\,
      I1 => \^state_reg[2]_0\,
      I2 => cnt_upd(1),
      I3 => cnt_upd(0),
      I4 => \^state_reg[1]_0\,
      I5 => \^state_reg[0]_0\,
      O => \^cnt_prop_reg[0]_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_reg[0]_2\,
      Q => \^state_reg[0]_0\,
      R => \state_reg[0]_1\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_reg[1]_1\,
      Q => \^state_reg[1]_0\,
      R => \state_reg[0]_1\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \^state_reg[2]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_LFSR_inout is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[4]_1\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_LFSR_inout : entity is "LFSR_inout";
end whole_system_fowler_nordheim_anne_0_0_LFSR_inout;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_LFSR_inout is
begin
u_lfsr: entity work.whole_system_fowler_nordheim_anne_0_0_LFSR
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[4]_0\(0) => \state_reg[4]\(0),
      \state_reg[4]_1\(4 downto 0) => \state_reg[4]_0\(4 downto 0),
      \state_reg[4]_2\ => \state_reg[4]_1\,
      storage_CE_advance => storage_CE_advance
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_LFSR_inout_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[4]_1\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_LFSR_inout_3 : entity is "LFSR_inout";
end whole_system_fowler_nordheim_anne_0_0_LFSR_inout_3;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_LFSR_inout_3 is
begin
u_lfsr: entity work.whole_system_fowler_nordheim_anne_0_0_LFSR_4
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[4]_0\(0) => \state_reg[4]\(0),
      \state_reg[4]_1\(4 downto 0) => \state_reg[4]_0\(4 downto 0),
      \state_reg[4]_2\ => \state_reg[4]_1\,
      storage_CE_advance => storage_CE_advance
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0\ is
  port (
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0\ : entity is "LFSR_inout";
end \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0\;

architecture STRUCTURE of \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0\ is
begin
u_lfsr: entity work.\whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0\
     port map (
      Q(0) => Q(0),
      SS(0) => SS(0),
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[0]_0\ => \state_reg[0]\,
      \state_reg[0]_1\ => \state_reg[0]_0\,
      \state_reg[0]_2\ => \state_reg[0]_1\,
      \state_reg[15]_0\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_1\ => \state_reg[15]_0\,
      \state_reg[15]_2\(15 downto 0) => \state_reg[15]_1\(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0_7\ is
  port (
    \slv_reg3_reg[14]\ : out STD_LOGIC;
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[15]_1\ : in STD_LOGIC;
    \state_reg[15]_2\ : in STD_LOGIC;
    \state_reg[15]_3\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0_7\ : entity is "LFSR_inout";
end \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0_7\;

architecture STRUCTURE of \whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0_7\ is
begin
u_lfsr: entity work.\whole_system_fowler_nordheim_anne_0_0_LFSR__parameterized0_8\
     port map (
      Q(0) => Q(0),
      SS(0) => SS(0),
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg3_reg[14]\ => \slv_reg3_reg[14]\,
      \state_reg[15]_0\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_1\(15 downto 0) => \state_reg[15]_0\(15 downto 0),
      \state_reg[15]_2\ => \state_reg[15]_1\,
      \state_reg[15]_3\ => \state_reg[15]_2\,
      \state_reg[15]_4\ => \state_reg[15]_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_log_noise_generator is
  port (
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_flipping : out STD_LOGIC;
    \state_reg[15]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_log_noise_generator : entity is "log_noise_generator";
end whole_system_fowler_nordheim_anne_0_0_log_noise_generator;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_log_noise_generator is
begin
u_src: entity work.\whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0\
     port map (
      Q(0) => Q(0),
      SS(0) => reset_flipping,
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[0]\ => \state_reg[0]\,
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[0]_1\ => \state_reg[0]_1\,
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\ => \state_reg[15]_0\,
      \state_reg[15]_1\(15 downto 0) => \state_reg[15]_1\(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_log_noise_generator_5 is
  port (
    \slv_reg3_reg[14]\ : out STD_LOGIC;
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_flipping : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_reg[15]_1\ : in STD_LOGIC;
    \state_reg[15]_2\ : in STD_LOGIC;
    \state_reg[15]_3\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_log_noise_generator_5 : entity is "log_noise_generator";
end whole_system_fowler_nordheim_anne_0_0_log_noise_generator_5;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_log_noise_generator_5 is
begin
u_src: entity work.\whole_system_fowler_nordheim_anne_0_0_LFSR_inout__parameterized0_7\
     port map (
      Q(0) => Q(0),
      SS(0) => reset_flipping,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg3_reg[14]\ => \slv_reg3_reg[14]\,
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\(15 downto 0) => \state_reg[15]_0\(15 downto 0),
      \state_reg[15]_1\ => \state_reg[15]_1\,
      \state_reg[15]_2\ => \state_reg[15]_2\,
      \state_reg[15]_3\ => \state_reg[15]_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage is
  port (
    \index_of_neuron_that_fired_reg_reg[2]\ : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    \selected_idx_offset_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \neuron_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \selected_membrane_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \mem_ram_reg[0][0]_0\ : in STD_LOGIC;
    \mem_ram_reg[0][0]_1\ : in STD_LOGIC;
    \mem_ram_reg[0][0]_2\ : in STD_LOGIC;
    incrementing_reg : in STD_LOGIC;
    \state_ram_reg[2][1]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_ram_reg[3][0]_0\ : in STD_LOGIC;
    \state_ram_reg[0][0]_0\ : in STD_LOGIC;
    \state_ram_reg[1][0]_0\ : in STD_LOGIC;
    \state_ram_reg[2][0]_0\ : in STD_LOGIC;
    \state_ram[3][1]_i_2__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[4]_0\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC;
    \mem_ram_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage : entity is "neuron_ensemble_storage";
end whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage is
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_7\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal idx_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mem_ram[0][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][7]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][8]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[0][9]_i_2__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][7]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][8]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[1][9]_i_2__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][7]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][8]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[2][9]_i_2__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][7]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][8]_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_ram[3][9]_i_2__0_n_0\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \mem_ram_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \neuron_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \neuron_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \selected_membrane[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \state_ram[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \state_ram[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[3][1]\ : STD_LOGIC;
  signal u_lfsr_n_0 : STD_LOGIC;
  signal u_lfsr_n_1 : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__2/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__2/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__3/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__3/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__3/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__3/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__3/i__carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mem_ram[0][0]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \mem_ram[0][1]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \mem_ram[0][2]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mem_ram[0][3]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mem_ram[0][4]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mem_ram[0][5]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mem_ram[0][6]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mem_ram[0][7]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mem_ram[0][8]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mem_ram[0][9]_i_2__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mem_ram[1][0]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mem_ram[1][1]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mem_ram[1][2]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mem_ram[1][3]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mem_ram[1][4]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mem_ram[1][5]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mem_ram[1][6]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mem_ram[1][7]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mem_ram[1][8]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mem_ram[1][9]_i_2__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mem_ram[2][0]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mem_ram[2][1]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mem_ram[2][2]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mem_ram[2][3]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mem_ram[2][4]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mem_ram[2][5]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mem_ram[2][6]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mem_ram[2][7]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mem_ram[2][8]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mem_ram[2][9]_i_2__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mem_ram[3][0]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mem_ram[3][1]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mem_ram[3][2]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mem_ram[3][3]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mem_ram[3][4]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mem_ram[3][5]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mem_ram[3][6]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mem_ram[3][7]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mem_ram[3][8]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mem_ram[3][9]_i_2__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mem_ram[3][9]_i_3__0\ : label is "soft_lutpair41";
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \mem_ram_reg[0][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][9]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][9]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][9]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][9]\ : label is "block";
  attribute SOFT_HLUTNM of \state_ram[2][1]_i_4__0\ : label is "soft_lutpair41";
  attribute RAM_STYLE of \state_ram_reg[0][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[0][1]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[1][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[1][1]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[2][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[2][1]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[3][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[3][1]\ : label is "block";
begin
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__5_n_0\,
      DI(2) => \mem_ram_reg_n_0_[3][2]\,
      DI(1) => \mem_ram_reg_n_0_[3][1]\,
      DI(0) => '0',
      O(3) => \_inferred__0/i__carry_n_4\,
      O(2) => \_inferred__0/i__carry_n_5\,
      O(1) => \_inferred__0/i__carry_n_6\,
      O(0) => \_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_2__4_n_0\,
      S(2) => \i__carry_i_3__4_n_0\,
      S(1) => \i__carry_i_4__3_n_0\,
      S(0) => \mem_ram_reg_n_0_[3][0]\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mem_ram_reg_n_0_[3][6]\,
      DI(2) => \mem_ram_reg_n_0_[3][5]\,
      DI(1) => \mem_ram_reg_n_0_[3][4]\,
      DI(0) => \mem_ram_reg_n_0_[3][3]\,
      O(3) => \_inferred__0/i__carry__0_n_4\,
      O(2) => \_inferred__0/i__carry__0_n_5\,
      O(1) => \_inferred__0/i__carry__0_n_6\,
      O(0) => \_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__4_n_0\,
      S(2) => \i__carry__0_i_2__4_n_0\,
      S(1) => \i__carry__0_i_3__4_n_0\,
      S(0) => \i__carry__0_i_4__4_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg_n_0_[3][7]\,
      O(3 downto 2) => \NLW__inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__0/i__carry__1_n_6\,
      O(0) => \_inferred__0/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__4_n_0\,
      S(0) => \i__carry__1_i_2__4_n_0\
    );
\_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i__carry_n_0\,
      CO(2) => \_inferred__1/i__carry_n_1\,
      CO(1) => \_inferred__1/i__carry_n_2\,
      CO(0) => \_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__6_n_0\,
      DI(2) => \mem_ram_reg_n_0_[2][2]\,
      DI(1) => \mem_ram_reg_n_0_[2][1]\,
      DI(0) => '0',
      O(3) => \_inferred__1/i__carry_n_4\,
      O(2) => \_inferred__1/i__carry_n_5\,
      O(1) => \_inferred__1/i__carry_n_6\,
      O(0) => \_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_2__5_n_0\,
      S(2) => \i__carry_i_3__5_n_0\,
      S(1) => \i__carry_i_4__4_n_0\,
      S(0) => \mem_ram_reg_n_0_[2][0]\
    );
\_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry_n_0\,
      CO(3) => \_inferred__1/i__carry__0_n_0\,
      CO(2) => \_inferred__1/i__carry__0_n_1\,
      CO(1) => \_inferred__1/i__carry__0_n_2\,
      CO(0) => \_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mem_ram_reg_n_0_[2][6]\,
      DI(2) => \mem_ram_reg_n_0_[2][5]\,
      DI(1) => \mem_ram_reg_n_0_[2][4]\,
      DI(0) => \mem_ram_reg_n_0_[2][3]\,
      O(3) => \_inferred__1/i__carry__0_n_4\,
      O(2) => \_inferred__1/i__carry__0_n_5\,
      O(1) => \_inferred__1/i__carry__0_n_6\,
      O(0) => \_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__5_n_0\,
      S(2) => \i__carry__0_i_2__5_n_0\,
      S(1) => \i__carry__0_i_3__5_n_0\,
      S(0) => \i__carry__0_i_4__5_n_0\
    );
\_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__1/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg_n_0_[2][7]\,
      O(3 downto 2) => \NLW__inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__1/i__carry__1_n_6\,
      O(0) => \_inferred__1/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__5_n_0\,
      S(0) => \i__carry__1_i_2__5_n_0\
    );
\_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__2/i__carry_n_0\,
      CO(2) => \_inferred__2/i__carry_n_1\,
      CO(1) => \_inferred__2/i__carry_n_2\,
      CO(0) => \_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__7_n_0\,
      DI(2) => \mem_ram_reg_n_0_[1][2]\,
      DI(1) => \mem_ram_reg_n_0_[1][1]\,
      DI(0) => '0',
      O(3) => \_inferred__2/i__carry_n_4\,
      O(2) => \_inferred__2/i__carry_n_5\,
      O(1) => \_inferred__2/i__carry_n_6\,
      O(0) => \_inferred__2/i__carry_n_7\,
      S(3) => \i__carry_i_2__6_n_0\,
      S(2) => \i__carry_i_3__6_n_0\,
      S(1) => \i__carry_i_4__5_n_0\,
      S(0) => \mem_ram_reg_n_0_[1][0]\
    );
\_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry_n_0\,
      CO(3) => \_inferred__2/i__carry__0_n_0\,
      CO(2) => \_inferred__2/i__carry__0_n_1\,
      CO(1) => \_inferred__2/i__carry__0_n_2\,
      CO(0) => \_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mem_ram_reg_n_0_[1][6]\,
      DI(2) => \mem_ram_reg_n_0_[1][5]\,
      DI(1) => \mem_ram_reg_n_0_[1][4]\,
      DI(0) => \mem_ram_reg_n_0_[1][3]\,
      O(3) => \_inferred__2/i__carry__0_n_4\,
      O(2) => \_inferred__2/i__carry__0_n_5\,
      O(1) => \_inferred__2/i__carry__0_n_6\,
      O(0) => \_inferred__2/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__6_n_0\,
      S(2) => \i__carry__0_i_2__6_n_0\,
      S(1) => \i__carry__0_i_3__6_n_0\,
      S(0) => \i__carry__0_i_4__6_n_0\
    );
\_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__2/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg_n_0_[1][7]\,
      O(3 downto 2) => \NLW__inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__2/i__carry__1_n_6\,
      O(0) => \_inferred__2/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__6_n_0\,
      S(0) => \i__carry__1_i_2__6_n_0\
    );
\_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__3/i__carry_n_0\,
      CO(2) => \_inferred__3/i__carry_n_1\,
      CO(1) => \_inferred__3/i__carry_n_2\,
      CO(0) => \_inferred__3/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \mem_ram_reg_n_0_[0][2]\,
      DI(1) => \mem_ram_reg_n_0_[0][1]\,
      DI(0) => '0',
      O(3) => \_inferred__3/i__carry_n_4\,
      O(2) => \_inferred__3/i__carry_n_5\,
      O(1) => \_inferred__3/i__carry_n_6\,
      O(0) => \_inferred__3/i__carry_n_7\,
      S(3) => \i__carry_i_2__7_n_0\,
      S(2) => \i__carry_i_3__7_n_0\,
      S(1) => \i__carry_i_4__6_n_0\,
      S(0) => \mem_ram_reg_n_0_[0][0]\
    );
\_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i__carry_n_0\,
      CO(3) => \_inferred__3/i__carry__0_n_0\,
      CO(2) => \_inferred__3/i__carry__0_n_1\,
      CO(1) => \_inferred__3/i__carry__0_n_2\,
      CO(0) => \_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \mem_ram_reg_n_0_[0][6]\,
      DI(2) => \mem_ram_reg_n_0_[0][5]\,
      DI(1) => \mem_ram_reg_n_0_[0][4]\,
      DI(0) => \mem_ram_reg_n_0_[0][3]\,
      O(3) => \_inferred__3/i__carry__0_n_4\,
      O(2) => \_inferred__3/i__carry__0_n_5\,
      O(1) => \_inferred__3/i__carry__0_n_6\,
      O(0) => \_inferred__3/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__7_n_0\,
      S(2) => \i__carry__0_i_2__7_n_0\,
      S(1) => \i__carry__0_i_3__7_n_0\,
      S(0) => \i__carry__0_i_4__7_n_0\
    );
\_inferred__3/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__3/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__3/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg_n_0_[0][7]\,
      O(3 downto 2) => \NLW__inferred__3/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__3/i__carry__1_n_6\,
      O(0) => \_inferred__3/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__7_n_0\,
      S(0) => \i__carry__1_i_2__7_n_0\
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[3][6]\,
      I1 => \mem_ram_reg_n_0_[3][7]\,
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[2][6]\,
      I1 => \mem_ram_reg_n_0_[2][7]\,
      O => \i__carry__0_i_1__5_n_0\
    );
\i__carry__0_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][6]\,
      I1 => \mem_ram_reg_n_0_[1][7]\,
      O => \i__carry__0_i_1__6_n_0\
    );
\i__carry__0_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][6]\,
      I1 => \mem_ram_reg_n_0_[0][7]\,
      O => \i__carry__0_i_1__7_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[3][5]\,
      I1 => \mem_ram_reg_n_0_[3][6]\,
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[2][5]\,
      I1 => \mem_ram_reg_n_0_[2][6]\,
      O => \i__carry__0_i_2__5_n_0\
    );
\i__carry__0_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][5]\,
      I1 => \mem_ram_reg_n_0_[1][6]\,
      O => \i__carry__0_i_2__6_n_0\
    );
\i__carry__0_i_2__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][5]\,
      I1 => \mem_ram_reg_n_0_[0][6]\,
      O => \i__carry__0_i_2__7_n_0\
    );
\i__carry__0_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[3][4]\,
      I1 => \mem_ram_reg_n_0_[3][5]\,
      O => \i__carry__0_i_3__4_n_0\
    );
\i__carry__0_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[2][4]\,
      I1 => \mem_ram_reg_n_0_[2][5]\,
      O => \i__carry__0_i_3__5_n_0\
    );
\i__carry__0_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][4]\,
      I1 => \mem_ram_reg_n_0_[1][5]\,
      O => \i__carry__0_i_3__6_n_0\
    );
\i__carry__0_i_3__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][4]\,
      I1 => \mem_ram_reg_n_0_[0][5]\,
      O => \i__carry__0_i_3__7_n_0\
    );
\i__carry__0_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[3][3]\,
      I1 => \mem_ram_reg_n_0_[3][4]\,
      O => \i__carry__0_i_4__4_n_0\
    );
\i__carry__0_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[2][3]\,
      I1 => \mem_ram_reg_n_0_[2][4]\,
      O => \i__carry__0_i_4__5_n_0\
    );
\i__carry__0_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][3]\,
      I1 => \mem_ram_reg_n_0_[1][4]\,
      O => \i__carry__0_i_4__6_n_0\
    );
\i__carry__0_i_4__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][3]\,
      I1 => \mem_ram_reg_n_0_[0][4]\,
      O => \i__carry__0_i_4__7_n_0\
    );
\i__carry__1_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[3][8]\,
      I1 => \mem_ram_reg_n_0_[3][9]\,
      O => \i__carry__1_i_1__4_n_0\
    );
\i__carry__1_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[2][8]\,
      I1 => \mem_ram_reg_n_0_[2][9]\,
      O => \i__carry__1_i_1__5_n_0\
    );
\i__carry__1_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][8]\,
      I1 => \mem_ram_reg_n_0_[1][9]\,
      O => \i__carry__1_i_1__6_n_0\
    );
\i__carry__1_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][8]\,
      I1 => \mem_ram_reg_n_0_[0][9]\,
      O => \i__carry__1_i_1__7_n_0\
    );
\i__carry__1_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[3][7]\,
      I1 => \mem_ram_reg_n_0_[3][8]\,
      O => \i__carry__1_i_2__4_n_0\
    );
\i__carry__1_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[2][7]\,
      I1 => \mem_ram_reg_n_0_[2][8]\,
      O => \i__carry__1_i_2__5_n_0\
    );
\i__carry__1_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][7]\,
      I1 => \mem_ram_reg_n_0_[1][8]\,
      O => \i__carry__1_i_2__6_n_0\
    );
\i__carry__1_i_2__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][7]\,
      I1 => \mem_ram_reg_n_0_[0][8]\,
      O => \i__carry__1_i_2__7_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => incrementing_reg,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => incrementing_reg,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => incrementing_reg,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => incrementing_reg,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__7_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[3][3]\,
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[2][3]\,
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[1][3]\,
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[0][3]\,
      O => \i__carry_i_2__7_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[3][2]\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[2][2]\,
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[1][2]\,
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => incrementing_reg,
      I4 => \mem_ram_reg_n_0_[0][2]\,
      O => \i__carry_i_3__7_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[3][1]\,
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[2][1]\,
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][1]\,
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][1]\,
      O => \i__carry_i_4__6_n_0\
    );
\idx_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => u_lfsr_n_1,
      Q => idx_r(0),
      R => '0'
    );
\idx_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => u_lfsr_n_0,
      Q => idx_r(1),
      R => '0'
    );
\mem_ram[0][0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_7\,
      O => \mem_ram[0][0]_i_1__0_n_0\
    );
\mem_ram[0][1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_6\,
      O => \mem_ram[0][1]_i_1__0_n_0\
    );
\mem_ram[0][2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_5\,
      O => \mem_ram[0][2]_i_1__0_n_0\
    );
\mem_ram[0][3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_4\,
      O => \mem_ram[0][3]_i_1__0_n_0\
    );
\mem_ram[0][4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_7\,
      O => \mem_ram[0][4]_i_1__0_n_0\
    );
\mem_ram[0][5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_6\,
      O => \mem_ram[0][5]_i_1__0_n_0\
    );
\mem_ram[0][6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_5\,
      O => \mem_ram[0][6]_i_1__0_n_0\
    );
\mem_ram[0][7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_4\,
      O => \mem_ram[0][7]_i_1__0_n_0\
    );
\mem_ram[0][8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__1_n_7\,
      O => \mem_ram[0][8]_i_1__0_n_0\
    );
\mem_ram[0][9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__1_n_6\,
      O => \mem_ram[0][9]_i_2__0_n_0\
    );
\mem_ram[1][0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_7\,
      O => \mem_ram[1][0]_i_1__0_n_0\
    );
\mem_ram[1][1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_6\,
      O => \mem_ram[1][1]_i_1__0_n_0\
    );
\mem_ram[1][2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_5\,
      O => \mem_ram[1][2]_i_1__0_n_0\
    );
\mem_ram[1][3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_4\,
      O => \mem_ram[1][3]_i_1__0_n_0\
    );
\mem_ram[1][4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_7\,
      O => \mem_ram[1][4]_i_1__0_n_0\
    );
\mem_ram[1][5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_6\,
      O => \mem_ram[1][5]_i_1__0_n_0\
    );
\mem_ram[1][6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_5\,
      O => \mem_ram[1][6]_i_1__0_n_0\
    );
\mem_ram[1][7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_4\,
      O => \mem_ram[1][7]_i_1__0_n_0\
    );
\mem_ram[1][8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__1_n_7\,
      O => \mem_ram[1][8]_i_1__0_n_0\
    );
\mem_ram[1][9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__1_n_6\,
      O => \mem_ram[1][9]_i_2__0_n_0\
    );
\mem_ram[2][0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_7\,
      O => \mem_ram[2][0]_i_1__0_n_0\
    );
\mem_ram[2][1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_6\,
      O => \mem_ram[2][1]_i_1__0_n_0\
    );
\mem_ram[2][2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_5\,
      O => \mem_ram[2][2]_i_1__0_n_0\
    );
\mem_ram[2][3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_4\,
      O => \mem_ram[2][3]_i_1__0_n_0\
    );
\mem_ram[2][4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_7\,
      O => \mem_ram[2][4]_i_1__0_n_0\
    );
\mem_ram[2][5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_6\,
      O => \mem_ram[2][5]_i_1__0_n_0\
    );
\mem_ram[2][6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_5\,
      O => \mem_ram[2][6]_i_1__0_n_0\
    );
\mem_ram[2][7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_4\,
      O => \mem_ram[2][7]_i_1__0_n_0\
    );
\mem_ram[2][8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__1_n_7\,
      O => \mem_ram[2][8]_i_1__0_n_0\
    );
\mem_ram[2][9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__1_n_6\,
      O => \mem_ram[2][9]_i_2__0_n_0\
    );
\mem_ram[3][0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_7\,
      O => \mem_ram[3][0]_i_1__0_n_0\
    );
\mem_ram[3][1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_6\,
      O => \mem_ram[3][1]_i_1__0_n_0\
    );
\mem_ram[3][2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_5\,
      O => \mem_ram[3][2]_i_1__0_n_0\
    );
\mem_ram[3][3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_4\,
      O => \mem_ram[3][3]_i_1__0_n_0\
    );
\mem_ram[3][4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_7\,
      O => \mem_ram[3][4]_i_1__0_n_0\
    );
\mem_ram[3][5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_6\,
      O => \mem_ram[3][5]_i_1__0_n_0\
    );
\mem_ram[3][6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_5\,
      O => \mem_ram[3][6]_i_1__0_n_0\
    );
\mem_ram[3][7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_4\,
      O => \mem_ram[3][7]_i_1__0_n_0\
    );
\mem_ram[3][8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__1_n_7\,
      O => \mem_ram[3][8]_i_1__0_n_0\
    );
\mem_ram[3][9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__1_n_6\,
      O => \mem_ram[3][9]_i_2__0_n_0\
    );
\mem_ram[3][9]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_2\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_0\,
      O => \state_reg[2]\
    );
\mem_ram_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][0]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][0]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][1]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][1]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][2]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][2]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][3]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][3]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][4]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][4]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][5]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][5]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][6]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][6]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][7]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][7]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][8]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][8]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][9]_i_2__0_n_0\,
      Q => \mem_ram_reg_n_0_[0][9]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][0]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][0]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][1]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][1]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][2]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][2]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][3]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][3]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][4]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][4]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][5]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][5]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][6]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][6]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][7]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][7]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][8]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][8]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][9]_i_2__0_n_0\,
      Q => \mem_ram_reg_n_0_[1][9]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][0]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][0]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][1]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][1]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][2]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][2]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][3]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][3]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][4]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][4]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][5]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][5]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][6]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][6]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][7]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][7]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][8]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][8]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][9]_i_2__0_n_0\,
      Q => \mem_ram_reg_n_0_[2][9]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][0]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][0]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][1]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][1]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][2]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][2]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][3]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][3]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][4]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][4]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][5]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][5]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][6]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][6]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][7]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][7]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][8]_i_1__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][8]\,
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[3][0]_0\(0),
      D => \mem_ram[3][9]_i_2__0_n_0\,
      Q => \mem_ram_reg_n_0_[3][9]\,
      R => \state_reg[4]_0\
    );
\neuron_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \state_ram_reg_n_0_[0][0]\,
      I1 => \state_ram_reg_n_0_[1][0]\,
      I2 => \state_ram_reg_n_0_[2][0]\,
      I3 => idx_r(1),
      I4 => idx_r(0),
      I5 => \state_ram_reg_n_0_[3][0]\,
      O => \neuron_state[0]_i_1__0_n_0\
    );
\neuron_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \state_ram_reg_n_0_[0][1]\,
      I1 => \state_ram_reg_n_0_[1][1]\,
      I2 => \state_ram_reg_n_0_[2][1]\,
      I3 => idx_r(1),
      I4 => idx_r(0),
      I5 => \state_ram_reg_n_0_[3][1]\,
      O => \neuron_state[1]_i_1__0_n_0\
    );
\neuron_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \neuron_state[0]_i_1__0_n_0\,
      Q => \neuron_state_reg[1]_0\(0),
      R => '0'
    );
\neuron_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \neuron_state[1]_i_1__0_n_0\,
      Q => \neuron_state_reg[1]_0\(1),
      R => '0'
    );
\selected_idx_offset_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => idx_r(0),
      Q => \selected_idx_offset_reg[1]_0\(0),
      R => '0'
    );
\selected_idx_offset_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => idx_r(1),
      Q => \selected_idx_offset_reg[1]_0\(1),
      R => '0'
    );
\selected_membrane[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][0]\,
      I1 => \mem_ram_reg_n_0_[1][0]\,
      I2 => \mem_ram_reg_n_0_[2][0]\,
      I3 => idx_r(1),
      I4 => idx_r(0),
      I5 => \mem_ram_reg_n_0_[3][0]\,
      O => \selected_membrane[0]_i_1__0_n_0\
    );
\selected_membrane[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][1]\,
      I1 => \mem_ram_reg_n_0_[1][1]\,
      I2 => \mem_ram_reg_n_0_[2][1]\,
      I3 => idx_r(1),
      I4 => idx_r(0),
      I5 => \mem_ram_reg_n_0_[3][1]\,
      O => \selected_membrane[1]_i_1__0_n_0\
    );
\selected_membrane[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][2]\,
      I1 => \mem_ram_reg_n_0_[1][2]\,
      I2 => \mem_ram_reg_n_0_[3][2]\,
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg_n_0_[2][2]\,
      O => \selected_membrane[2]_i_1__0_n_0\
    );
\selected_membrane[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][3]\,
      I1 => \mem_ram_reg_n_0_[2][3]\,
      I2 => \mem_ram_reg_n_0_[0][3]\,
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg_n_0_[3][3]\,
      O => \selected_membrane[3]_i_1__0_n_0\
    );
\selected_membrane[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][4]\,
      I1 => \mem_ram_reg_n_0_[3][4]\,
      I2 => \mem_ram_reg_n_0_[0][4]\,
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg_n_0_[2][4]\,
      O => \selected_membrane[4]_i_1__0_n_0\
    );
\selected_membrane[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][5]\,
      I1 => \mem_ram_reg_n_0_[1][5]\,
      I2 => \mem_ram_reg_n_0_[2][5]\,
      I3 => idx_r(1),
      I4 => idx_r(0),
      I5 => \mem_ram_reg_n_0_[3][5]\,
      O => \selected_membrane[5]_i_1__0_n_0\
    );
\selected_membrane[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][6]\,
      I1 => \mem_ram_reg_n_0_[1][6]\,
      I2 => \mem_ram_reg_n_0_[3][6]\,
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg_n_0_[2][6]\,
      O => \selected_membrane[6]_i_1__0_n_0\
    );
\selected_membrane[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][7]\,
      I1 => \mem_ram_reg_n_0_[2][7]\,
      I2 => \mem_ram_reg_n_0_[0][7]\,
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg_n_0_[3][7]\,
      O => \selected_membrane[7]_i_1__0_n_0\
    );
\selected_membrane[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[1][8]\,
      I1 => \mem_ram_reg_n_0_[2][8]\,
      I2 => \mem_ram_reg_n_0_[0][8]\,
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg_n_0_[3][8]\,
      O => \selected_membrane[8]_i_1__0_n_0\
    );
\selected_membrane[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \mem_ram_reg_n_0_[0][9]\,
      I1 => \mem_ram_reg_n_0_[1][9]\,
      I2 => \mem_ram_reg_n_0_[2][9]\,
      I3 => idx_r(1),
      I4 => idx_r(0),
      I5 => \mem_ram_reg_n_0_[3][9]\,
      O => \selected_membrane[9]_i_1__0_n_0\
    );
\selected_membrane_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[0]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(0),
      R => '0'
    );
\selected_membrane_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[1]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(1),
      R => '0'
    );
\selected_membrane_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[2]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(2),
      R => '0'
    );
\selected_membrane_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[3]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(3),
      R => '0'
    );
\selected_membrane_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[4]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(4),
      R => '0'
    );
\selected_membrane_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[5]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(5),
      R => '0'
    );
\selected_membrane_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[6]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(6),
      R => '0'
    );
\selected_membrane_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[7]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(7),
      R => '0'
    );
\selected_membrane_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[8]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(8),
      R => '0'
    );
\selected_membrane_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[9]_i_1__0_n_0\,
      Q => \selected_membrane_reg[9]_0\(9),
      R => '0'
    );
\state_ram[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2_n_0\,
      I3 => \state_ram_reg[0][0]_0\,
      I4 => \state_ram_reg_n_0_[0][0]\,
      O => \state_ram[0][0]_i_1_n_0\
    );
\state_ram[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2_n_0\,
      I3 => \state_ram_reg[0][0]_0\,
      I4 => \state_ram_reg_n_0_[0][1]\,
      O => \state_ram[0][1]_i_1_n_0\
    );
\state_ram[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2_n_0\,
      I3 => \state_ram_reg[1][0]_0\,
      I4 => \state_ram_reg_n_0_[1][0]\,
      O => \state_ram[1][0]_i_1_n_0\
    );
\state_ram[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2_n_0\,
      I3 => \state_ram_reg[1][0]_0\,
      I4 => \state_ram_reg_n_0_[1][1]\,
      O => \state_ram[1][1]_i_1_n_0\
    );
\state_ram[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2_n_0\,
      I3 => \state_ram_reg[2][0]_0\,
      I4 => \state_ram_reg_n_0_[2][0]\,
      O => \state_ram[2][0]_i_1_n_0\
    );
\state_ram[2][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330F55FF330F55"
    )
        port map (
      I0 => \state_ram_reg_n_0_[0][0]\,
      I1 => \state_ram_reg_n_0_[1][0]\,
      I2 => \state_ram_reg_n_0_[2][0]\,
      I3 => \state_ram[3][1]_i_2__0\(1),
      I4 => \state_ram[3][1]_i_2__0\(0),
      I5 => \state_ram_reg_n_0_[3][0]\,
      O => \state_ram[2][0]_i_2_n_0\
    );
\state_ram[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2_n_0\,
      I3 => \state_ram_reg[2][0]_0\,
      I4 => \state_ram_reg_n_0_[2][1]\,
      O => \state_ram[2][1]_i_1_n_0\
    );
\state_ram[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330F55FF330F55"
    )
        port map (
      I0 => \state_ram_reg_n_0_[0][1]\,
      I1 => \state_ram_reg_n_0_[1][1]\,
      I2 => \state_ram_reg_n_0_[2][1]\,
      I3 => \state_ram[3][1]_i_2__0\(1),
      I4 => \state_ram[3][1]_i_2__0\(0),
      I5 => \state_ram_reg_n_0_[3][1]\,
      O => \state_ram[2][1]_i_2_n_0\
    );
\state_ram[2][1]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \state_ram[3][1]_i_2__0\(2),
      I1 => \mem_ram_reg[0][0]_0\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_2\,
      O => \index_of_neuron_that_fired_reg_reg[2]\
    );
\state_ram[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2_n_0\,
      I3 => \state_ram_reg[3][0]_0\,
      I4 => \state_ram_reg_n_0_[3][0]\,
      O => \state_ram[3][0]_i_1_n_0\
    );
\state_ram[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2_n_0\,
      I3 => \state_ram_reg[3][0]_0\,
      I4 => \state_ram_reg_n_0_[3][1]\,
      O => \state_ram[3][1]_i_1_n_0\
    );
\state_ram_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[0][0]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[0][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[0][1]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[0][1]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[1][0]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[1][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[1][1]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[1][1]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[2][0]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[2][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[2][1]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[2][1]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[3][0]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[3][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[3][1]_i_1_n_0\,
      Q => \state_ram_reg_n_0_[3][1]\,
      R => \state_reg[4]_0\
    );
u_lfsr: entity work.whole_system_fowler_nordheim_anne_0_0_LFSR_inout
     port map (
      Q(1) => u_lfsr_n_0,
      Q(0) => u_lfsr_n_1,
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[4]\(0) => Q(0),
      \state_reg[4]_0\(4 downto 0) => \state_reg[4]\(4 downto 0),
      \state_reg[4]_1\ => \state_reg[4]_0\,
      storage_CE_advance => storage_CE_advance
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage_2 is
  port (
    \state_reg[2]\ : out STD_LOGIC;
    \slv_reg5_reg[1]\ : out STD_LOGIC;
    \slv_reg5_reg[1]_0\ : out STD_LOGIC;
    \slv_reg5_reg[0]\ : out STD_LOGIC;
    \slv_reg5_reg[1]_1\ : out STD_LOGIC;
    \neuron_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \selected_membrane_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \selected_idx_offset_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \mem_ram_reg[0][0]_0\ : in STD_LOGIC;
    \mem_ram_reg[0][0]_1\ : in STD_LOGIC;
    \mem_ram_reg[0][0]_2\ : in STD_LOGIC;
    \_inferred__2/i__carry_0\ : in STD_LOGIC;
    \state_ram_reg[2][1]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_ram_reg[3][0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_ram[0][1]_i_2_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_ram_reg[0][0]_0\ : in STD_LOGIC;
    \state_reg[4]_0\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[2][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[1][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage_2 : entity is "neuron_ensemble_storage";
end whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage_2;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage_2 is
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__2/i__carry_n_7\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__3/i__carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_6\ : STD_LOGIC;
  signal \_inferred__3/i__carry__1_n_7\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_4\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_5\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_6\ : STD_LOGIC;
  signal \_inferred__3/i__carry_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal idx_offset : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal idx_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mem_ram[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[0][9]_i_2_n_0\ : STD_LOGIC;
  signal \mem_ram[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[1][9]_i_2_n_0\ : STD_LOGIC;
  signal \mem_ram[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[2][9]_i_2_n_0\ : STD_LOGIC;
  signal \mem_ram[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_ram[3][9]_i_2_n_0\ : STD_LOGIC;
  signal \mem_ram_reg[0]_3\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \mem_ram_reg[1]_2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \mem_ram_reg[2]_1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \mem_ram_reg[3]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \neuron_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \neuron_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[0]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[1]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[2]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[3]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[4]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[5]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[6]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[7]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[8]_i_1_n_0\ : STD_LOGIC;
  signal \selected_membrane[9]_i_1_n_0\ : STD_LOGIC;
  signal \state_ram[0][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[0][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \state_ram[1][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[1][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \state_ram[2][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[2][0]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_ram[2][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[2][1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state_ram[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \state_ram[2][1]_i_4_n_0\ : STD_LOGIC;
  signal \state_ram[3][0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[3][1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_ram[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \state_ram_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__2/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__2/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW__inferred__3/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__3/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__2/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__3/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__3/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_inferred__3/i__carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mem_ram[0][0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mem_ram[0][1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mem_ram[0][2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mem_ram[0][3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mem_ram[0][4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mem_ram[0][5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mem_ram[0][6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mem_ram[0][7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mem_ram[0][8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_ram[0][9]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_ram[1][0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mem_ram[1][1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mem_ram[1][2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mem_ram[1][3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mem_ram[1][4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mem_ram[1][5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mem_ram[1][6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mem_ram[1][7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mem_ram[1][8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mem_ram[1][9]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mem_ram[2][0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mem_ram[2][1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mem_ram[2][2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mem_ram[2][3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mem_ram[2][4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mem_ram[2][5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mem_ram[2][6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mem_ram[2][7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mem_ram[2][8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mem_ram[2][9]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mem_ram[3][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mem_ram[3][1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mem_ram[3][2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mem_ram[3][3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mem_ram[3][4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mem_ram[3][5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mem_ram[3][6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mem_ram[3][7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mem_ram[3][8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mem_ram[3][9]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mem_ram[3][9]_i_3\ : label is "soft_lutpair10";
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \mem_ram_reg[0][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[0][9]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[1][9]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[2][9]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][0]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][1]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][2]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][3]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][4]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][5]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][6]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][7]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][8]\ : label is "block";
  attribute RAM_STYLE of \mem_ram_reg[3][9]\ : label is "block";
  attribute SOFT_HLUTNM of \state_ram[2][1]_i_4\ : label is "soft_lutpair10";
  attribute RAM_STYLE of \state_ram_reg[0][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[0][1]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[1][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[1][1]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[2][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[2][1]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[3][0]\ : label is "block";
  attribute RAM_STYLE of \state_ram_reg[3][1]\ : label is "block";
begin
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2 downto 1) => \mem_ram_reg[3]_0\(2 downto 1),
      DI(0) => '0',
      O(3) => \_inferred__0/i__carry_n_4\,
      O(2) => \_inferred__0/i__carry_n_5\,
      O(1) => \_inferred__0/i__carry_n_6\,
      O(0) => \_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_2__0_n_0\,
      S(2) => \i__carry_i_3__0_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \mem_ram_reg[3]_0\(0)
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem_ram_reg[3]_0\(6 downto 3),
      O(3) => \_inferred__0/i__carry__0_n_4\,
      O(2) => \_inferred__0/i__carry__0_n_5\,
      O(1) => \_inferred__0/i__carry__0_n_6\,
      O(0) => \_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg[3]_0\(7),
      O(3 downto 2) => \NLW__inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__0/i__carry__1_n_6\,
      O(0) => \_inferred__0/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__0_n_0\,
      S(0) => \i__carry__1_i_2__0_n_0\
    );
\_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i__carry_n_0\,
      CO(2) => \_inferred__1/i__carry_n_1\,
      CO(1) => \_inferred__1/i__carry_n_2\,
      CO(0) => \_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2 downto 1) => \mem_ram_reg[2]_1\(2 downto 1),
      DI(0) => '0',
      O(3) => \_inferred__1/i__carry_n_4\,
      O(2) => \_inferred__1/i__carry_n_5\,
      O(1) => \_inferred__1/i__carry_n_6\,
      O(0) => \_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_2__1_n_0\,
      S(2) => \i__carry_i_3__1_n_0\,
      S(1) => \i__carry_i_4__0_n_0\,
      S(0) => \mem_ram_reg[2]_1\(0)
    );
\_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry_n_0\,
      CO(3) => \_inferred__1/i__carry__0_n_0\,
      CO(2) => \_inferred__1/i__carry__0_n_1\,
      CO(1) => \_inferred__1/i__carry__0_n_2\,
      CO(0) => \_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem_ram_reg[2]_1\(6 downto 3),
      O(3) => \_inferred__1/i__carry__0_n_4\,
      O(2) => \_inferred__1/i__carry__0_n_5\,
      O(1) => \_inferred__1/i__carry__0_n_6\,
      O(0) => \_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__1/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg[2]_1\(7),
      O(3 downto 2) => \NLW__inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__1/i__carry__1_n_6\,
      O(0) => \_inferred__1/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__1_n_0\,
      S(0) => \i__carry__1_i_2__1_n_0\
    );
\_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__2/i__carry_n_0\,
      CO(2) => \_inferred__2/i__carry_n_1\,
      CO(1) => \_inferred__2/i__carry_n_2\,
      CO(0) => \_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__4_n_0\,
      DI(2 downto 1) => \mem_ram_reg[1]_2\(2 downto 1),
      DI(0) => '0',
      O(3) => \_inferred__2/i__carry_n_4\,
      O(2) => \_inferred__2/i__carry_n_5\,
      O(1) => \_inferred__2/i__carry_n_6\,
      O(0) => \_inferred__2/i__carry_n_7\,
      S(3) => \i__carry_i_2__2_n_0\,
      S(2) => \i__carry_i_3__2_n_0\,
      S(1) => \i__carry_i_4__1_n_0\,
      S(0) => \mem_ram_reg[1]_2\(0)
    );
\_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry_n_0\,
      CO(3) => \_inferred__2/i__carry__0_n_0\,
      CO(2) => \_inferred__2/i__carry__0_n_1\,
      CO(1) => \_inferred__2/i__carry__0_n_2\,
      CO(0) => \_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem_ram_reg[1]_2\(6 downto 3),
      O(3) => \_inferred__2/i__carry__0_n_4\,
      O(2) => \_inferred__2/i__carry__0_n_5\,
      O(1) => \_inferred__2/i__carry__0_n_6\,
      O(0) => \_inferred__2/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__2/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__2/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg[1]_2\(7),
      O(3 downto 2) => \NLW__inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__2/i__carry__1_n_6\,
      O(0) => \_inferred__2/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__2_n_0\,
      S(0) => \i__carry__1_i_2__2_n_0\
    );
\_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__3/i__carry_n_0\,
      CO(2) => \_inferred__3/i__carry_n_1\,
      CO(1) => \_inferred__3/i__carry_n_2\,
      CO(0) => \_inferred__3/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2 downto 1) => \mem_ram_reg[0]_3\(2 downto 1),
      DI(0) => '0',
      O(3) => \_inferred__3/i__carry_n_4\,
      O(2) => \_inferred__3/i__carry_n_5\,
      O(1) => \_inferred__3/i__carry_n_6\,
      O(0) => \_inferred__3/i__carry_n_7\,
      S(3) => \i__carry_i_2__3_n_0\,
      S(2) => \i__carry_i_3__3_n_0\,
      S(1) => \i__carry_i_4__2_n_0\,
      S(0) => \mem_ram_reg[0]_3\(0)
    );
\_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i__carry_n_0\,
      CO(3) => \_inferred__3/i__carry__0_n_0\,
      CO(2) => \_inferred__3/i__carry__0_n_1\,
      CO(1) => \_inferred__3/i__carry__0_n_2\,
      CO(0) => \_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \mem_ram_reg[0]_3\(6 downto 3),
      O(3) => \_inferred__3/i__carry__0_n_4\,
      O(2) => \_inferred__3/i__carry__0_n_5\,
      O(1) => \_inferred__3/i__carry__0_n_6\,
      O(0) => \_inferred__3/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__3_n_0\,
      S(2) => \i__carry__0_i_2__3_n_0\,
      S(1) => \i__carry__0_i_3__3_n_0\,
      S(0) => \i__carry__0_i_4__3_n_0\
    );
\_inferred__3/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__3/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__3/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__3/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_ram_reg[0]_3\(7),
      O(3 downto 2) => \NLW__inferred__3/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \_inferred__3/i__carry__1_n_6\,
      O(0) => \_inferred__3/i__carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1__3_n_0\,
      S(0) => \i__carry__1_i_2__3_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[3]_0\(6),
      I1 => \mem_ram_reg[3]_0\(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[2]_1\(6),
      I1 => \mem_ram_reg[2]_1\(7),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(6),
      I1 => \mem_ram_reg[1]_2\(7),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(6),
      I1 => \mem_ram_reg[0]_3\(7),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[3]_0\(5),
      I1 => \mem_ram_reg[3]_0\(6),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[2]_1\(5),
      I1 => \mem_ram_reg[2]_1\(6),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(5),
      I1 => \mem_ram_reg[1]_2\(6),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(5),
      I1 => \mem_ram_reg[0]_3\(6),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[3]_0\(4),
      I1 => \mem_ram_reg[3]_0\(5),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[2]_1\(4),
      I1 => \mem_ram_reg[2]_1\(5),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(4),
      I1 => \mem_ram_reg[1]_2\(5),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(4),
      I1 => \mem_ram_reg[0]_3\(5),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[3]_0\(3),
      I1 => \mem_ram_reg[3]_0\(4),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[2]_1\(3),
      I1 => \mem_ram_reg[2]_1\(4),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(3),
      I1 => \mem_ram_reg[1]_2\(4),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(3),
      I1 => \mem_ram_reg[0]_3\(4),
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[3]_0\(8),
      I1 => \mem_ram_reg[3]_0\(9),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[2]_1\(8),
      I1 => \mem_ram_reg[2]_1\(9),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(8),
      I1 => \mem_ram_reg[1]_2\(9),
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(8),
      I1 => \mem_ram_reg[0]_3\(9),
      O => \i__carry__1_i_1__3_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[3]_0\(7),
      I1 => \mem_ram_reg[3]_0\(8),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[2]_1\(7),
      I1 => \mem_ram_reg[2]_1\(8),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(7),
      I1 => \mem_ram_reg[1]_2\(8),
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(7),
      I1 => \mem_ram_reg[0]_3\(8),
      O => \i__carry__1_i_2__3_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => \_inferred__2/i__carry_0\,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => \_inferred__2/i__carry_0\,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => \_inferred__2/i__carry_0\,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B3C"
    )
        port map (
      I0 => \_inferred__2/i__carry_0\,
      I1 => \mem_ram_reg[0][0]_2\,
      I2 => \mem_ram_reg[0][0]_1\,
      I3 => \mem_ram_reg[0][0]_0\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[3]_0\(3),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[2]_1\(3),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[1]_2\(3),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[0]_3\(3),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[3]_0\(2),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[2]_1\(2),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[1]_2\(2),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E1EC1E1"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \_inferred__2/i__carry_0\,
      I4 => \mem_ram_reg[0]_3\(2),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg[3]_0\(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg[2]_1\(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(1),
      O => \i__carry_i_4__2_n_0\
    );
\idx_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => idx_offset(0),
      Q => idx_r(0),
      R => '0'
    );
\idx_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => idx_offset(1),
      Q => idx_r(1),
      R => '0'
    );
\mem_ram[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_7\,
      O => \mem_ram[0][0]_i_1_n_0\
    );
\mem_ram[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_6\,
      O => \mem_ram[0][1]_i_1_n_0\
    );
\mem_ram[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_5\,
      O => \mem_ram[0][2]_i_1_n_0\
    );
\mem_ram[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry_n_4\,
      O => \mem_ram[0][3]_i_1_n_0\
    );
\mem_ram[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_7\,
      O => \mem_ram[0][4]_i_1_n_0\
    );
\mem_ram[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_6\,
      O => \mem_ram[0][5]_i_1_n_0\
    );
\mem_ram[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_5\,
      O => \mem_ram[0][6]_i_1_n_0\
    );
\mem_ram[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__0_n_4\,
      O => \mem_ram[0][7]_i_1_n_0\
    );
\mem_ram[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__1_n_7\,
      O => \mem_ram[0][8]_i_1_n_0\
    );
\mem_ram[0][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__3/i__carry__1_n_6\,
      O => \mem_ram[0][9]_i_2_n_0\
    );
\mem_ram[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_7\,
      O => \mem_ram[1][0]_i_1_n_0\
    );
\mem_ram[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_6\,
      O => \mem_ram[1][1]_i_1_n_0\
    );
\mem_ram[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_5\,
      O => \mem_ram[1][2]_i_1_n_0\
    );
\mem_ram[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry_n_4\,
      O => \mem_ram[1][3]_i_1_n_0\
    );
\mem_ram[1][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_7\,
      O => \mem_ram[1][4]_i_1_n_0\
    );
\mem_ram[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_6\,
      O => \mem_ram[1][5]_i_1_n_0\
    );
\mem_ram[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_5\,
      O => \mem_ram[1][6]_i_1_n_0\
    );
\mem_ram[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__0_n_4\,
      O => \mem_ram[1][7]_i_1_n_0\
    );
\mem_ram[1][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__1_n_7\,
      O => \mem_ram[1][8]_i_1_n_0\
    );
\mem_ram[1][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__2/i__carry__1_n_6\,
      O => \mem_ram[1][9]_i_2_n_0\
    );
\mem_ram[2][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_7\,
      O => \mem_ram[2][0]_i_1_n_0\
    );
\mem_ram[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_6\,
      O => \mem_ram[2][1]_i_1_n_0\
    );
\mem_ram[2][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_5\,
      O => \mem_ram[2][2]_i_1_n_0\
    );
\mem_ram[2][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry_n_4\,
      O => \mem_ram[2][3]_i_1_n_0\
    );
\mem_ram[2][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_7\,
      O => \mem_ram[2][4]_i_1_n_0\
    );
\mem_ram[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_6\,
      O => \mem_ram[2][5]_i_1_n_0\
    );
\mem_ram[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_5\,
      O => \mem_ram[2][6]_i_1_n_0\
    );
\mem_ram[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__0_n_4\,
      O => \mem_ram[2][7]_i_1_n_0\
    );
\mem_ram[2][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__1_n_7\,
      O => \mem_ram[2][8]_i_1_n_0\
    );
\mem_ram[2][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__1/i__carry__1_n_6\,
      O => \mem_ram[2][9]_i_2_n_0\
    );
\mem_ram[3][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(0),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_7\,
      O => \mem_ram[3][0]_i_1_n_0\
    );
\mem_ram[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(1),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_6\,
      O => \mem_ram[3][1]_i_1_n_0\
    );
\mem_ram[3][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(2),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_5\,
      O => \mem_ram[3][2]_i_1_n_0\
    );
\mem_ram[3][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(3),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry_n_4\,
      O => \mem_ram[3][3]_i_1_n_0\
    );
\mem_ram[3][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(4),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_7\,
      O => \mem_ram[3][4]_i_1_n_0\
    );
\mem_ram[3][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(5),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_6\,
      O => \mem_ram[3][5]_i_1_n_0\
    );
\mem_ram[3][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(6),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_5\,
      O => \mem_ram[3][6]_i_1_n_0\
    );
\mem_ram[3][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(7),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__0_n_4\,
      O => \mem_ram[3][7]_i_1_n_0\
    );
\mem_ram[3][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(8),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__1_n_7\,
      O => \mem_ram[3][8]_i_1_n_0\
    );
\mem_ram[3][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(9),
      I1 => Q(0),
      I2 => \_inferred__0/i__carry__1_n_6\,
      O => \mem_ram[3][9]_i_2_n_0\
    );
\mem_ram[3][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_2\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_0\,
      O => \state_reg[2]\
    );
\mem_ram_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][0]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(0),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][1]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(1),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][2]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(2),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][3]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(3),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][4]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(4),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][5]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(5),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][6]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(6),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][7]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(7),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][8]_i_1_n_0\,
      Q => \mem_ram_reg[0]_3\(8),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[0][0]_3\(0),
      D => \mem_ram[0][9]_i_2_n_0\,
      Q => \mem_ram_reg[0]_3\(9),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][0]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(0),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][1]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(1),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][2]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(2),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][3]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(3),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][4]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(4),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][5]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(5),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][6]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(6),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][7]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(7),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][8]_i_1_n_0\,
      Q => \mem_ram_reg[1]_2\(8),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[1][0]_0\(0),
      D => \mem_ram[1][9]_i_2_n_0\,
      Q => \mem_ram_reg[1]_2\(9),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][0]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(0),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][1]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(1),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][2]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(2),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][3]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(3),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][4]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(4),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][5]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(5),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][6]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(6),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][7]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(7),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][8]_i_1_n_0\,
      Q => \mem_ram_reg[2]_1\(8),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \mem_ram_reg[2][0]_0\(0),
      D => \mem_ram[2][9]_i_2_n_0\,
      Q => \mem_ram_reg[2]_1\(9),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][0]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(0),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][1]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(1),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][2]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(2),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][3]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(3),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][4]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(4),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][5]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(5),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][6]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(6),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][7]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(7),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][8]_i_1_n_0\,
      Q => \mem_ram_reg[3]_0\(8),
      R => \state_reg[4]_0\
    );
\mem_ram_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \mem_ram[3][9]_i_2_n_0\,
      Q => \mem_ram_reg[3]_0\(9),
      R => \state_reg[4]_0\
    );
\neuron_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \state_ram_reg_n_0_[0][0]\,
      I1 => \state_ram_reg_n_0_[1][0]\,
      I2 => \state_ram_reg_n_0_[3][0]\,
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \state_ram_reg_n_0_[2][0]\,
      O => \neuron_state[0]_i_1_n_0\
    );
\neuron_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \state_ram_reg_n_0_[0][1]\,
      I1 => \state_ram_reg_n_0_[1][1]\,
      I2 => \state_ram_reg_n_0_[2][1]\,
      I3 => idx_r(1),
      I4 => idx_r(0),
      I5 => \state_ram_reg_n_0_[3][1]\,
      O => \neuron_state[1]_i_1_n_0\
    );
\neuron_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \neuron_state[0]_i_1_n_0\,
      Q => \neuron_state_reg[1]_0\(0),
      R => '0'
    );
\neuron_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \neuron_state[1]_i_1_n_0\,
      Q => \neuron_state_reg[1]_0\(1),
      R => '0'
    );
\selected_idx_offset_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => idx_r(0),
      Q => \selected_idx_offset_reg[1]_0\(0),
      R => '0'
    );
\selected_idx_offset_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => idx_r(1),
      Q => \selected_idx_offset_reg[1]_0\(1),
      R => '0'
    );
\selected_membrane[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(0),
      I1 => \mem_ram_reg[1]_2\(0),
      I2 => \mem_ram_reg[3]_0\(0),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[2]_1\(0),
      O => \selected_membrane[0]_i_1_n_0\
    );
\selected_membrane[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(1),
      I1 => \mem_ram_reg[1]_2\(1),
      I2 => \mem_ram_reg[3]_0\(1),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[2]_1\(1),
      O => \selected_membrane[1]_i_1_n_0\
    );
\selected_membrane[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(2),
      I1 => \mem_ram_reg[1]_2\(2),
      I2 => \mem_ram_reg[3]_0\(2),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[2]_1\(2),
      O => \selected_membrane[2]_i_1_n_0\
    );
\selected_membrane[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(3),
      I1 => \mem_ram_reg[1]_2\(3),
      I2 => \mem_ram_reg[3]_0\(3),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[2]_1\(3),
      O => \selected_membrane[3]_i_1_n_0\
    );
\selected_membrane[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(4),
      I1 => \mem_ram_reg[2]_1\(4),
      I2 => \mem_ram_reg[0]_3\(4),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[3]_0\(4),
      O => \selected_membrane[4]_i_1_n_0\
    );
\selected_membrane[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(5),
      I1 => \mem_ram_reg[3]_0\(5),
      I2 => \mem_ram_reg[0]_3\(5),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[2]_1\(5),
      O => \selected_membrane[5]_i_1_n_0\
    );
\selected_membrane[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(6),
      I1 => \mem_ram_reg[1]_2\(6),
      I2 => \mem_ram_reg[3]_0\(6),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[2]_1\(6),
      O => \selected_membrane[6]_i_1_n_0\
    );
\selected_membrane[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(7),
      I1 => \mem_ram_reg[2]_1\(7),
      I2 => \mem_ram_reg[0]_3\(7),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[3]_0\(7),
      O => \selected_membrane[7]_i_1_n_0\
    );
\selected_membrane[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \mem_ram_reg[1]_2\(8),
      I1 => \mem_ram_reg[2]_1\(8),
      I2 => \mem_ram_reg[0]_3\(8),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[3]_0\(8),
      O => \selected_membrane[8]_i_1_n_0\
    );
\selected_membrane[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \mem_ram_reg[0]_3\(9),
      I1 => \mem_ram_reg[1]_2\(9),
      I2 => \mem_ram_reg[3]_0\(9),
      I3 => idx_r(0),
      I4 => idx_r(1),
      I5 => \mem_ram_reg[2]_1\(9),
      O => \selected_membrane[9]_i_1_n_0\
    );
\selected_membrane_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[0]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(0),
      R => '0'
    );
\selected_membrane_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[1]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(1),
      R => '0'
    );
\selected_membrane_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[2]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(2),
      R => '0'
    );
\selected_membrane_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[3]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(3),
      R => '0'
    );
\selected_membrane_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[4]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(4),
      R => '0'
    );
\selected_membrane_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[5]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(5),
      R => '0'
    );
\selected_membrane_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[6]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(6),
      R => '0'
    );
\selected_membrane_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[7]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(7),
      R => '0'
    );
\selected_membrane_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[8]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(8),
      R => '0'
    );
\selected_membrane_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \selected_membrane[9]_i_1_n_0\,
      Q => \selected_membrane_reg[9]_0\(9),
      R => '0'
    );
\state_ram[0][0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2__0_n_0\,
      I3 => \state_ram[0][1]_i_2_n_0\,
      I4 => \state_ram_reg_n_0_[0][0]\,
      O => \state_ram[0][0]_i_1__0_n_0\
    );
\state_ram[0][1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2__0_n_0\,
      I3 => \state_ram[0][1]_i_2_n_0\,
      I4 => \state_ram_reg_n_0_[0][1]\,
      O => \state_ram[0][1]_i_1__0_n_0\
    );
\state_ram[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101F10101010"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(1),
      I1 => \state_ram_reg[3][0]_0\(0),
      I2 => Q(0),
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram[2][1]_i_4_n_0\,
      O => \state_ram[0][1]_i_2_n_0\
    );
\state_ram[0][1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101F10101010"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(1),
      I1 => \state_ram_reg[3][0]_0\(0),
      I2 => Q(1),
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[1]\
    );
\state_ram[1][0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2__0_n_0\,
      I3 => \state_ram[1][1]_i_2_n_0\,
      I4 => \state_ram_reg_n_0_[1][0]\,
      O => \state_ram[1][0]_i_1__0_n_0\
    );
\state_ram[1][1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2__0_n_0\,
      I3 => \state_ram[1][1]_i_2_n_0\,
      I4 => \state_ram_reg_n_0_[1][1]\,
      O => \state_ram[1][1]_i_1__0_n_0\
    );
\state_ram[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404F4040404040"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(1),
      I1 => \state_ram_reg[3][0]_0\(0),
      I2 => Q(0),
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram[2][1]_i_4_n_0\,
      O => \state_ram[1][1]_i_2_n_0\
    );
\state_ram[1][1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404F4040404040"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(1),
      I1 => \state_ram_reg[3][0]_0\(0),
      I2 => Q(1),
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[1]_0\
    );
\state_ram[2][0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2__0_n_0\,
      I3 => \state_ram[2][1]_i_3_n_0\,
      I4 => \state_ram_reg_n_0_[2][0]\,
      O => \state_ram[2][0]_i_1__0_n_0\
    );
\state_ram[2][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3355000F3355FF0F"
    )
        port map (
      I0 => \state_ram_reg_n_0_[2][0]\,
      I1 => \state_ram_reg_n_0_[3][0]\,
      I2 => \state_ram_reg_n_0_[0][0]\,
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram_reg_n_0_[1][0]\,
      O => \state_ram[2][0]_i_2__0_n_0\
    );
\state_ram[2][1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2__0_n_0\,
      I3 => \state_ram[2][1]_i_3_n_0\,
      I4 => \state_ram_reg_n_0_[2][1]\,
      O => \state_ram[2][1]_i_1__0_n_0\
    );
\state_ram[2][1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3355000F3355FF0F"
    )
        port map (
      I0 => \state_ram_reg_n_0_[2][1]\,
      I1 => \state_ram_reg_n_0_[3][1]\,
      I2 => \state_ram_reg_n_0_[0][1]\,
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram_reg_n_0_[1][1]\,
      O => \state_ram[2][1]_i_2__0_n_0\
    );
\state_ram[2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404F4040404040"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(0),
      I1 => \state_ram_reg[3][0]_0\(1),
      I2 => Q(0),
      I3 => \state_ram[0][1]_i_2_0\(1),
      I4 => \state_ram[0][1]_i_2_0\(0),
      I5 => \state_ram[2][1]_i_4_n_0\,
      O => \state_ram[2][1]_i_3_n_0\
    );
\state_ram[2][1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404F4040404040"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(0),
      I1 => \state_ram_reg[3][0]_0\(1),
      I2 => Q(1),
      I3 => \state_ram[0][1]_i_2_0\(1),
      I4 => \state_ram[0][1]_i_2_0\(0),
      I5 => \state_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[0]\
    );
\state_ram[2][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \mem_ram_reg[0][0]_0\,
      I1 => \mem_ram_reg[0][0]_1\,
      I2 => \mem_ram_reg[0][0]_2\,
      I3 => \state_ram[0][1]_i_2_0\(2),
      O => \state_ram[2][1]_i_4_n_0\
    );
\state_ram[3][0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(10),
      I1 => Q(0),
      I2 => \state_ram[2][0]_i_2__0_n_0\,
      I3 => \state_ram[3][1]_i_2_n_0\,
      I4 => \state_ram_reg_n_0_[3][0]\,
      O => \state_ram[3][0]_i_1__0_n_0\
    );
\state_ram[3][1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \state_ram_reg[2][1]_0\(11),
      I1 => Q(0),
      I2 => \state_ram[2][1]_i_2__0_n_0\,
      I3 => \state_ram[3][1]_i_2_n_0\,
      I4 => \state_ram_reg_n_0_[3][1]\,
      O => \state_ram[3][1]_i_1__0_n_0\
    );
\state_ram[3][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808080808080"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(1),
      I1 => \state_ram_reg[3][0]_0\(0),
      I2 => Q(0),
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram[2][1]_i_4_n_0\,
      O => \state_ram[3][1]_i_2_n_0\
    );
\state_ram[3][1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808080808080"
    )
        port map (
      I0 => \state_ram_reg[3][0]_0\(1),
      I1 => \state_ram_reg[3][0]_0\(0),
      I2 => Q(1),
      I3 => \state_ram[0][1]_i_2_0\(0),
      I4 => \state_ram[0][1]_i_2_0\(1),
      I5 => \state_ram_reg[0][0]_0\,
      O => \slv_reg5_reg[1]_1\
    );
\state_ram_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[0][0]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[0][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[0][1]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[0][1]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[1][0]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[1][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[1][1]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[1][1]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[2][0]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[2][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[2][1]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[2][1]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[3][0]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[3][0]\,
      R => \state_reg[4]_0\
    );
\state_ram_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state_ram[3][1]_i_1__0_n_0\,
      Q => \state_ram_reg_n_0_[3][1]\,
      R => \state_reg[4]_0\
    );
u_lfsr: entity work.whole_system_fowler_nordheim_anne_0_0_LFSR_inout_3
     port map (
      Q(1 downto 0) => idx_offset(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[4]\(0) => Q(0),
      \state_reg[4]_0\(4 downto 0) => \state_reg[4]\(4 downto 0),
      \state_reg[4]_1\ => \state_reg[4]_0\,
      storage_CE_advance => storage_CE_advance
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_flipping_unit is
  port (
    flipping_CE_0 : out STD_LOGIC;
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[1]\ : out STD_LOGIC;
    stage1_r_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_p_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_reg[15]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \spike0_carry__0\ : in STD_LOGIC;
    x_reg_rep : in STD_LOGIC;
    x_reg_rep_0 : in STD_LOGIC;
    x_reg_rep_1 : in STD_LOGIC;
    \spike0_carry__0_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \spike0_carry__0_1\ : in STD_LOGIC;
    \spike0_carry__0_2\ : in STD_LOGIC;
    spike0_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    spike0_carry_0 : in STD_LOGIC;
    spike0_carry_1 : in STD_LOGIC;
    spike0_carry_2 : in STD_LOGIC;
    \spike0_carry__0_3\ : in STD_LOGIC;
    \x_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_flipping_unit : entity is "flipping_unit";
end whole_system_fowler_nordheim_anne_0_0_flipping_unit;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_flipping_unit is
  signal \^flipping_ce_0\ : STD_LOGIC;
  signal reset_flipping : STD_LOGIC;
  signal \stage1_r_reg__0\ : STD_LOGIC_VECTOR ( 17 downto 9 );
  signal stage1_r_reg_n_100 : STD_LOGIC;
  signal stage1_r_reg_n_101 : STD_LOGIC;
  signal stage1_r_reg_n_102 : STD_LOGIC;
  signal stage1_r_reg_n_103 : STD_LOGIC;
  signal stage1_r_reg_n_104 : STD_LOGIC;
  signal stage1_r_reg_n_105 : STD_LOGIC;
  signal stage1_r_reg_n_88 : STD_LOGIC;
  signal stage1_r_reg_n_89 : STD_LOGIC;
  signal stage1_r_reg_n_90 : STD_LOGIC;
  signal stage1_r_reg_n_91 : STD_LOGIC;
  signal stage1_r_reg_n_92 : STD_LOGIC;
  signal stage1_r_reg_n_93 : STD_LOGIC;
  signal stage1_r_reg_n_94 : STD_LOGIC;
  signal stage1_r_reg_n_95 : STD_LOGIC;
  signal stage1_r_reg_n_96 : STD_LOGIC;
  signal stage1_r_reg_n_97 : STD_LOGIC;
  signal stage1_r_reg_n_98 : STD_LOGIC;
  signal stage1_r_reg_n_99 : STD_LOGIC;
  signal NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_stage1_r_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_stage1_r_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_stage1_r_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal NLW_stage1_r_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  flipping_CE_0 <= \^flipping_ce_0\;
\spike0_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \stage1_r_reg__0\(17),
      I1 => \spike0_carry__0_3\,
      O => DI(3)
    );
\spike0_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \stage1_r_reg__0\(17),
      I1 => \spike0_carry__0\,
      O => DI(2)
    );
\spike0_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \stage1_r_reg__0\(17),
      I1 => \spike0_carry__0\,
      O => DI(1)
    );
\spike0_carry__0_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45555510"
    )
        port map (
      I0 => \stage1_r_reg__0\(17),
      I1 => spike0_carry(0),
      I2 => \spike0_carry__0_2\,
      I3 => \spike0_carry__0_0\(8),
      I4 => \spike0_carry__0_0\(9),
      O => DI(0)
    );
\spike0_carry__0_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \spike0_carry__0_0\(9),
      I1 => \spike0_carry__0_1\,
      I2 => \stage1_r_reg__0\(17),
      O => S(3)
    );
\spike0_carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \stage1_r_reg__0\(17),
      I1 => \spike0_carry__0_3\,
      O => S(2)
    );
\spike0_carry__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \stage1_r_reg__0\(17),
      I1 => \spike0_carry__0_3\,
      O => S(1)
    );
\spike0_carry__0_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88141181"
    )
        port map (
      I0 => \spike0_carry__0_0\(9),
      I1 => \spike0_carry__0_0\(8),
      I2 => \spike0_carry__0_2\,
      I3 => spike0_carry(0),
      I4 => \stage1_r_reg__0\(17),
      O => S(0)
    );
\spike0_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55010054F515507C"
    )
        port map (
      I0 => \stage1_r_reg__0\(16),
      I1 => spike0_carry_2,
      I2 => \spike0_carry__0_0\(6),
      I3 => spike0_carry(0),
      I4 => \spike0_carry__0_0\(7),
      I5 => \stage1_r_reg__0\(15),
      O => stage1_r_reg_0(3)
    );
\spike0_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44451110CD555730"
    )
        port map (
      I0 => \stage1_r_reg__0\(14),
      I1 => spike0_carry(0),
      I2 => spike0_carry_1,
      I3 => \spike0_carry__0_0\(4),
      I4 => \spike0_carry__0_0\(5),
      I5 => \stage1_r_reg__0\(13),
      O => stage1_r_reg_0(2)
    );
\spike0_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44451110CD555730"
    )
        port map (
      I0 => \stage1_r_reg__0\(12),
      I1 => spike0_carry(0),
      I2 => spike0_carry_0,
      I3 => \spike0_carry__0_0\(2),
      I4 => \spike0_carry__0_0\(3),
      I5 => \stage1_r_reg__0\(11),
      O => stage1_r_reg_0(1)
    );
\spike0_carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4414D474"
    )
        port map (
      I0 => \stage1_r_reg__0\(10),
      I1 => \spike0_carry__0_0\(1),
      I2 => \spike0_carry__0_0\(0),
      I3 => spike0_carry(0),
      I4 => \stage1_r_reg__0\(9),
      O => stage1_r_reg_0(0)
    );
\spike0_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9006906009600909"
    )
        port map (
      I0 => \spike0_carry__0_0\(7),
      I1 => \stage1_r_reg__0\(16),
      I2 => \spike0_carry__0_0\(6),
      I3 => spike0_carry(0),
      I4 => spike0_carry_2,
      I5 => \stage1_r_reg__0\(15),
      O => \mem_p_reg[7]\(3)
    );
\spike0_carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090066009096009"
    )
        port map (
      I0 => \spike0_carry__0_0\(5),
      I1 => \stage1_r_reg__0\(14),
      I2 => \spike0_carry__0_0\(4),
      I3 => spike0_carry_1,
      I4 => spike0_carry(0),
      I5 => \stage1_r_reg__0\(13),
      O => \mem_p_reg[7]\(2)
    );
\spike0_carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090066009096009"
    )
        port map (
      I0 => \spike0_carry__0_0\(3),
      I1 => \stage1_r_reg__0\(12),
      I2 => \spike0_carry__0_0\(2),
      I3 => spike0_carry_0,
      I4 => spike0_carry(0),
      I5 => \stage1_r_reg__0\(11),
      O => \mem_p_reg[7]\(1)
    );
\spike0_carry_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"960000C3"
    )
        port map (
      I0 => spike0_carry(0),
      I1 => \spike0_carry__0_0\(1),
      I2 => \stage1_r_reg__0\(10),
      I3 => \stage1_r_reg__0\(9),
      I4 => \spike0_carry__0_0\(0),
      O => \mem_p_reg[7]\(0)
    );
stage1_r_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(11),
      A(28) => A(11),
      A(27) => A(11),
      A(26) => A(11),
      A(25) => A(11),
      A(24) => A(11),
      A(23) => A(11),
      A(22) => A(11),
      A(21) => A(11),
      A(20) => A(11),
      A(19) => A(11),
      A(18) => A(11),
      A(17) => A(11),
      A(16) => A(11),
      A(15) => A(11),
      A(14) => A(11),
      A(13) => A(11),
      A(12 downto 11) => A(11 downto 10),
      A(10) => A(11),
      A(9 downto 0) => A(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_stage1_r_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_stage1_r_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_stage1_r_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^flipping_ce_0\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^flipping_ce_0\,
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_stage1_r_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 27) => NLW_stage1_r_reg_P_UNCONNECTED(47 downto 27),
      P(26 downto 18) => \stage1_r_reg__0\(17 downto 9),
      P(17) => stage1_r_reg_n_88,
      P(16) => stage1_r_reg_n_89,
      P(15) => stage1_r_reg_n_90,
      P(14) => stage1_r_reg_n_91,
      P(13) => stage1_r_reg_n_92,
      P(12) => stage1_r_reg_n_93,
      P(11) => stage1_r_reg_n_94,
      P(10) => stage1_r_reg_n_95,
      P(9) => stage1_r_reg_n_96,
      P(8) => stage1_r_reg_n_97,
      P(7) => stage1_r_reg_n_98,
      P(6) => stage1_r_reg_n_99,
      P(5) => stage1_r_reg_n_100,
      P(4) => stage1_r_reg_n_101,
      P(3) => stage1_r_reg_n_102,
      P(2) => stage1_r_reg_n_103,
      P(1) => stage1_r_reg_n_104,
      P(0) => stage1_r_reg_n_105,
      PATTERNBDETECT => NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_stage1_r_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => reset_flipping,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => reset_flipping,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => reset_flipping,
      UNDERFLOW => NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED
    );
\stage1_r_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => x_reg_rep_1,
      I1 => x_reg_rep_0,
      I2 => x_reg_rep,
      O => \^flipping_ce_0\
    );
\state[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A28"
    )
        port map (
      I0 => \state_reg[0]\(0),
      I1 => x_reg_rep,
      I2 => x_reg_rep_0,
      I3 => x_reg_rep_1,
      O => \state_reg[1]\
    );
u_noise: entity work.whole_system_fowler_nordheim_anne_0_0_log_noise_generator
     port map (
      Q(0) => Q(0),
      reset_flipping => reset_flipping,
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[0]\ => x_reg_rep_1,
      \state_reg[0]_0\ => x_reg_rep_0,
      \state_reg[0]_1\ => x_reg_rep,
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\ => \state_reg[15]_0\,
      \state_reg[15]_1\(15 downto 0) => \state_reg[15]_1\(15 downto 0)
    );
u_temp: entity work.whole_system_fowler_nordheim_anne_0_0_temperature_module
     port map (
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      E(0) => E(0),
      reset_flipping => reset_flipping,
      s00_axi_aclk => s00_axi_aclk,
      \x_reg[0]_0\ => \x_reg[0]\,
      x_reg_rep => x_reg_rep,
      x_reg_rep_0 => x_reg_rep_0,
      x_reg_rep_1 => x_reg_rep_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_flipping_unit_1 is
  port (
    flipping_CE : out STD_LOGIC;
    \slv_reg3_reg[14]\ : out STD_LOGIC;
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[1]\ : out STD_LOGIC;
    stage1_r_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mem_p_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \spike0_carry__0\ : in STD_LOGIC;
    x_reg_rep : in STD_LOGIC;
    x_reg_rep_0 : in STD_LOGIC;
    x_reg_rep_1 : in STD_LOGIC;
    \spike0_carry__0_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \spike0_carry__0_1\ : in STD_LOGIC;
    \spike0_carry__0_2\ : in STD_LOGIC;
    spike0_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    spike0_carry_0 : in STD_LOGIC;
    spike0_carry_1 : in STD_LOGIC;
    spike0_carry_2 : in STD_LOGIC;
    mem_cmp : in STD_LOGIC_VECTOR ( 0 to 0 );
    \x_reg[0]\ : in STD_LOGIC;
    x_reg_rep_2 : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_flipping_unit_1 : entity is "flipping_unit";
end whole_system_fowler_nordheim_anne_0_0_flipping_unit_1;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_flipping_unit_1 is
  signal \^flipping_ce\ : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal reset_flipping : STD_LOGIC;
  signal stage1_r_reg_n_100 : STD_LOGIC;
  signal stage1_r_reg_n_101 : STD_LOGIC;
  signal stage1_r_reg_n_102 : STD_LOGIC;
  signal stage1_r_reg_n_103 : STD_LOGIC;
  signal stage1_r_reg_n_104 : STD_LOGIC;
  signal stage1_r_reg_n_105 : STD_LOGIC;
  signal stage1_r_reg_n_80 : STD_LOGIC;
  signal stage1_r_reg_n_81 : STD_LOGIC;
  signal stage1_r_reg_n_82 : STD_LOGIC;
  signal stage1_r_reg_n_83 : STD_LOGIC;
  signal stage1_r_reg_n_84 : STD_LOGIC;
  signal stage1_r_reg_n_85 : STD_LOGIC;
  signal stage1_r_reg_n_86 : STD_LOGIC;
  signal stage1_r_reg_n_87 : STD_LOGIC;
  signal stage1_r_reg_n_88 : STD_LOGIC;
  signal stage1_r_reg_n_89 : STD_LOGIC;
  signal stage1_r_reg_n_90 : STD_LOGIC;
  signal stage1_r_reg_n_91 : STD_LOGIC;
  signal stage1_r_reg_n_92 : STD_LOGIC;
  signal stage1_r_reg_n_93 : STD_LOGIC;
  signal stage1_r_reg_n_94 : STD_LOGIC;
  signal stage1_r_reg_n_95 : STD_LOGIC;
  signal stage1_r_reg_n_96 : STD_LOGIC;
  signal stage1_r_reg_n_97 : STD_LOGIC;
  signal stage1_r_reg_n_98 : STD_LOGIC;
  signal stage1_r_reg_n_99 : STD_LOGIC;
  signal u_temp_n_0 : STD_LOGIC;
  signal u_temp_n_1 : STD_LOGIC;
  signal u_temp_n_10 : STD_LOGIC;
  signal u_temp_n_11 : STD_LOGIC;
  signal u_temp_n_12 : STD_LOGIC;
  signal u_temp_n_13 : STD_LOGIC;
  signal u_temp_n_14 : STD_LOGIC;
  signal u_temp_n_15 : STD_LOGIC;
  signal u_temp_n_16 : STD_LOGIC;
  signal u_temp_n_17 : STD_LOGIC;
  signal u_temp_n_2 : STD_LOGIC;
  signal u_temp_n_3 : STD_LOGIC;
  signal u_temp_n_4 : STD_LOGIC;
  signal u_temp_n_5 : STD_LOGIC;
  signal u_temp_n_6 : STD_LOGIC;
  signal u_temp_n_7 : STD_LOGIC;
  signal u_temp_n_8 : STD_LOGIC;
  signal u_temp_n_9 : STD_LOGIC;
  signal NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_stage1_r_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_stage1_r_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_stage1_r_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_stage1_r_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal NLW_stage1_r_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  flipping_CE <= \^flipping_ce\;
\spike0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in0,
      I1 => mem_cmp(0),
      O => DI(3)
    );
\spike0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      I1 => \spike0_carry__0\,
      O => DI(2)
    );
\spike0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in0,
      I1 => \spike0_carry__0\,
      O => DI(1)
    );
\spike0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45555510"
    )
        port map (
      I0 => p_0_in0,
      I1 => spike0_carry(0),
      I2 => \spike0_carry__0_2\,
      I3 => \spike0_carry__0_0\(8),
      I4 => \spike0_carry__0_0\(9),
      O => DI(0)
    );
\spike0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \spike0_carry__0_0\(9),
      I1 => \spike0_carry__0_1\,
      I2 => p_0_in0,
      O => S(3)
    );
\spike0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in0,
      I1 => mem_cmp(0),
      O => S(2)
    );
\spike0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in0,
      I1 => mem_cmp(0),
      O => S(1)
    );
\spike0_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88141181"
    )
        port map (
      I0 => \spike0_carry__0_0\(9),
      I1 => \spike0_carry__0_0\(8),
      I2 => \spike0_carry__0_2\,
      I3 => spike0_carry(0),
      I4 => p_0_in0,
      O => S(0)
    );
spike0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55010054F515507C"
    )
        port map (
      I0 => stage1_r_reg_n_80,
      I1 => spike0_carry_2,
      I2 => \spike0_carry__0_0\(6),
      I3 => spike0_carry(0),
      I4 => \spike0_carry__0_0\(7),
      I5 => stage1_r_reg_n_81,
      O => stage1_r_reg_0(3)
    );
spike0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44451110CD555730"
    )
        port map (
      I0 => stage1_r_reg_n_82,
      I1 => spike0_carry(0),
      I2 => spike0_carry_1,
      I3 => \spike0_carry__0_0\(4),
      I4 => \spike0_carry__0_0\(5),
      I5 => stage1_r_reg_n_83,
      O => stage1_r_reg_0(2)
    );
spike0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44451110CD555730"
    )
        port map (
      I0 => stage1_r_reg_n_84,
      I1 => spike0_carry(0),
      I2 => spike0_carry_0,
      I3 => \spike0_carry__0_0\(2),
      I4 => \spike0_carry__0_0\(3),
      I5 => stage1_r_reg_n_85,
      O => stage1_r_reg_0(1)
    );
spike0_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4414D474"
    )
        port map (
      I0 => stage1_r_reg_n_86,
      I1 => \spike0_carry__0_0\(1),
      I2 => \spike0_carry__0_0\(0),
      I3 => spike0_carry(0),
      I4 => stage1_r_reg_n_87,
      O => stage1_r_reg_0(0)
    );
spike0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9006906009600909"
    )
        port map (
      I0 => \spike0_carry__0_0\(7),
      I1 => stage1_r_reg_n_80,
      I2 => \spike0_carry__0_0\(6),
      I3 => spike0_carry(0),
      I4 => spike0_carry_2,
      I5 => stage1_r_reg_n_81,
      O => \mem_p_reg[7]\(3)
    );
spike0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090066009096009"
    )
        port map (
      I0 => \spike0_carry__0_0\(5),
      I1 => stage1_r_reg_n_82,
      I2 => \spike0_carry__0_0\(4),
      I3 => spike0_carry_1,
      I4 => spike0_carry(0),
      I5 => stage1_r_reg_n_83,
      O => \mem_p_reg[7]\(2)
    );
spike0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090066009096009"
    )
        port map (
      I0 => \spike0_carry__0_0\(3),
      I1 => stage1_r_reg_n_84,
      I2 => \spike0_carry__0_0\(2),
      I3 => spike0_carry_0,
      I4 => spike0_carry(0),
      I5 => stage1_r_reg_n_85,
      O => \mem_p_reg[7]\(1)
    );
spike0_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"960000C3"
    )
        port map (
      I0 => spike0_carry(0),
      I1 => \spike0_carry__0_0\(1),
      I2 => stage1_r_reg_n_86,
      I3 => stage1_r_reg_n_87,
      I4 => \spike0_carry__0_0\(0),
      O => \mem_p_reg[7]\(0)
    );
stage1_r_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(11),
      A(28) => A(11),
      A(27) => A(11),
      A(26) => A(11),
      A(25) => A(11),
      A(24) => A(11),
      A(23) => A(11),
      A(22) => A(11),
      A(21) => A(11),
      A(20) => A(11),
      A(19) => A(11),
      A(18) => A(11),
      A(17) => A(11),
      A(16) => A(11),
      A(15) => A(11),
      A(14) => A(11),
      A(13) => A(11),
      A(12 downto 11) => A(11 downto 10),
      A(10) => A(11),
      A(9 downto 0) => A(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_stage1_r_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => u_temp_n_0,
      B(16) => u_temp_n_1,
      B(15) => u_temp_n_2,
      B(14) => u_temp_n_3,
      B(13) => u_temp_n_4,
      B(12) => u_temp_n_5,
      B(11) => u_temp_n_6,
      B(10) => u_temp_n_7,
      B(9) => u_temp_n_8,
      B(8) => u_temp_n_9,
      B(7) => u_temp_n_10,
      B(6) => u_temp_n_11,
      B(5) => u_temp_n_12,
      B(4) => u_temp_n_13,
      B(3) => u_temp_n_14,
      B(2) => u_temp_n_15,
      B(1) => u_temp_n_16,
      B(0) => u_temp_n_17,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_stage1_r_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_stage1_r_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_stage1_r_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^flipping_ce\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^flipping_ce\,
      CLK => s00_axi_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_stage1_r_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_stage1_r_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 27) => NLW_stage1_r_reg_P_UNCONNECTED(47 downto 27),
      P(26) => p_0_in0,
      P(25) => stage1_r_reg_n_80,
      P(24) => stage1_r_reg_n_81,
      P(23) => stage1_r_reg_n_82,
      P(22) => stage1_r_reg_n_83,
      P(21) => stage1_r_reg_n_84,
      P(20) => stage1_r_reg_n_85,
      P(19) => stage1_r_reg_n_86,
      P(18) => stage1_r_reg_n_87,
      P(17) => stage1_r_reg_n_88,
      P(16) => stage1_r_reg_n_89,
      P(15) => stage1_r_reg_n_90,
      P(14) => stage1_r_reg_n_91,
      P(13) => stage1_r_reg_n_92,
      P(12) => stage1_r_reg_n_93,
      P(11) => stage1_r_reg_n_94,
      P(10) => stage1_r_reg_n_95,
      P(9) => stage1_r_reg_n_96,
      P(8) => stage1_r_reg_n_97,
      P(7) => stage1_r_reg_n_98,
      P(6) => stage1_r_reg_n_99,
      P(5) => stage1_r_reg_n_100,
      P(4) => stage1_r_reg_n_101,
      P(3) => stage1_r_reg_n_102,
      P(2) => stage1_r_reg_n_103,
      P(1) => stage1_r_reg_n_104,
      P(0) => stage1_r_reg_n_105,
      PATTERNBDETECT => NLW_stage1_r_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_stage1_r_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_stage1_r_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => reset_flipping,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => reset_flipping,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => reset_flipping,
      UNDERFLOW => NLW_stage1_r_reg_UNDERFLOW_UNCONNECTED
    );
stage1_r_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => x_reg_rep_1,
      I1 => x_reg_rep_0,
      I2 => x_reg_rep,
      O => \^flipping_ce\
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A28"
    )
        port map (
      I0 => CO(0),
      I1 => x_reg_rep,
      I2 => x_reg_rep_0,
      I3 => x_reg_rep_1,
      O => \state_reg[1]\
    );
u_noise: entity work.whole_system_fowler_nordheim_anne_0_0_log_noise_generator_5
     port map (
      Q(0) => Q(0),
      reset_flipping => reset_flipping,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg3_reg[14]\ => \slv_reg3_reg[14]\,
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\(15 downto 0) => \state_reg[15]_0\(15 downto 0),
      \state_reg[15]_1\ => x_reg_rep_1,
      \state_reg[15]_2\ => x_reg_rep_0,
      \state_reg[15]_3\ => x_reg_rep
    );
u_temp: entity work.whole_system_fowler_nordheim_anne_0_0_temperature_module_6
     port map (
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      B(17 downto 0) => B(17 downto 0),
      \out\(17) => u_temp_n_0,
      \out\(16) => u_temp_n_1,
      \out\(15) => u_temp_n_2,
      \out\(14) => u_temp_n_3,
      \out\(13) => u_temp_n_4,
      \out\(12) => u_temp_n_5,
      \out\(11) => u_temp_n_6,
      \out\(10) => u_temp_n_7,
      \out\(9) => u_temp_n_8,
      \out\(8) => u_temp_n_9,
      \out\(7) => u_temp_n_10,
      \out\(6) => u_temp_n_11,
      \out\(5) => u_temp_n_12,
      \out\(4) => u_temp_n_13,
      \out\(3) => u_temp_n_14,
      \out\(2) => u_temp_n_15,
      \out\(1) => u_temp_n_16,
      \out\(0) => u_temp_n_17,
      reset_flipping => reset_flipping,
      s00_axi_aclk => s00_axi_aclk,
      \x_reg[0]_0\ => \x_reg[0]\,
      x_reg_rep_0 => x_reg_rep,
      x_reg_rep_1 => x_reg_rep_0,
      x_reg_rep_2 => x_reg_rep_1,
      x_reg_rep_3 => x_reg_rep_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_neuron_ensemble is
  port (
    flipping_CE : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg3_reg[14]\ : out STD_LOGIC;
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \st_p_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_p_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    \slv_reg5_reg[1]\ : out STD_LOGIC;
    \slv_reg5_reg[1]_0\ : out STD_LOGIC;
    \slv_reg5_reg[0]\ : out STD_LOGIC;
    \slv_reg5_reg[1]_1\ : out STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \idx_p_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x_reg_rep : in STD_LOGIC;
    x_reg_rep_0 : in STD_LOGIC;
    x_reg_rep_1 : in STD_LOGIC;
    \_inferred__2/i__carry\ : in STD_LOGIC;
    \state_ram_reg[2][1]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_ram_reg[3][0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_ram[0][1]_i_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_ram_reg[0][0]\ : in STD_LOGIC;
    \x_reg[0]\ : in STD_LOGIC;
    \state_reg[4]_0\ : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[2][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[1][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    x_reg_rep_2 : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble : entity is "neuron_ensemble";
end whole_system_fowler_nordheim_anne_0_0_neuron_ensemble;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mem_cmp : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \^mem_p_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal neuron_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal selected_idx_offset : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal selected_membrane : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \spike0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \spike0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \spike0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \spike0_carry__0_n_1\ : STD_LOGIC;
  signal \spike0_carry__0_n_2\ : STD_LOGIC;
  signal \spike0_carry__0_n_3\ : STD_LOGIC;
  signal spike0_carry_i_10_n_0 : STD_LOGIC;
  signal spike0_carry_i_11_n_0 : STD_LOGIC;
  signal spike0_carry_i_9_n_0 : STD_LOGIC;
  signal spike0_carry_n_0 : STD_LOGIC;
  signal spike0_carry_n_1 : STD_LOGIC;
  signal spike0_carry_n_2 : STD_LOGIC;
  signal spike0_carry_n_3 : STD_LOGIC;
  signal st_p : STD_LOGIC_VECTOR ( 1 to 1 );
  signal storage_CE : STD_LOGIC;
  signal u_flip_n_10 : STD_LOGIC;
  signal u_flip_n_11 : STD_LOGIC;
  signal u_flip_n_12 : STD_LOGIC;
  signal u_flip_n_13 : STD_LOGIC;
  signal u_flip_n_14 : STD_LOGIC;
  signal u_flip_n_15 : STD_LOGIC;
  signal u_flip_n_16 : STD_LOGIC;
  signal u_flip_n_17 : STD_LOGIC;
  signal u_flip_n_19 : STD_LOGIC;
  signal u_flip_n_20 : STD_LOGIC;
  signal u_flip_n_21 : STD_LOGIC;
  signal u_flip_n_22 : STD_LOGIC;
  signal u_flip_n_23 : STD_LOGIC;
  signal u_flip_n_24 : STD_LOGIC;
  signal u_flip_n_25 : STD_LOGIC;
  signal u_flip_n_26 : STD_LOGIC;
  signal NLW_spike0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_spike0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of spike0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \spike0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spike0_carry__0_i_11\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \spike0_carry__0_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of spike0_carry_i_10 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of spike0_carry_i_11 : label is "soft_lutpair32";
begin
  CO(0) <= \^co\(0);
  \mem_p_reg[9]_0\(9 downto 0) <= \^mem_p_reg[9]_0\(9 downto 0);
\idx_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_idx_offset(0),
      Q => \idx_p_reg[1]_0\(0),
      R => \state_reg[4]_0\
    );
\idx_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_idx_offset(1),
      Q => \idx_p_reg[1]_0\(1),
      R => \state_reg[4]_0\
    );
\mem_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(0),
      Q => \^mem_p_reg[9]_0\(0),
      R => \state_reg[4]_0\
    );
\mem_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(1),
      Q => \^mem_p_reg[9]_0\(1),
      R => \state_reg[4]_0\
    );
\mem_p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(2),
      Q => \^mem_p_reg[9]_0\(2),
      R => \state_reg[4]_0\
    );
\mem_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(3),
      Q => \^mem_p_reg[9]_0\(3),
      R => \state_reg[4]_0\
    );
\mem_p_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(4),
      Q => \^mem_p_reg[9]_0\(4),
      R => \state_reg[4]_0\
    );
\mem_p_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(5),
      Q => \^mem_p_reg[9]_0\(5),
      R => \state_reg[4]_0\
    );
\mem_p_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(6),
      Q => \^mem_p_reg[9]_0\(6),
      R => \state_reg[4]_0\
    );
\mem_p_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(7),
      Q => \^mem_p_reg[9]_0\(7),
      R => \state_reg[4]_0\
    );
\mem_p_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(8),
      Q => \^mem_p_reg[9]_0\(8),
      R => \state_reg[4]_0\
    );
\mem_p_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => selected_membrane(9),
      Q => \^mem_p_reg[9]_0\(9),
      R => \state_reg[4]_0\
    );
spike0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => spike0_carry_n_0,
      CO(2) => spike0_carry_n_1,
      CO(1) => spike0_carry_n_2,
      CO(0) => spike0_carry_n_3,
      CYINIT => '0',
      DI(3) => u_flip_n_19,
      DI(2) => u_flip_n_20,
      DI(1) => u_flip_n_21,
      DI(0) => u_flip_n_22,
      O(3 downto 0) => NLW_spike0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_flip_n_23,
      S(2) => u_flip_n_24,
      S(1) => u_flip_n_25,
      S(0) => u_flip_n_26
    );
\spike0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => spike0_carry_n_0,
      CO(3) => \^co\(0),
      CO(2) => \spike0_carry__0_n_1\,
      CO(1) => \spike0_carry__0_n_2\,
      CO(0) => \spike0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => u_flip_n_10,
      DI(2) => u_flip_n_11,
      DI(1) => u_flip_n_12,
      DI(0) => u_flip_n_13,
      O(3 downto 0) => \NLW_spike0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => u_flip_n_14,
      S(2) => u_flip_n_15,
      S(1) => u_flip_n_16,
      S(0) => u_flip_n_17
    );
\spike0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666665"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(9),
      I1 => st_p(1),
      I2 => \^mem_p_reg[9]_0\(7),
      I3 => spike0_carry_i_9_n_0,
      I4 => \^mem_p_reg[9]_0\(6),
      I5 => \^mem_p_reg[9]_0\(8),
      O => \spike0_carry__0_i_10_n_0\
    );
\spike0_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(7),
      I1 => spike0_carry_i_9_n_0,
      I2 => \^mem_p_reg[9]_0\(6),
      O => \spike0_carry__0_i_11_n_0\
    );
\spike0_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => st_p(1),
      I1 => \^mem_p_reg[9]_0\(7),
      I2 => spike0_carry_i_9_n_0,
      I3 => \^mem_p_reg[9]_0\(6),
      I4 => \^mem_p_reg[9]_0\(8),
      O => \spike0_carry__0_i_12_n_0\
    );
\spike0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55555556"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(9),
      I1 => \^mem_p_reg[9]_0\(8),
      I2 => \^mem_p_reg[9]_0\(6),
      I3 => spike0_carry_i_9_n_0,
      I4 => \^mem_p_reg[9]_0\(7),
      I5 => st_p(1),
      O => mem_cmp(9)
    );
spike0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(3),
      I1 => \^mem_p_reg[9]_0\(0),
      I2 => \^mem_p_reg[9]_0\(1),
      I3 => \^mem_p_reg[9]_0\(2),
      O => spike0_carry_i_10_n_0
    );
spike0_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(0),
      I1 => \^mem_p_reg[9]_0\(1),
      O => spike0_carry_i_11_n_0
    );
spike0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(5),
      I1 => \^mem_p_reg[9]_0\(3),
      I2 => \^mem_p_reg[9]_0\(0),
      I3 => \^mem_p_reg[9]_0\(1),
      I4 => \^mem_p_reg[9]_0\(2),
      I5 => \^mem_p_reg[9]_0\(4),
      O => spike0_carry_i_9_n_0
    );
\st_p[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => x_reg_rep_1,
      I1 => x_reg_rep_0,
      I2 => x_reg_rep,
      O => storage_CE
    );
\st_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => neuron_state(0),
      Q => \st_p_reg[0]_0\(0),
      R => \state_reg[4]_0\
    );
\st_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => neuron_state(1),
      Q => st_p(1),
      R => \state_reg[4]_0\
    );
u_flip: entity work.whole_system_fowler_nordheim_anne_0_0_flipping_unit_1
     port map (
      A(11 downto 0) => A(11 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CO(0) => \^co\(0),
      DI(3) => u_flip_n_10,
      DI(2) => u_flip_n_11,
      DI(1) => u_flip_n_12,
      DI(0) => u_flip_n_13,
      Q(0) => Q(0),
      S(3) => u_flip_n_14,
      S(2) => u_flip_n_15,
      S(1) => u_flip_n_16,
      S(0) => u_flip_n_17,
      flipping_CE => flipping_CE,
      mem_cmp(0) => mem_cmp(9),
      \mem_p_reg[7]\(3) => u_flip_n_23,
      \mem_p_reg[7]\(2) => u_flip_n_24,
      \mem_p_reg[7]\(1) => u_flip_n_25,
      \mem_p_reg[7]\(0) => u_flip_n_26,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg3_reg[14]\ => \slv_reg3_reg[14]\,
      spike0_carry(0) => st_p(1),
      spike0_carry_0 => spike0_carry_i_11_n_0,
      spike0_carry_1 => spike0_carry_i_10_n_0,
      spike0_carry_2 => spike0_carry_i_9_n_0,
      \spike0_carry__0\ => \spike0_carry__0_i_10_n_0\,
      \spike0_carry__0_0\(9 downto 0) => \^mem_p_reg[9]_0\(9 downto 0),
      \spike0_carry__0_1\ => \spike0_carry__0_i_12_n_0\,
      \spike0_carry__0_2\ => \spike0_carry__0_i_11_n_0\,
      stage1_r_reg_0(3) => u_flip_n_19,
      stage1_r_reg_0(2) => u_flip_n_20,
      stage1_r_reg_0(1) => u_flip_n_21,
      stage1_r_reg_0(0) => u_flip_n_22,
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\(15 downto 0) => \state_reg[15]_0\(15 downto 0),
      \state_reg[1]\ => \state_reg[1]\,
      \x_reg[0]\ => \x_reg[0]\,
      x_reg_rep => x_reg_rep_0,
      x_reg_rep_0 => x_reg_rep_1,
      x_reg_rep_1 => x_reg_rep,
      x_reg_rep_2 => x_reg_rep_2
    );
u_store: entity work.whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage_2
     port map (
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      \_inferred__2/i__carry_0\ => \_inferred__2/i__carry\,
      \mem_ram_reg[0][0]_0\ => x_reg_rep,
      \mem_ram_reg[0][0]_1\ => x_reg_rep_0,
      \mem_ram_reg[0][0]_2\ => x_reg_rep_1,
      \mem_ram_reg[0][0]_3\(0) => \mem_ram_reg[0][0]\(0),
      \mem_ram_reg[1][0]_0\(0) => \mem_ram_reg[1][0]\(0),
      \mem_ram_reg[2][0]_0\(0) => \mem_ram_reg[2][0]\(0),
      \neuron_state_reg[1]_0\(1 downto 0) => neuron_state(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \selected_idx_offset_reg[1]_0\(1 downto 0) => selected_idx_offset(1 downto 0),
      \selected_membrane_reg[9]_0\(9 downto 0) => selected_membrane(9 downto 0),
      \slv_reg5_reg[0]\ => \slv_reg5_reg[0]\,
      \slv_reg5_reg[1]\ => \slv_reg5_reg[1]\,
      \slv_reg5_reg[1]_0\ => \slv_reg5_reg[1]_0\,
      \slv_reg5_reg[1]_1\ => \slv_reg5_reg[1]_1\,
      \state_ram[0][1]_i_2_0\(2 downto 0) => \state_ram[0][1]_i_2\(2 downto 0),
      \state_ram_reg[0][0]_0\ => \state_ram_reg[0][0]\,
      \state_ram_reg[2][1]_0\(11 downto 0) => \state_ram_reg[2][1]\(11 downto 0),
      \state_ram_reg[3][0]_0\(1 downto 0) => \state_ram_reg[3][0]\(1 downto 0),
      \state_reg[2]\ => \state_reg[2]\,
      \state_reg[4]\(4 downto 0) => \state_reg[4]\(4 downto 0),
      \state_reg[4]_0\ => \state_reg[4]_0\,
      storage_CE_advance => storage_CE_advance
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble__parameterized0\ is
  port (
    flipping_CE_0 : out STD_LOGIC;
    stage1_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mem_p_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \state_reg[1]\ : out STD_LOGIC;
    \index_of_neuron_that_fired_reg_reg[2]\ : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \idx_p_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \st_p_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[15]_0\ : in STD_LOGIC;
    \state_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    x_reg_rep : in STD_LOGIC;
    x_reg_rep_0 : in STD_LOGIC;
    x_reg_rep_1 : in STD_LOGIC;
    incrementing_reg : in STD_LOGIC;
    \state_ram_reg[2][1]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_ram_reg[3][0]\ : in STD_LOGIC;
    \state_ram_reg[0][0]\ : in STD_LOGIC;
    \state_ram_reg[1][0]\ : in STD_LOGIC;
    \state_ram_reg[2][0]\ : in STD_LOGIC;
    \state_ram[3][1]_i_2__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \x_reg[0]\ : in STD_LOGIC;
    \state_reg[4]_0\ : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC;
    \mem_ram_reg[3][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[2][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[1][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_ram_reg[0][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble__parameterized0\ : entity is "neuron_ensemble";
end \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble__parameterized0\;

architecture STRUCTURE of \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble__parameterized0\ is
  signal \^mem_p_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \spike0_carry__0_i_10__0_n_0\ : STD_LOGIC;
  signal \spike0_carry__0_i_11__0_n_0\ : STD_LOGIC;
  signal \spike0_carry__0_i_12__0_n_0\ : STD_LOGIC;
  signal \spike0_carry__0_i_9__0_n_0\ : STD_LOGIC;
  signal \spike0_carry__0_n_1\ : STD_LOGIC;
  signal \spike0_carry__0_n_2\ : STD_LOGIC;
  signal \spike0_carry__0_n_3\ : STD_LOGIC;
  signal \spike0_carry_i_10__0_n_0\ : STD_LOGIC;
  signal \spike0_carry_i_11__0_n_0\ : STD_LOGIC;
  signal \spike0_carry_i_9__0_n_0\ : STD_LOGIC;
  signal spike0_carry_n_0 : STD_LOGIC;
  signal spike0_carry_n_1 : STD_LOGIC;
  signal spike0_carry_n_2 : STD_LOGIC;
  signal spike0_carry_n_3 : STD_LOGIC;
  signal \st_p_reg_n_0_[1]\ : STD_LOGIC;
  signal \^stage1_r_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal storage_CE : STD_LOGIC;
  signal u_flip_n_10 : STD_LOGIC;
  signal u_flip_n_11 : STD_LOGIC;
  signal u_flip_n_12 : STD_LOGIC;
  signal u_flip_n_22 : STD_LOGIC;
  signal u_flip_n_23 : STD_LOGIC;
  signal u_flip_n_24 : STD_LOGIC;
  signal u_flip_n_25 : STD_LOGIC;
  signal u_flip_n_27 : STD_LOGIC;
  signal u_flip_n_28 : STD_LOGIC;
  signal u_flip_n_29 : STD_LOGIC;
  signal u_flip_n_30 : STD_LOGIC;
  signal u_flip_n_31 : STD_LOGIC;
  signal u_flip_n_32 : STD_LOGIC;
  signal u_flip_n_33 : STD_LOGIC;
  signal u_flip_n_34 : STD_LOGIC;
  signal u_flip_n_9 : STD_LOGIC;
  signal u_store_n_10 : STD_LOGIC;
  signal u_store_n_11 : STD_LOGIC;
  signal u_store_n_12 : STD_LOGIC;
  signal u_store_n_13 : STD_LOGIC;
  signal u_store_n_14 : STD_LOGIC;
  signal u_store_n_15 : STD_LOGIC;
  signal u_store_n_2 : STD_LOGIC;
  signal u_store_n_3 : STD_LOGIC;
  signal u_store_n_4 : STD_LOGIC;
  signal u_store_n_5 : STD_LOGIC;
  signal u_store_n_6 : STD_LOGIC;
  signal u_store_n_7 : STD_LOGIC;
  signal u_store_n_8 : STD_LOGIC;
  signal u_store_n_9 : STD_LOGIC;
  signal NLW_spike0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_spike0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of spike0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \spike0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spike0_carry__0_i_11__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \spike0_carry__0_i_12__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \spike0_carry_i_10__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \spike0_carry_i_11__0\ : label is "soft_lutpair63";
begin
  \mem_p_reg[9]_0\(9 downto 0) <= \^mem_p_reg[9]_0\(9 downto 0);
  stage1_r_reg(0) <= \^stage1_r_reg\(0);
\idx_p[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => x_reg_rep_1,
      I1 => x_reg_rep_0,
      I2 => x_reg_rep,
      O => storage_CE
    );
\idx_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_3,
      Q => \idx_p_reg[1]_0\(0),
      R => \state_reg[4]_0\
    );
\idx_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_2,
      Q => \idx_p_reg[1]_0\(1),
      R => \state_reg[4]_0\
    );
\mem_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_15,
      Q => \^mem_p_reg[9]_0\(0),
      R => \state_reg[4]_0\
    );
\mem_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_14,
      Q => \^mem_p_reg[9]_0\(1),
      R => \state_reg[4]_0\
    );
\mem_p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_13,
      Q => \^mem_p_reg[9]_0\(2),
      R => \state_reg[4]_0\
    );
\mem_p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_12,
      Q => \^mem_p_reg[9]_0\(3),
      R => \state_reg[4]_0\
    );
\mem_p_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_11,
      Q => \^mem_p_reg[9]_0\(4),
      R => \state_reg[4]_0\
    );
\mem_p_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_10,
      Q => \^mem_p_reg[9]_0\(5),
      R => \state_reg[4]_0\
    );
\mem_p_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_9,
      Q => \^mem_p_reg[9]_0\(6),
      R => \state_reg[4]_0\
    );
\mem_p_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_8,
      Q => \^mem_p_reg[9]_0\(7),
      R => \state_reg[4]_0\
    );
\mem_p_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_7,
      Q => \^mem_p_reg[9]_0\(8),
      R => \state_reg[4]_0\
    );
\mem_p_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_6,
      Q => \^mem_p_reg[9]_0\(9),
      R => \state_reg[4]_0\
    );
spike0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => spike0_carry_n_0,
      CO(2) => spike0_carry_n_1,
      CO(1) => spike0_carry_n_2,
      CO(0) => spike0_carry_n_3,
      CYINIT => '0',
      DI(3) => u_flip_n_27,
      DI(2) => u_flip_n_28,
      DI(1) => u_flip_n_29,
      DI(0) => u_flip_n_30,
      O(3 downto 0) => NLW_spike0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_flip_n_31,
      S(2) => u_flip_n_32,
      S(1) => u_flip_n_33,
      S(0) => u_flip_n_34
    );
\spike0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => spike0_carry_n_0,
      CO(3) => \^stage1_r_reg\(0),
      CO(2) => \spike0_carry__0_n_1\,
      CO(1) => \spike0_carry__0_n_2\,
      CO(0) => \spike0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => u_flip_n_9,
      DI(2) => u_flip_n_10,
      DI(1) => u_flip_n_11,
      DI(0) => u_flip_n_12,
      O(3 downto 0) => \NLW_spike0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => u_flip_n_22,
      S(2) => u_flip_n_23,
      S(1) => u_flip_n_24,
      S(0) => u_flip_n_25
    );
\spike0_carry__0_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666665"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(9),
      I1 => \st_p_reg_n_0_[1]\,
      I2 => \^mem_p_reg[9]_0\(7),
      I3 => \spike0_carry_i_9__0_n_0\,
      I4 => \^mem_p_reg[9]_0\(6),
      I5 => \^mem_p_reg[9]_0\(8),
      O => \spike0_carry__0_i_10__0_n_0\
    );
\spike0_carry__0_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(7),
      I1 => \spike0_carry_i_9__0_n_0\,
      I2 => \^mem_p_reg[9]_0\(6),
      O => \spike0_carry__0_i_11__0_n_0\
    );
\spike0_carry__0_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => \st_p_reg_n_0_[1]\,
      I1 => \^mem_p_reg[9]_0\(7),
      I2 => \spike0_carry_i_9__0_n_0\,
      I3 => \^mem_p_reg[9]_0\(6),
      I4 => \^mem_p_reg[9]_0\(8),
      O => \spike0_carry__0_i_12__0_n_0\
    );
\spike0_carry__0_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55555556"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(9),
      I1 => \^mem_p_reg[9]_0\(8),
      I2 => \^mem_p_reg[9]_0\(6),
      I3 => \spike0_carry_i_9__0_n_0\,
      I4 => \^mem_p_reg[9]_0\(7),
      I5 => \st_p_reg_n_0_[1]\,
      O => \spike0_carry__0_i_9__0_n_0\
    );
\spike0_carry_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(3),
      I1 => \^mem_p_reg[9]_0\(0),
      I2 => \^mem_p_reg[9]_0\(1),
      I3 => \^mem_p_reg[9]_0\(2),
      O => \spike0_carry_i_10__0_n_0\
    );
\spike0_carry_i_11__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(0),
      I1 => \^mem_p_reg[9]_0\(1),
      O => \spike0_carry_i_11__0_n_0\
    );
\spike0_carry_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^mem_p_reg[9]_0\(5),
      I1 => \^mem_p_reg[9]_0\(3),
      I2 => \^mem_p_reg[9]_0\(0),
      I3 => \^mem_p_reg[9]_0\(1),
      I4 => \^mem_p_reg[9]_0\(2),
      I5 => \^mem_p_reg[9]_0\(4),
      O => \spike0_carry_i_9__0_n_0\
    );
\st_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_5,
      Q => \st_p_reg[0]_0\(0),
      R => \state_reg[4]_0\
    );
\st_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => storage_CE,
      D => u_store_n_4,
      Q => \st_p_reg_n_0_[1]\,
      R => \state_reg[4]_0\
    );
u_flip: entity work.whole_system_fowler_nordheim_anne_0_0_flipping_unit
     port map (
      A(11 downto 0) => A(11 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      B(17 downto 0) => B(17 downto 0),
      DI(3) => u_flip_n_9,
      DI(2) => u_flip_n_10,
      DI(1) => u_flip_n_11,
      DI(0) => u_flip_n_12,
      E(0) => E(0),
      Q(0) => Q(0),
      S(3) => u_flip_n_22,
      S(2) => u_flip_n_23,
      S(1) => u_flip_n_24,
      S(0) => u_flip_n_25,
      flipping_CE_0 => flipping_CE_0,
      \mem_p_reg[7]\(3) => u_flip_n_31,
      \mem_p_reg[7]\(2) => u_flip_n_32,
      \mem_p_reg[7]\(1) => u_flip_n_33,
      \mem_p_reg[7]\(0) => u_flip_n_34,
      s00_axi_aclk => s00_axi_aclk,
      spike0_carry(0) => \st_p_reg_n_0_[1]\,
      spike0_carry_0 => \spike0_carry_i_11__0_n_0\,
      spike0_carry_1 => \spike0_carry_i_10__0_n_0\,
      spike0_carry_2 => \spike0_carry_i_9__0_n_0\,
      \spike0_carry__0\ => \spike0_carry__0_i_10__0_n_0\,
      \spike0_carry__0_0\(9 downto 0) => \^mem_p_reg[9]_0\(9 downto 0),
      \spike0_carry__0_1\ => \spike0_carry__0_i_12__0_n_0\,
      \spike0_carry__0_2\ => \spike0_carry__0_i_11__0_n_0\,
      \spike0_carry__0_3\ => \spike0_carry__0_i_9__0_n_0\,
      stage1_r_reg_0(3) => u_flip_n_27,
      stage1_r_reg_0(2) => u_flip_n_28,
      stage1_r_reg_0(1) => u_flip_n_29,
      stage1_r_reg_0(0) => u_flip_n_30,
      \state_reg[0]\(0) => \^stage1_r_reg\(0),
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\ => \state_reg[15]_0\,
      \state_reg[15]_1\(15 downto 0) => \state_reg[15]_1\(15 downto 0),
      \state_reg[1]\ => \state_reg[1]\,
      \x_reg[0]\ => \x_reg[0]\,
      x_reg_rep => x_reg_rep_0,
      x_reg_rep_0 => x_reg_rep_1,
      x_reg_rep_1 => x_reg_rep
    );
u_store: entity work.whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_storage
     port map (
      Q(0) => Q(0),
      incrementing_reg => incrementing_reg,
      \index_of_neuron_that_fired_reg_reg[2]\ => \index_of_neuron_that_fired_reg_reg[2]\,
      \mem_ram_reg[0][0]_0\ => x_reg_rep,
      \mem_ram_reg[0][0]_1\ => x_reg_rep_0,
      \mem_ram_reg[0][0]_2\ => x_reg_rep_1,
      \mem_ram_reg[0][0]_3\(0) => \mem_ram_reg[0][0]\(0),
      \mem_ram_reg[1][0]_0\(0) => \mem_ram_reg[1][0]\(0),
      \mem_ram_reg[2][0]_0\(0) => \mem_ram_reg[2][0]\(0),
      \mem_ram_reg[3][0]_0\(0) => \mem_ram_reg[3][0]\(0),
      \neuron_state_reg[1]_0\(1) => u_store_n_4,
      \neuron_state_reg[1]_0\(0) => u_store_n_5,
      s00_axi_aclk => s00_axi_aclk,
      \selected_idx_offset_reg[1]_0\(1) => u_store_n_2,
      \selected_idx_offset_reg[1]_0\(0) => u_store_n_3,
      \selected_membrane_reg[9]_0\(9) => u_store_n_6,
      \selected_membrane_reg[9]_0\(8) => u_store_n_7,
      \selected_membrane_reg[9]_0\(7) => u_store_n_8,
      \selected_membrane_reg[9]_0\(6) => u_store_n_9,
      \selected_membrane_reg[9]_0\(5) => u_store_n_10,
      \selected_membrane_reg[9]_0\(4) => u_store_n_11,
      \selected_membrane_reg[9]_0\(3) => u_store_n_12,
      \selected_membrane_reg[9]_0\(2) => u_store_n_13,
      \selected_membrane_reg[9]_0\(1) => u_store_n_14,
      \selected_membrane_reg[9]_0\(0) => u_store_n_15,
      \state_ram[3][1]_i_2__0\(2 downto 0) => \state_ram[3][1]_i_2__0\(2 downto 0),
      \state_ram_reg[0][0]_0\ => \state_ram_reg[0][0]\,
      \state_ram_reg[1][0]_0\ => \state_ram_reg[1][0]\,
      \state_ram_reg[2][0]_0\ => \state_ram_reg[2][0]\,
      \state_ram_reg[2][1]_0\(11 downto 0) => \state_ram_reg[2][1]\(11 downto 0),
      \state_ram_reg[3][0]_0\ => \state_ram_reg[3][0]\,
      \state_reg[2]\ => \state_reg[2]\,
      \state_reg[4]\(4 downto 0) => \state_reg[4]\(4 downto 0),
      \state_reg[4]_0\ => \state_reg[4]_0\,
      storage_CE_advance => storage_CE_advance
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff is
  port (
    flipping_CE : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    incrementing_reg : out STD_LOGIC;
    storage_CE_advance : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    spike_reg_reg : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg3_reg[14]\ : out STD_LOGIC;
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \cnt_prop_reg[0]\ : out STD_LOGIC;
    \state_reg[1]_1\ : out STD_LOGIC;
    \index_of_neuron_that_fired_reg_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg5_reg[1]\ : out STD_LOGIC;
    \slv_reg5_reg[1]_0\ : out STD_LOGIC;
    \slv_reg5_reg[0]\ : out STD_LOGIC;
    \slv_reg5_reg[1]_1\ : out STD_LOGIC;
    add_mem : out STD_LOGIC;
    offset : out STD_LOGIC_VECTOR ( 1 downto 0 );
    membrane : out STD_LOGIC_VECTOR ( 9 downto 0 );
    B : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    add_r_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]\ : in STD_LOGIC;
    \index_of_neuron_that_fired_reg_reg[2]_1\ : in STD_LOGIC;
    add_r : in STD_LOGIC;
    new_sample_reg : in STD_LOGIC;
    \state_reg[1]_2\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    spike_reg_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_ram_reg[2][1]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \mem_ram_reg[0][0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_ram_reg[0][0]\ : in STD_LOGIC;
    \mem_r_reg[0]\ : in STD_LOGIC;
    \off_r_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mem_r_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \x_reg[0]\ : in STD_LOGIC;
    x_reg_rep : in STD_LOGIC;
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff : entity is "neuron_ensemble_with_memory_with_buff";
end whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff is
  signal G_memory_n_1 : STD_LOGIC;
  signal G_memory_n_2 : STD_LOGIC;
  signal G_memory_n_3 : STD_LOGIC;
  signal idx_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^incrementing_reg\ : STD_LOGIC;
  signal \^index_of_neuron_that_fired_reg_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mem_p : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal neuron_ensemble_inst_n_23 : STD_LOGIC;
  signal st_p : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^storage_ce_advance\ : STD_LOGIC;
  signal \u_store/mem_ram\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \state[2]_i_1__0\ : label is "soft_lutpair33";
begin
  incrementing_reg <= \^incrementing_reg\;
  \index_of_neuron_that_fired_reg_reg[2]_0\(2 downto 0) <= \^index_of_neuron_that_fired_reg_reg[2]_0\(2 downto 0);
  storage_CE_advance <= \^storage_ce_advance\;
G_memory: entity work.whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory
     port map (
      E(0) => \u_store/mem_ram\,
      Q(0) => Q(0),
      \Q_out_reg[0]_0\ => \state_reg_n_0_[2]\,
      \Q_out_reg[0]_1\ => \state_reg_n_0_[1]\,
      \Q_out_reg[0]_2\ => \state_reg[4]\,
      \Q_out_reg[3]_0\(2 downto 0) => \^index_of_neuron_that_fired_reg_reg[2]_0\(2 downto 0),
      \mem_ram_reg[0][0]\(1 downto 0) => \mem_ram_reg[0][0]\(1 downto 0),
      \mem_ram_reg[0][0]_0\ => neuron_ensemble_inst_n_23,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg5_reg[0]\(0) => G_memory_n_2,
      \slv_reg5_reg[1]\(0) => G_memory_n_1,
      \slv_reg5_reg[1]_0\(0) => G_memory_n_3
    );
\buffer\: entity work.whole_system_fowler_nordheim_anne_0_0_transmit_buffer_0
     port map (
      E(0) => E(0),
      Q(0) => st_p(0),
      SR(0) => SR(0),
      add_mem => add_mem,
      add_r_reg(0) => add_r_reg(0),
      \cnt_prop_reg[0]_0\ => \cnt_prop_reg[0]\,
      \mem_r_reg[0]\ => \mem_r_reg[0]\,
      \mem_r_reg[9]\(9 downto 0) => \mem_r_reg[9]\(9 downto 0),
      membrane(9 downto 0) => membrane(9 downto 0),
      \membrane_reg_reg[9]_0\(9 downto 0) => mem_p(9 downto 0),
      new_sample_reg_0 => new_sample_reg,
      \off_r_reg[1]\(1 downto 0) => \off_r_reg[1]\(1 downto 0),
      offset(1 downto 0) => offset(1 downto 0),
      \offset_reg_reg[1]_0\(1 downto 0) => idx_p(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      spike_reg_reg_0 => spike_reg_reg,
      spike_reg_reg_1 => spike_reg_reg_0,
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[0]_1\ => \state_reg[4]\,
      \state_reg[0]_2\ => \state_reg[0]_1\,
      \state_reg[1]_0\ => \state_reg[1]_0\,
      \state_reg[1]_1\ => \state_reg[1]_2\,
      \state_reg[2]_0\ => \state_reg[2]_0\,
      \state_reg[2]_1\ => \index_of_neuron_that_fired_reg_reg[2]_1\,
      storage_CE_advance => \^storage_ce_advance\
    );
incrementing_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \index_of_neuron_that_fired_reg_reg[2]_1\,
      D => add_r,
      Q => \^incrementing_reg\,
      R => \state_reg[4]\
    );
\index_of_neuron_that_fired_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \index_of_neuron_that_fired_reg_reg[2]_1\,
      D => D(0),
      Q => \^index_of_neuron_that_fired_reg_reg[2]_0\(0),
      R => \state_reg[4]\
    );
\index_of_neuron_that_fired_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \index_of_neuron_that_fired_reg_reg[2]_1\,
      D => D(1),
      Q => \^index_of_neuron_that_fired_reg_reg[2]_0\(1),
      R => \state_reg[4]\
    );
\index_of_neuron_that_fired_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \index_of_neuron_that_fired_reg_reg[2]_1\,
      D => D(2),
      Q => \^index_of_neuron_that_fired_reg_reg[2]_0\(2),
      R => \state_reg[4]\
    );
neuron_ensemble_inst: entity work.whole_system_fowler_nordheim_anne_0_0_neuron_ensemble
     port map (
      A(11 downto 0) => A(11 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CO(0) => CO(0),
      E(0) => G_memory_n_3,
      Q(1 downto 0) => Q(1 downto 0),
      \_inferred__2/i__carry\ => \^incrementing_reg\,
      flipping_CE => flipping_CE,
      \idx_p_reg[1]_0\(1 downto 0) => idx_p(1 downto 0),
      \mem_p_reg[9]_0\(9 downto 0) => mem_p(9 downto 0),
      \mem_ram_reg[0][0]\(0) => \u_store/mem_ram\,
      \mem_ram_reg[1][0]\(0) => G_memory_n_1,
      \mem_ram_reg[2][0]\(0) => G_memory_n_2,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg3_reg[14]\ => \slv_reg3_reg[14]\,
      \slv_reg5_reg[0]\ => \slv_reg5_reg[0]\,
      \slv_reg5_reg[1]\ => \slv_reg5_reg[1]\,
      \slv_reg5_reg[1]_0\ => \slv_reg5_reg[1]_0\,
      \slv_reg5_reg[1]_1\ => \slv_reg5_reg[1]_1\,
      \st_p_reg[0]_0\(0) => st_p(0),
      \state_ram[0][1]_i_2\(2 downto 0) => \^index_of_neuron_that_fired_reg_reg[2]_0\(2 downto 0),
      \state_ram_reg[0][0]\ => \state_ram_reg[0][0]\,
      \state_ram_reg[2][1]\(11 downto 0) => \state_ram_reg[2][1]\(11 downto 0),
      \state_ram_reg[3][0]\(1 downto 0) => \mem_ram_reg[0][0]\(1 downto 0),
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\(15 downto 0) => \state_reg[15]_0\(15 downto 0),
      \state_reg[1]\ => \state_reg[1]_1\,
      \state_reg[2]\ => neuron_ensemble_inst_n_23,
      \state_reg[4]\(4 downto 0) => \state_reg[4]_0\(4 downto 0),
      \state_reg[4]_0\ => \state_reg[4]\,
      storage_CE_advance => \^storage_ce_advance\,
      \x_reg[0]\ => \x_reg[0]\,
      x_reg_rep => \state_reg_n_0_[0]\,
      x_reg_rep_0 => \state_reg_n_0_[1]\,
      x_reg_rep_1 => \state_reg_n_0_[2]\,
      x_reg_rep_2 => x_reg_rep
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000CB"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg[4]\,
      I4 => \index_of_neuron_that_fired_reg_reg[2]_1\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B4"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg[4]\,
      I4 => \index_of_neuron_that_fired_reg_reg[2]_1\,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00A2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg[4]\,
      I4 => \index_of_neuron_that_fired_reg_reg[2]_1\,
      O => \state[2]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[2]_i_1__0_n_0\,
      Q => \state_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff__parameterized0\ is
  port (
    add_mem_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    flipping_CE_0 : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    spike_reg_reg : out STD_LOGIC;
    stage1_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[0]_1\ : out STD_LOGIC;
    \state_reg[1]_1\ : out STD_LOGIC;
    \state_reg[2]_1\ : out STD_LOGIC;
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \cnt_prop_reg[0]\ : out STD_LOGIC;
    \state_reg[1]_2\ : out STD_LOGIC;
    \index_of_neuron_that_fired_reg_reg[2]\ : out STD_LOGIC;
    spiked1 : out STD_LOGIC;
    \x_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \offset_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \membrane_reg_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_reg[4]\ : in STD_LOGIC;
    \state_reg[1]_3\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    spike_reg_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[15]_0\ : in STD_LOGIC;
    \state_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    incrementing_reg : in STD_LOGIC;
    \state_ram_reg[2][1]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \state_ram_reg[3][0]\ : in STD_LOGIC;
    \state_ram_reg[0][0]\ : in STD_LOGIC;
    \state_ram_reg[1][0]\ : in STD_LOGIC;
    \state_ram_reg[2][0]\ : in STD_LOGIC;
    \state_reg[2]_2\ : in STD_LOGIC;
    \Q_out_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \mem_ram_reg[0][0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \unit_r_reg[0]\ : in STD_LOGIC;
    \x_reg[0]\ : in STD_LOGIC;
    storage_CE_advance : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff__parameterized0\ : entity is "neuron_ensemble_with_memory_with_buff";
end \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff__parameterized0\;

architecture STRUCTURE of \whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff__parameterized0\ is
  signal G_memory_n_1 : STD_LOGIC;
  signal G_memory_n_2 : STD_LOGIC;
  signal G_memory_n_3 : STD_LOGIC;
  signal neuron_ensemble_inst_n_10 : STD_LOGIC;
  signal neuron_ensemble_inst_n_11 : STD_LOGIC;
  signal neuron_ensemble_inst_n_12 : STD_LOGIC;
  signal neuron_ensemble_inst_n_13 : STD_LOGIC;
  signal neuron_ensemble_inst_n_14 : STD_LOGIC;
  signal neuron_ensemble_inst_n_15 : STD_LOGIC;
  signal neuron_ensemble_inst_n_16 : STD_LOGIC;
  signal neuron_ensemble_inst_n_17 : STD_LOGIC;
  signal neuron_ensemble_inst_n_18 : STD_LOGIC;
  signal neuron_ensemble_inst_n_19 : STD_LOGIC;
  signal neuron_ensemble_inst_n_31 : STD_LOGIC;
  signal neuron_ensemble_inst_n_33 : STD_LOGIC;
  signal neuron_ensemble_inst_n_34 : STD_LOGIC;
  signal neuron_ensemble_inst_n_35 : STD_LOGIC;
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_1\ : STD_LOGIC;
  signal \^state_reg[1]_1\ : STD_LOGIC;
  signal \^state_reg[2]_1\ : STD_LOGIC;
  signal \u_store/mem_ram\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[1]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair64";
begin
  \state_reg[0]_1\ <= \^state_reg[0]_1\;
  \state_reg[1]_1\ <= \^state_reg[1]_1\;
  \state_reg[2]_1\ <= \^state_reg[2]_1\;
G_memory: entity work.\whole_system_fowler_nordheim_anne_0_0_distributed_graph_memory__parameterized0\
     port map (
      E(0) => \u_store/mem_ram\,
      Q(0) => Q(0),
      \Q_out_reg[0]_0\ => \^state_reg[2]_1\,
      \Q_out_reg[0]_1\ => \^state_reg[1]_1\,
      \Q_out_reg[0]_2\ => \state_reg[4]\,
      \Q_out_reg[3]_0\(2 downto 0) => \Q_out_reg[3]\(2 downto 0),
      \mem_ram_reg[0][0]\(1 downto 0) => \mem_ram_reg[0][0]\(1 downto 0),
      \mem_ram_reg[0][0]_0\ => neuron_ensemble_inst_n_31,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg5_reg[0]\(0) => G_memory_n_2,
      \slv_reg5_reg[1]\(0) => G_memory_n_1,
      \slv_reg5_reg[1]_0\(0) => G_memory_n_3
    );
\buffer\: entity work.whole_system_fowler_nordheim_anne_0_0_transmit_buffer
     port map (
      E(0) => E(0),
      Q(0) => neuron_ensemble_inst_n_35,
      SR(0) => SR(0),
      add_mem_reg_reg_0(0) => add_mem_reg_reg(0),
      \cnt_prop_reg[0]_0\ => \cnt_prop_reg[0]\,
      \membrane_reg_reg[9]_0\(9 downto 0) => \membrane_reg_reg[9]\(9 downto 0),
      \membrane_reg_reg[9]_1\(9) => neuron_ensemble_inst_n_10,
      \membrane_reg_reg[9]_1\(8) => neuron_ensemble_inst_n_11,
      \membrane_reg_reg[9]_1\(7) => neuron_ensemble_inst_n_12,
      \membrane_reg_reg[9]_1\(6) => neuron_ensemble_inst_n_13,
      \membrane_reg_reg[9]_1\(5) => neuron_ensemble_inst_n_14,
      \membrane_reg_reg[9]_1\(4) => neuron_ensemble_inst_n_15,
      \membrane_reg_reg[9]_1\(3) => neuron_ensemble_inst_n_16,
      \membrane_reg_reg[9]_1\(2) => neuron_ensemble_inst_n_17,
      \membrane_reg_reg[9]_1\(1) => neuron_ensemble_inst_n_18,
      \membrane_reg_reg[9]_1\(0) => neuron_ensemble_inst_n_19,
      \offset_reg_reg[1]_0\(1 downto 0) => \offset_reg_reg[1]\(1 downto 0),
      \offset_reg_reg[1]_1\(1) => neuron_ensemble_inst_n_33,
      \offset_reg_reg[1]_1\(0) => neuron_ensemble_inst_n_34,
      s00_axi_aclk => s00_axi_aclk,
      spike_reg_reg_0 => spike_reg_reg,
      spike_reg_reg_1 => spike_reg_reg_0,
      spiked1 => spiked1,
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[0]_1\ => \state_reg[4]\,
      \state_reg[0]_2\ => \state_reg[0]_2\,
      \state_reg[1]_0\ => \state_reg[1]_0\,
      \state_reg[1]_1\ => \state_reg[1]_3\,
      \state_reg[2]_0\ => \state_reg[2]_0\,
      \state_reg[2]_1\ => \state_reg[2]_2\,
      \unit_r_reg[0]\ => \unit_r_reg[0]\
    );
neuron_ensemble_inst: entity work.\whole_system_fowler_nordheim_anne_0_0_neuron_ensemble__parameterized0\
     port map (
      A(11 downto 0) => A(11 downto 0),
      ADDRBWRADDR(8 downto 0) => ADDRBWRADDR(8 downto 0),
      B(17 downto 0) => B(17 downto 0),
      E(0) => \x_reg[7]\(0),
      Q(0) => Q(0),
      flipping_CE_0 => flipping_CE_0,
      \idx_p_reg[1]_0\(1) => neuron_ensemble_inst_n_33,
      \idx_p_reg[1]_0\(0) => neuron_ensemble_inst_n_34,
      incrementing_reg => incrementing_reg,
      \index_of_neuron_that_fired_reg_reg[2]\ => \index_of_neuron_that_fired_reg_reg[2]\,
      \mem_p_reg[9]_0\(9) => neuron_ensemble_inst_n_10,
      \mem_p_reg[9]_0\(8) => neuron_ensemble_inst_n_11,
      \mem_p_reg[9]_0\(7) => neuron_ensemble_inst_n_12,
      \mem_p_reg[9]_0\(6) => neuron_ensemble_inst_n_13,
      \mem_p_reg[9]_0\(5) => neuron_ensemble_inst_n_14,
      \mem_p_reg[9]_0\(4) => neuron_ensemble_inst_n_15,
      \mem_p_reg[9]_0\(3) => neuron_ensemble_inst_n_16,
      \mem_p_reg[9]_0\(2) => neuron_ensemble_inst_n_17,
      \mem_p_reg[9]_0\(1) => neuron_ensemble_inst_n_18,
      \mem_p_reg[9]_0\(0) => neuron_ensemble_inst_n_19,
      \mem_ram_reg[0][0]\(0) => \u_store/mem_ram\,
      \mem_ram_reg[1][0]\(0) => G_memory_n_1,
      \mem_ram_reg[2][0]\(0) => G_memory_n_2,
      \mem_ram_reg[3][0]\(0) => G_memory_n_3,
      s00_axi_aclk => s00_axi_aclk,
      \st_p_reg[0]_0\(0) => neuron_ensemble_inst_n_35,
      stage1_r_reg(0) => stage1_r_reg(0),
      \state_ram[3][1]_i_2__0\(2 downto 0) => \Q_out_reg[3]\(2 downto 0),
      \state_ram_reg[0][0]\ => \state_ram_reg[0][0]\,
      \state_ram_reg[1][0]\ => \state_ram_reg[1][0]\,
      \state_ram_reg[2][0]\ => \state_ram_reg[2][0]\,
      \state_ram_reg[2][1]\(11 downto 0) => \state_ram_reg[2][1]\(11 downto 0),
      \state_ram_reg[3][0]\ => \state_ram_reg[3][0]\,
      \state_reg[15]\(7 downto 0) => \state_reg[15]\(7 downto 0),
      \state_reg[15]_0\ => \state_reg[15]_0\,
      \state_reg[15]_1\(15 downto 0) => \state_reg[15]_1\(15 downto 0),
      \state_reg[1]\ => \state_reg[1]_2\,
      \state_reg[2]\ => neuron_ensemble_inst_n_31,
      \state_reg[4]\(4 downto 0) => \state_reg[4]_0\(4 downto 0),
      \state_reg[4]_0\ => \state_reg[4]\,
      storage_CE_advance => storage_CE_advance,
      \x_reg[0]\ => \x_reg[0]\,
      x_reg_rep => \^state_reg[0]_1\,
      x_reg_rep_0 => \^state_reg[1]_1\,
      x_reg_rep_1 => \^state_reg[2]_1\
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000CB"
    )
        port map (
      I0 => \^state_reg[2]_1\,
      I1 => \^state_reg[0]_1\,
      I2 => \^state_reg[1]_1\,
      I3 => \state_reg[4]\,
      I4 => \state_reg[2]_2\,
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B4"
    )
        port map (
      I0 => \^state_reg[2]_1\,
      I1 => \^state_reg[0]_1\,
      I2 => \^state_reg[1]_1\,
      I3 => \state_reg[4]\,
      I4 => \state_reg[2]_2\,
      O => \state[1]_i_1__0_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00A2"
    )
        port map (
      I0 => \^state_reg[2]_1\,
      I1 => \^state_reg[0]_1\,
      I2 => \^state_reg[1]_1\,
      I3 => \state_reg[4]\,
      I4 => \state_reg[2]_2\,
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \^state_reg[0]_1\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => \^state_reg[1]_1\,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => \^state_reg[2]_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_neuroSA_machine is
  port (
    flipping_CE : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    flipping_CE_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    spike_reg_reg : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]_1\ : out STD_LOGIC;
    spike_reg_reg_0 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    stage1_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_2\ : out STD_LOGIC;
    \state_reg[1]_1\ : out STD_LOGIC;
    \state_reg[2]_1\ : out STD_LOGIC;
    \cnt_prop_reg[0]\ : out STD_LOGIC;
    \cnt_prop_reg[0]_0\ : out STD_LOGIC;
    \state_reg[1]_2\ : out STD_LOGIC;
    \state_reg[1]_3\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \x_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    new_sample_reg : in STD_LOGIC;
    \state_reg[1]_4\ : in STD_LOGIC;
    \state_reg[0]_3\ : in STD_LOGIC;
    spike_reg_reg_1 : in STD_LOGIC;
    \state_reg[1]_5\ : in STD_LOGIC;
    \state_reg[0]_4\ : in STD_LOGIC;
    spike_reg_reg_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \state_ram_reg[2][1]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \mem_ram_reg[0][0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    x_reg_rep : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_neuroSA_machine : entity is "neuroSA_machine";
end whole_system_fowler_nordheim_anne_0_0_neuroSA_machine;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_neuroSA_machine is
  signal \^fsm_onehot_state_reg[2]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_mem : STD_LOGIC;
  signal add_mems : STD_LOGIC_VECTOR ( 1 to 1 );
  signal add_r : STD_LOGIC;
  signal incrementing_reg : STD_LOGIC;
  signal index_of_neuron_that_fired : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal index_of_neuron_that_fired_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal membrane : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal offset : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal offsets : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \p_0_out_inferred__0/stage1_r_reg_i_10_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_11_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_12_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_13_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_14_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_15_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_16_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_17_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_18_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_19_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_20_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_21_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_22_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_23_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_24_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_25_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_26_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_27_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_28_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_29_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_2_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_30_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_31_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_32_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_33_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_34_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_35_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_36_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_37_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_38_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_39_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_3_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_40_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_41_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_42_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_43_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_44_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_45_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_46_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_47_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_48_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_49_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_4_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_50_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_51_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_52_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_53_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_54_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_55_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_56_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_57_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_5_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_6_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_7_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_8_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/stage1_r_reg_i_9_n_0\ : STD_LOGIC;
  signal scheduler_instance_n_23 : STD_LOGIC;
  signal scheduler_instance_n_4 : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \selector/spiked1\ : STD_LOGIC;
  signal \^spike_reg_reg\ : STD_LOGIC;
  signal \^spike_reg_reg_0\ : STD_LOGIC;
  signal stage1_r_reg_i_10_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_11_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_12_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_13_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_14_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_15_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_16_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_17_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_18_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_19_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_20_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_21_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_22_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_23_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_24_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_25_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_26_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_27_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_28_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_29_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_2_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_30_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_31_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_32_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_33_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_34_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_35_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_36_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_37_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_38_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_39_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_3_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_40_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_41_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_42_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_43_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_44_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_45_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_46_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_47_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_48_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_49_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_4_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_50_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_51_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_52_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_53_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_54_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_55_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_56_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_57_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_5_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_6_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_7_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_8_n_0 : STD_LOGIC;
  signal stage1_r_reg_i_9_n_0 : STD_LOGIC;
  signal storage_CE_advance : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_23\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_24\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_25\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_26\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_40\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_41\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_42\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_43\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_44\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_45\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_46\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_47\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_48\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_49\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_50\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_51\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_52\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_53\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_54\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_55\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_56\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_57\ : STD_LOGIC;
  signal \unit_gen[0].unit_inst_n_9\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_10\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_11\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_12\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_13\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_14\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_15\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_19\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_20\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_21\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_22\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_23\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_24\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_25\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_26\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_27\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_30\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_35\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_36\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_37\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_38\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_39\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_40\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_41\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_42\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_43\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_44\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_8\ : STD_LOGIC;
  signal \unit_gen[1].unit_inst_n_9\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \p_0_out_inferred__0/stage1_r_reg_i_18\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \p_0_out_inferred__0/stage1_r_reg_i_23\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of stage1_r_reg_i_18 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of stage1_r_reg_i_23 : label is "soft_lutpair65";
begin
  \FSM_onehot_state_reg[2]\ <= \^fsm_onehot_state_reg[2]\;
  SR(0) <= \^sr\(0);
  spike_reg_reg <= \^spike_reg_reg\;
  spike_reg_reg_0 <= \^spike_reg_reg_0\;
\p_0_out_inferred__0/stage1_r_reg_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_29_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_30_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_10_n_0\,
      S => \unit_gen[1].unit_inst_n_8\
    );
\p_0_out_inferred__0/stage1_r_reg_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_31_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_32_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_11_n_0\,
      S => \unit_gen[1].unit_inst_n_8\
    );
\p_0_out_inferred__0/stage1_r_reg_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_33_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_34_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_12_n_0\,
      S => \unit_gen[1].unit_inst_n_8\
    );
\p_0_out_inferred__0/stage1_r_reg_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_35_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_36_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_13_n_0\,
      S => \unit_gen[1].unit_inst_n_8\
    );
\p_0_out_inferred__0/stage1_r_reg_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001555FFFFFFFF"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_11\,
      I1 => \unit_gen[1].unit_inst_n_15\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_10\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_14_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_11\,
      I1 => \unit_gen[1].unit_inst_n_15\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_10\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_15_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEB"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_11\,
      I1 => \unit_gen[1].unit_inst_n_13\,
      I2 => \unit_gen[1].unit_inst_n_14\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_10\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_16_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAEA0515"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_12\,
      I1 => \unit_gen[1].unit_inst_n_15\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_11\,
      I5 => \unit_gen[1].unit_inst_n_10\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_17_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_12\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_11\,
      I4 => \unit_gen[1].unit_inst_n_9\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_18_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8989D9D9D8C8C"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_14\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_19_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_9\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_14_n_0\,
      I2 => \unit_gen[1].unit_inst_n_8\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_2_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333737FCCCCCCC"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_13\,
      I1 => \unit_gen[1].unit_inst_n_9\,
      I2 => \unit_gen[1].unit_inst_n_11\,
      I3 => \p_0_out_inferred__0/stage1_r_reg_i_37_n_0\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_10\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_20_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557766666"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_12\,
      I2 => \unit_gen[1].unit_inst_n_15\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_11\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_21_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5237122623262377"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_12\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_14\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_22_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_11\,
      I1 => \unit_gen[1].unit_inst_n_12\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_10\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_23_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9991999555555555"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_12\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_11\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_24_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC44C44446336733"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_14\,
      I3 => \unit_gen[1].unit_inst_n_13\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_12\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_25_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F20EB44CF35E340"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_14\,
      I3 => \unit_gen[1].unit_inst_n_12\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_15\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_26_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_38_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_39_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_27_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_40_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_41_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_28_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_42_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_43_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_29_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_15_n_0\,
      I1 => \unit_gen[1].unit_inst_n_9\,
      I2 => \p_0_out_inferred__0/stage1_r_reg_i_14_n_0\,
      I3 => \unit_gen[1].unit_inst_n_8\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_3_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_44_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_45_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_30_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_46_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_47_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_31_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_48_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_49_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_32_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_50_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_51_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_33_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_52_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_53_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_34_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_54_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_55_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_35_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_56_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_57_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_36_n_0\,
      S => \unit_gen[1].unit_inst_n_9\
    );
\p_0_out_inferred__0/stage1_r_reg_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_14\,
      I1 => \unit_gen[1].unit_inst_n_13\,
      I2 => \unit_gen[1].unit_inst_n_15\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_37_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CD932E276BF5C15"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_15\,
      I3 => \unit_gen[1].unit_inst_n_12\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_14\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_38_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"585A8F8F5A9B8F87"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_14\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_39_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_16_n_0\,
      I1 => \unit_gen[1].unit_inst_n_9\,
      I2 => \p_0_out_inferred__0/stage1_r_reg_i_14_n_0\,
      I3 => \unit_gen[1].unit_inst_n_8\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_4_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FB8F0F0F0F0"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_15\,
      I2 => \unit_gen[1].unit_inst_n_11\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_12\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_40_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3B33330000C0C"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_15\,
      I1 => \unit_gen[1].unit_inst_n_10\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_11\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_41_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18A3D17B4DB71DF1"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_15\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_42_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"282222E3D7D7D4DC"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_14\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_43_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00B7FAC8"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_15\,
      I2 => \unit_gen[1].unit_inst_n_11\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_44_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5855A5A575E5AAAA"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_15\,
      I2 => \unit_gen[1].unit_inst_n_11\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_45_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A40FB0822D8618F"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_14\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_46_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75F51EB40A23CB0B"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_13\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_14\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_47_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF667E00019101FF"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_48_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4633CCC43BBC7333"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_15\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_49_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_17_n_0\,
      I1 => \unit_gen[1].unit_inst_n_9\,
      I2 => \p_0_out_inferred__0/stage1_r_reg_i_14_n_0\,
      I3 => \unit_gen[1].unit_inst_n_8\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_5_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A31D5C845505FAAF"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_14\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_50_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"946B36C13E61D72A"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_14\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_51_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6667810199907EEE"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_13\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_14\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_52_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"85287B7F787F0680"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_12\,
      I5 => \unit_gen[1].unit_inst_n_14\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_53_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D0271E88B37168C"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_13\,
      I5 => \unit_gen[1].unit_inst_n_14\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_54_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E48A4E83A93BA01"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_13\,
      I3 => \unit_gen[1].unit_inst_n_14\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_12\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_55_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1188EE771991676E"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_14\,
      I3 => \unit_gen[1].unit_inst_n_12\,
      I4 => \unit_gen[1].unit_inst_n_15\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_56_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CA0D70823D60977"
    )
        port map (
      I0 => \unit_gen[1].unit_inst_n_10\,
      I1 => \unit_gen[1].unit_inst_n_11\,
      I2 => \unit_gen[1].unit_inst_n_12\,
      I3 => \unit_gen[1].unit_inst_n_15\,
      I4 => \unit_gen[1].unit_inst_n_14\,
      I5 => \unit_gen[1].unit_inst_n_13\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_57_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_18_n_0\,
      I1 => \unit_gen[1].unit_inst_n_8\,
      I2 => \p_0_out_inferred__0/stage1_r_reg_i_14_n_0\,
      I3 => \unit_gen[1].unit_inst_n_9\,
      I4 => \p_0_out_inferred__0/stage1_r_reg_i_19_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_6_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_20_n_0\,
      I1 => \unit_gen[1].unit_inst_n_8\,
      I2 => \p_0_out_inferred__0/stage1_r_reg_i_21_n_0\,
      I3 => \unit_gen[1].unit_inst_n_9\,
      I4 => \p_0_out_inferred__0/stage1_r_reg_i_22_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_7_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_23_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_24_n_0\,
      I2 => \unit_gen[1].unit_inst_n_8\,
      I3 => \p_0_out_inferred__0/stage1_r_reg_i_25_n_0\,
      I4 => \unit_gen[1].unit_inst_n_9\,
      I5 => \p_0_out_inferred__0/stage1_r_reg_i_26_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_8_n_0\
    );
\p_0_out_inferred__0/stage1_r_reg_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \p_0_out_inferred__0/stage1_r_reg_i_27_n_0\,
      I1 => \p_0_out_inferred__0/stage1_r_reg_i_28_n_0\,
      O => \p_0_out_inferred__0/stage1_r_reg_i_9_n_0\,
      S => \unit_gen[1].unit_inst_n_8\
    );
scheduler_instance: entity work.whole_system_fowler_nordheim_anne_0_0_scheduler_2
     port map (
      D(2 downto 0) => index_of_neuron_that_fired(2 downto 0),
      \FSM_onehot_state_reg[0]_0\ => \^sr\(0),
      \FSM_onehot_state_reg[2]_0\ => \^fsm_onehot_state_reg[2]\,
      SR(0) => scheduler_instance_n_4,
      add_mem => add_mem,
      add_r => add_r,
      \cuts_best_reg[15]_0\(15 downto 0) => D(15 downto 0),
      membrane(9 downto 0) => membrane(9 downto 0),
      \off_r_reg[1]_0\ => \^spike_reg_reg_0\,
      \off_r_reg[1]_1\ => \^spike_reg_reg\,
      offset(1 downto 0) => offset(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      spiked1 => \selector/spiked1\,
      \step_cnt_reg[10]_0\ => scheduler_instance_n_23
    );
stage1_r_reg_i_10: unisim.vcomponents.MUXF8
     port map (
      I0 => stage1_r_reg_i_29_n_0,
      I1 => stage1_r_reg_i_30_n_0,
      O => stage1_r_reg_i_10_n_0,
      S => sel(7)
    );
stage1_r_reg_i_11: unisim.vcomponents.MUXF8
     port map (
      I0 => stage1_r_reg_i_31_n_0,
      I1 => stage1_r_reg_i_32_n_0,
      O => stage1_r_reg_i_11_n_0,
      S => sel(7)
    );
stage1_r_reg_i_12: unisim.vcomponents.MUXF8
     port map (
      I0 => stage1_r_reg_i_33_n_0,
      I1 => stage1_r_reg_i_34_n_0,
      O => stage1_r_reg_i_12_n_0,
      S => sel(7)
    );
stage1_r_reg_i_13: unisim.vcomponents.MUXF8
     port map (
      I0 => stage1_r_reg_i_35_n_0,
      I1 => stage1_r_reg_i_36_n_0,
      O => stage1_r_reg_i_13_n_0,
      S => sel(7)
    );
stage1_r_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001555FFFFFFFF"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(5),
      O => stage1_r_reg_i_14_n_0
    );
stage1_r_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel(4),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(5),
      O => stage1_r_reg_i_15_n_0
    );
stage1_r_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEB"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(3),
      I5 => sel(5),
      O => stage1_r_reg_i_16_n_0
    );
stage1_r_reg_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAEA0515"
    )
        port map (
      I0 => sel(3),
      I1 => sel(0),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(4),
      I5 => sel(5),
      O => stage1_r_reg_i_17_n_0
    );
stage1_r_reg_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => sel(5),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(4),
      I4 => sel(6),
      O => stage1_r_reg_i_18_n_0
    );
stage1_r_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8989D9D9D8C8C"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => stage1_r_reg_i_19_n_0
    );
stage1_r_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sel(6),
      I1 => stage1_r_reg_i_14_n_0,
      I2 => sel(7),
      O => stage1_r_reg_i_2_n_0
    );
stage1_r_reg_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333737FCCCCCCC"
    )
        port map (
      I0 => sel(2),
      I1 => sel(6),
      I2 => sel(4),
      I3 => stage1_r_reg_i_37_n_0,
      I4 => sel(3),
      I5 => sel(5),
      O => stage1_r_reg_i_20_n_0
    );
stage1_r_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557766666"
    )
        port map (
      I0 => sel(5),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(4),
      O => stage1_r_reg_i_21_n_0
    );
stage1_r_reg_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5237122623262377"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(0),
      I5 => sel(1),
      O => stage1_r_reg_i_22_n_0
    );
stage1_r_reg_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(5),
      O => stage1_r_reg_i_23_n_0
    );
stage1_r_reg_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9991999555555555"
    )
        port map (
      I0 => sel(5),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(0),
      I5 => sel(4),
      O => stage1_r_reg_i_24_n_0
    );
stage1_r_reg_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC44C44446336733"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(0),
      I5 => sel(3),
      O => stage1_r_reg_i_25_n_0
    );
stage1_r_reg_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F20EB44CF35E340"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(1),
      I3 => sel(3),
      I4 => sel(2),
      I5 => sel(0),
      O => stage1_r_reg_i_26_n_0
    );
stage1_r_reg_i_27: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_38_n_0,
      I1 => stage1_r_reg_i_39_n_0,
      O => stage1_r_reg_i_27_n_0,
      S => sel(6)
    );
stage1_r_reg_i_28: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_40_n_0,
      I1 => stage1_r_reg_i_41_n_0,
      O => stage1_r_reg_i_28_n_0,
      S => sel(6)
    );
stage1_r_reg_i_29: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_42_n_0,
      I1 => stage1_r_reg_i_43_n_0,
      O => stage1_r_reg_i_29_n_0,
      S => sel(6)
    );
stage1_r_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => stage1_r_reg_i_15_n_0,
      I1 => sel(6),
      I2 => stage1_r_reg_i_14_n_0,
      I3 => sel(7),
      O => stage1_r_reg_i_3_n_0
    );
stage1_r_reg_i_30: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_44_n_0,
      I1 => stage1_r_reg_i_45_n_0,
      O => stage1_r_reg_i_30_n_0,
      S => sel(6)
    );
stage1_r_reg_i_31: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_46_n_0,
      I1 => stage1_r_reg_i_47_n_0,
      O => stage1_r_reg_i_31_n_0,
      S => sel(6)
    );
stage1_r_reg_i_32: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_48_n_0,
      I1 => stage1_r_reg_i_49_n_0,
      O => stage1_r_reg_i_32_n_0,
      S => sel(6)
    );
stage1_r_reg_i_33: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_50_n_0,
      I1 => stage1_r_reg_i_51_n_0,
      O => stage1_r_reg_i_33_n_0,
      S => sel(6)
    );
stage1_r_reg_i_34: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_52_n_0,
      I1 => stage1_r_reg_i_53_n_0,
      O => stage1_r_reg_i_34_n_0,
      S => sel(6)
    );
stage1_r_reg_i_35: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_54_n_0,
      I1 => stage1_r_reg_i_55_n_0,
      O => stage1_r_reg_i_35_n_0,
      S => sel(6)
    );
stage1_r_reg_i_36: unisim.vcomponents.MUXF7
     port map (
      I0 => stage1_r_reg_i_56_n_0,
      I1 => stage1_r_reg_i_57_n_0,
      O => stage1_r_reg_i_36_n_0,
      S => sel(6)
    );
stage1_r_reg_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel(1),
      I1 => sel(2),
      I2 => sel(0),
      O => stage1_r_reg_i_37_n_0
    );
stage1_r_reg_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CD932E276BF5C15"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(0),
      I3 => sel(3),
      I4 => sel(2),
      I5 => sel(1),
      O => stage1_r_reg_i_38_n_0
    );
stage1_r_reg_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"585A8F8F5A9B8F87"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(1),
      O => stage1_r_reg_i_39_n_0
    );
stage1_r_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => stage1_r_reg_i_16_n_0,
      I1 => sel(6),
      I2 => stage1_r_reg_i_14_n_0,
      I3 => sel(7),
      O => stage1_r_reg_i_4_n_0
    );
stage1_r_reg_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FB8F0F0F0F0"
    )
        port map (
      I0 => sel(5),
      I1 => sel(0),
      I2 => sel(4),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(3),
      O => stage1_r_reg_i_40_n_0
    );
stage1_r_reg_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3B33330000C0C"
    )
        port map (
      I0 => sel(0),
      I1 => sel(5),
      I2 => sel(3),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(4),
      O => stage1_r_reg_i_41_n_0
    );
stage1_r_reg_i_42: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18A3D17B4DB71DF1"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(1),
      I4 => sel(2),
      I5 => sel(0),
      O => stage1_r_reg_i_42_n_0
    );
stage1_r_reg_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"282222E3D7D7D4DC"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => stage1_r_reg_i_43_n_0
    );
stage1_r_reg_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00B7FAC8"
    )
        port map (
      I0 => sel(5),
      I1 => sel(0),
      I2 => sel(4),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(2),
      O => stage1_r_reg_i_44_n_0
    );
stage1_r_reg_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5855A5A575E5AAAA"
    )
        port map (
      I0 => sel(5),
      I1 => sel(0),
      I2 => sel(4),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(2),
      O => stage1_r_reg_i_45_n_0
    );
stage1_r_reg_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A40FB0822D8618F"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => stage1_r_reg_i_46_n_0
    );
stage1_r_reg_i_47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75F51EB40A23CB0B"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(2),
      I4 => sel(0),
      I5 => sel(1),
      O => stage1_r_reg_i_47_n_0
    );
stage1_r_reg_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF667E00019101FF"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(1),
      I4 => sel(0),
      I5 => sel(2),
      O => stage1_r_reg_i_48_n_0
    );
stage1_r_reg_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4633CCC43BBC7333"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(3),
      I5 => sel(2),
      O => stage1_r_reg_i_49_n_0
    );
stage1_r_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => stage1_r_reg_i_17_n_0,
      I1 => sel(6),
      I2 => stage1_r_reg_i_14_n_0,
      I3 => sel(7),
      O => stage1_r_reg_i_5_n_0
    );
stage1_r_reg_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A31D5C845505FAAF"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => stage1_r_reg_i_50_n_0
    );
stage1_r_reg_i_51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"946B36C13E61D72A"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => stage1_r_reg_i_51_n_0
    );
stage1_r_reg_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6667810199907EEE"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(2),
      I4 => sel(0),
      I5 => sel(1),
      O => stage1_r_reg_i_52_n_0
    );
stage1_r_reg_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"85287B7F787F0680"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(3),
      I5 => sel(1),
      O => stage1_r_reg_i_53_n_0
    );
stage1_r_reg_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D0271E88B37168C"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(2),
      I5 => sel(1),
      O => stage1_r_reg_i_54_n_0
    );
stage1_r_reg_i_55: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E48A4E83A93BA01"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(0),
      I5 => sel(3),
      O => stage1_r_reg_i_55_n_0
    );
stage1_r_reg_i_56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1188EE771991676E"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(1),
      I3 => sel(3),
      I4 => sel(0),
      I5 => sel(2),
      O => stage1_r_reg_i_56_n_0
    );
stage1_r_reg_i_57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CA0D70823D60977"
    )
        port map (
      I0 => sel(5),
      I1 => sel(4),
      I2 => sel(3),
      I3 => sel(0),
      I4 => sel(1),
      I5 => sel(2),
      O => stage1_r_reg_i_57_n_0
    );
stage1_r_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => stage1_r_reg_i_18_n_0,
      I1 => sel(7),
      I2 => stage1_r_reg_i_14_n_0,
      I3 => sel(6),
      I4 => stage1_r_reg_i_19_n_0,
      O => stage1_r_reg_i_6_n_0
    );
stage1_r_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => stage1_r_reg_i_20_n_0,
      I1 => sel(7),
      I2 => stage1_r_reg_i_21_n_0,
      I3 => sel(6),
      I4 => stage1_r_reg_i_22_n_0,
      O => stage1_r_reg_i_7_n_0
    );
stage1_r_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stage1_r_reg_i_23_n_0,
      I1 => stage1_r_reg_i_24_n_0,
      I2 => sel(7),
      I3 => stage1_r_reg_i_25_n_0,
      I4 => sel(6),
      I5 => stage1_r_reg_i_26_n_0,
      O => stage1_r_reg_i_8_n_0
    );
stage1_r_reg_i_9: unisim.vcomponents.MUXF8
     port map (
      I0 => stage1_r_reg_i_27_n_0,
      I1 => stage1_r_reg_i_28_n_0,
      O => stage1_r_reg_i_9_n_0,
      S => sel(7)
    );
\unit_gen[0].unit_inst\: entity work.whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff
     port map (
      A(11) => stage1_r_reg_i_2_n_0,
      A(10) => stage1_r_reg_i_3_n_0,
      A(9) => stage1_r_reg_i_4_n_0,
      A(8) => stage1_r_reg_i_5_n_0,
      A(7) => stage1_r_reg_i_6_n_0,
      A(6) => stage1_r_reg_i_7_n_0,
      A(5) => stage1_r_reg_i_8_n_0,
      A(4) => stage1_r_reg_i_9_n_0,
      A(3) => stage1_r_reg_i_10_n_0,
      A(2) => stage1_r_reg_i_11_n_0,
      A(1) => stage1_r_reg_i_12_n_0,
      A(0) => stage1_r_reg_i_13_n_0,
      ADDRBWRADDR(8) => \unit_gen[1].unit_inst_n_19\,
      ADDRBWRADDR(7) => \unit_gen[1].unit_inst_n_20\,
      ADDRBWRADDR(6) => \unit_gen[1].unit_inst_n_21\,
      ADDRBWRADDR(5) => \unit_gen[1].unit_inst_n_22\,
      ADDRBWRADDR(4) => \unit_gen[1].unit_inst_n_23\,
      ADDRBWRADDR(3) => \unit_gen[1].unit_inst_n_24\,
      ADDRBWRADDR(2) => \unit_gen[1].unit_inst_n_25\,
      ADDRBWRADDR(1) => \unit_gen[1].unit_inst_n_26\,
      ADDRBWRADDR(0) => \unit_gen[1].unit_inst_n_27\,
      B(17) => \unit_gen[0].unit_inst_n_40\,
      B(16) => \unit_gen[0].unit_inst_n_41\,
      B(15) => \unit_gen[0].unit_inst_n_42\,
      B(14) => \unit_gen[0].unit_inst_n_43\,
      B(13) => \unit_gen[0].unit_inst_n_44\,
      B(12) => \unit_gen[0].unit_inst_n_45\,
      B(11) => \unit_gen[0].unit_inst_n_46\,
      B(10) => \unit_gen[0].unit_inst_n_47\,
      B(9) => \unit_gen[0].unit_inst_n_48\,
      B(8) => \unit_gen[0].unit_inst_n_49\,
      B(7) => \unit_gen[0].unit_inst_n_50\,
      B(6) => \unit_gen[0].unit_inst_n_51\,
      B(5) => \unit_gen[0].unit_inst_n_52\,
      B(4) => \unit_gen[0].unit_inst_n_53\,
      B(3) => \unit_gen[0].unit_inst_n_54\,
      B(2) => \unit_gen[0].unit_inst_n_55\,
      B(1) => \unit_gen[0].unit_inst_n_56\,
      B(0) => \unit_gen[0].unit_inst_n_57\,
      CO(0) => CO(0),
      D(2 downto 0) => index_of_neuron_that_fired(2 downto 0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => scheduler_instance_n_4,
      add_mem => add_mem,
      add_r => add_r,
      add_r_reg(0) => add_mems(1),
      \cnt_prop_reg[0]\ => \cnt_prop_reg[0]\,
      flipping_CE => flipping_CE,
      incrementing_reg => incrementing_reg,
      \index_of_neuron_that_fired_reg_reg[2]_0\(2 downto 0) => index_of_neuron_that_fired_reg(2 downto 0),
      \index_of_neuron_that_fired_reg_reg[2]_1\ => \^fsm_onehot_state_reg[2]\,
      \mem_r_reg[0]\ => \^spike_reg_reg_0\,
      \mem_r_reg[9]\(9) => \unit_gen[1].unit_inst_n_35\,
      \mem_r_reg[9]\(8) => \unit_gen[1].unit_inst_n_36\,
      \mem_r_reg[9]\(7) => \unit_gen[1].unit_inst_n_37\,
      \mem_r_reg[9]\(6) => \unit_gen[1].unit_inst_n_38\,
      \mem_r_reg[9]\(5) => \unit_gen[1].unit_inst_n_39\,
      \mem_r_reg[9]\(4) => \unit_gen[1].unit_inst_n_40\,
      \mem_r_reg[9]\(3) => \unit_gen[1].unit_inst_n_41\,
      \mem_r_reg[9]\(2) => \unit_gen[1].unit_inst_n_42\,
      \mem_r_reg[9]\(1) => \unit_gen[1].unit_inst_n_43\,
      \mem_r_reg[9]\(0) => \unit_gen[1].unit_inst_n_44\,
      \mem_ram_reg[0][0]\(1 downto 0) => \mem_ram_reg[0][0]\(1 downto 0),
      membrane(9 downto 0) => membrane(9 downto 0),
      new_sample_reg => new_sample_reg,
      \off_r_reg[1]\(1 downto 0) => offsets(3 downto 2),
      offset(1 downto 0) => offset(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg3_reg[14]\ => \unit_gen[0].unit_inst_n_9\,
      \slv_reg5_reg[0]\ => \unit_gen[0].unit_inst_n_25\,
      \slv_reg5_reg[1]\ => \unit_gen[0].unit_inst_n_23\,
      \slv_reg5_reg[1]_0\ => \unit_gen[0].unit_inst_n_24\,
      \slv_reg5_reg[1]_1\ => \unit_gen[0].unit_inst_n_26\,
      spike_reg_reg => \^spike_reg_reg\,
      spike_reg_reg_0 => spike_reg_reg_1,
      \state_ram_reg[0][0]\ => \unit_gen[1].unit_inst_n_30\,
      \state_ram_reg[2][1]\(11 downto 0) => \state_ram_reg[2][1]\(11 downto 0),
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[0]_1\ => \state_reg[0]_3\,
      \state_reg[15]\(7 downto 0) => sel(7 downto 0),
      \state_reg[15]_0\(15 downto 0) => \state_reg[15]\(15 downto 0),
      \state_reg[1]_0\ => \state_reg[1]\,
      \state_reg[1]_1\ => \state_reg[1]_2\,
      \state_reg[1]_2\ => \state_reg[1]_4\,
      \state_reg[2]_0\ => \state_reg[2]\,
      \state_reg[4]\ => \^sr\(0),
      \state_reg[4]_0\(4 downto 0) => \state_reg[4]\(4 downto 0),
      storage_CE_advance => storage_CE_advance,
      \x_reg[0]\ => scheduler_instance_n_23,
      x_reg_rep => x_reg_rep
    );
\unit_gen[1].unit_inst\: entity work.\whole_system_fowler_nordheim_anne_0_0_neuron_ensemble_with_memory_with_buff__parameterized0\
     port map (
      A(11) => \p_0_out_inferred__0/stage1_r_reg_i_2_n_0\,
      A(10) => \p_0_out_inferred__0/stage1_r_reg_i_3_n_0\,
      A(9) => \p_0_out_inferred__0/stage1_r_reg_i_4_n_0\,
      A(8) => \p_0_out_inferred__0/stage1_r_reg_i_5_n_0\,
      A(7) => \p_0_out_inferred__0/stage1_r_reg_i_6_n_0\,
      A(6) => \p_0_out_inferred__0/stage1_r_reg_i_7_n_0\,
      A(5) => \p_0_out_inferred__0/stage1_r_reg_i_8_n_0\,
      A(4) => \p_0_out_inferred__0/stage1_r_reg_i_9_n_0\,
      A(3) => \p_0_out_inferred__0/stage1_r_reg_i_10_n_0\,
      A(2) => \p_0_out_inferred__0/stage1_r_reg_i_11_n_0\,
      A(1) => \p_0_out_inferred__0/stage1_r_reg_i_12_n_0\,
      A(0) => \p_0_out_inferred__0/stage1_r_reg_i_13_n_0\,
      ADDRBWRADDR(8) => \unit_gen[1].unit_inst_n_19\,
      ADDRBWRADDR(7) => \unit_gen[1].unit_inst_n_20\,
      ADDRBWRADDR(6) => \unit_gen[1].unit_inst_n_21\,
      ADDRBWRADDR(5) => \unit_gen[1].unit_inst_n_22\,
      ADDRBWRADDR(4) => \unit_gen[1].unit_inst_n_23\,
      ADDRBWRADDR(3) => \unit_gen[1].unit_inst_n_24\,
      ADDRBWRADDR(2) => \unit_gen[1].unit_inst_n_25\,
      ADDRBWRADDR(1) => \unit_gen[1].unit_inst_n_26\,
      ADDRBWRADDR(0) => \unit_gen[1].unit_inst_n_27\,
      B(17) => \unit_gen[0].unit_inst_n_40\,
      B(16) => \unit_gen[0].unit_inst_n_41\,
      B(15) => \unit_gen[0].unit_inst_n_42\,
      B(14) => \unit_gen[0].unit_inst_n_43\,
      B(13) => \unit_gen[0].unit_inst_n_44\,
      B(12) => \unit_gen[0].unit_inst_n_45\,
      B(11) => \unit_gen[0].unit_inst_n_46\,
      B(10) => \unit_gen[0].unit_inst_n_47\,
      B(9) => \unit_gen[0].unit_inst_n_48\,
      B(8) => \unit_gen[0].unit_inst_n_49\,
      B(7) => \unit_gen[0].unit_inst_n_50\,
      B(6) => \unit_gen[0].unit_inst_n_51\,
      B(5) => \unit_gen[0].unit_inst_n_52\,
      B(4) => \unit_gen[0].unit_inst_n_53\,
      B(3) => \unit_gen[0].unit_inst_n_54\,
      B(2) => \unit_gen[0].unit_inst_n_55\,
      B(1) => \unit_gen[0].unit_inst_n_56\,
      B(0) => \unit_gen[0].unit_inst_n_57\,
      E(0) => \state_reg[0]\(0),
      Q(0) => Q(1),
      \Q_out_reg[3]\(2 downto 0) => index_of_neuron_that_fired_reg(2 downto 0),
      SR(0) => scheduler_instance_n_4,
      add_mem_reg_reg(0) => add_mems(1),
      \cnt_prop_reg[0]\ => \cnt_prop_reg[0]_0\,
      flipping_CE_0 => flipping_CE_0,
      incrementing_reg => incrementing_reg,
      \index_of_neuron_that_fired_reg_reg[2]\ => \unit_gen[1].unit_inst_n_30\,
      \mem_ram_reg[0][0]\(1 downto 0) => \mem_ram_reg[0][0]\(1 downto 0),
      \membrane_reg_reg[9]\(9) => \unit_gen[1].unit_inst_n_35\,
      \membrane_reg_reg[9]\(8) => \unit_gen[1].unit_inst_n_36\,
      \membrane_reg_reg[9]\(7) => \unit_gen[1].unit_inst_n_37\,
      \membrane_reg_reg[9]\(6) => \unit_gen[1].unit_inst_n_38\,
      \membrane_reg_reg[9]\(5) => \unit_gen[1].unit_inst_n_39\,
      \membrane_reg_reg[9]\(4) => \unit_gen[1].unit_inst_n_40\,
      \membrane_reg_reg[9]\(3) => \unit_gen[1].unit_inst_n_41\,
      \membrane_reg_reg[9]\(2) => \unit_gen[1].unit_inst_n_42\,
      \membrane_reg_reg[9]\(1) => \unit_gen[1].unit_inst_n_43\,
      \membrane_reg_reg[9]\(0) => \unit_gen[1].unit_inst_n_44\,
      \offset_reg_reg[1]\(1 downto 0) => offsets(3 downto 2),
      s00_axi_aclk => s00_axi_aclk,
      spike_reg_reg => \^spike_reg_reg_0\,
      spike_reg_reg_0 => spike_reg_reg_2,
      spiked1 => \selector/spiked1\,
      stage1_r_reg(0) => stage1_r_reg(0),
      \state_ram_reg[0][0]\ => \unit_gen[0].unit_inst_n_23\,
      \state_ram_reg[1][0]\ => \unit_gen[0].unit_inst_n_24\,
      \state_ram_reg[2][0]\ => \unit_gen[0].unit_inst_n_25\,
      \state_ram_reg[2][1]\(11 downto 0) => \state_ram_reg[2][1]\(11 downto 0),
      \state_ram_reg[3][0]\ => \unit_gen[0].unit_inst_n_26\,
      \state_reg[0]_0\ => \state_reg[0]_1\,
      \state_reg[0]_1\ => \state_reg[0]_2\,
      \state_reg[0]_2\ => \state_reg[0]_4\,
      \state_reg[15]\(7) => \unit_gen[1].unit_inst_n_8\,
      \state_reg[15]\(6) => \unit_gen[1].unit_inst_n_9\,
      \state_reg[15]\(5) => \unit_gen[1].unit_inst_n_10\,
      \state_reg[15]\(4) => \unit_gen[1].unit_inst_n_11\,
      \state_reg[15]\(3) => \unit_gen[1].unit_inst_n_12\,
      \state_reg[15]\(2) => \unit_gen[1].unit_inst_n_13\,
      \state_reg[15]\(1) => \unit_gen[1].unit_inst_n_14\,
      \state_reg[15]\(0) => \unit_gen[1].unit_inst_n_15\,
      \state_reg[15]_0\ => \unit_gen[0].unit_inst_n_9\,
      \state_reg[15]_1\(15 downto 0) => \state_reg[15]\(15 downto 0),
      \state_reg[1]_0\ => \state_reg[1]_0\,
      \state_reg[1]_1\ => \state_reg[1]_1\,
      \state_reg[1]_2\ => \state_reg[1]_3\,
      \state_reg[1]_3\ => \state_reg[1]_5\,
      \state_reg[2]_0\ => \state_reg[2]_0\,
      \state_reg[2]_1\ => \state_reg[2]_1\,
      \state_reg[2]_2\ => \^fsm_onehot_state_reg[2]\,
      \state_reg[4]\ => \^sr\(0),
      \state_reg[4]_0\(4 downto 0) => \state_reg[4]\(4 downto 0),
      storage_CE_advance => storage_CE_advance,
      \unit_r_reg[0]\ => \^spike_reg_reg\,
      \x_reg[0]\ => scheduler_instance_n_23,
      \x_reg[7]\(0) => \x_reg[7]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI is
  port (
    flipping_CE : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    flipping_CE_0 : out STD_LOGIC;
    reset_module : out STD_LOGIC;
    update_memory : out STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    spikes : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \spikes__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    state_write : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_read : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_awready0__0\ : out STD_LOGIC;
    \x_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_prop_reg[0]\ : out STD_LOGIC;
    \cnt_prop_reg[0]_0\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_1\ : out STD_LOGIC;
    stage1_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    new_sample_reg : in STD_LOGIC;
    \state_reg[1]_2\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    spike_reg_reg : in STD_LOGIC;
    \state_reg[1]_3\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    spike_reg_reg_0 : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    axi_awready_reg_1 : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    axi_rvalid_reg_1 : in STD_LOGIC;
    axi_arready_reg_1 : in STD_LOGIC;
    x_reg_rep : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI : entity is "fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI";
end whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal found_solution_value : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal neuron_state_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1__0\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2__0\ : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3__0\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5__0\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \slv_reg6_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg6_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \^state_read\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^state_write\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair67";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_4\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \slv_reg4[31]_i_2\ : label is "soft_lutpair68";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  state_read(1 downto 0) <= \^state_read\(1 downto 0);
  state_write(1 downto 0) <= \^state_write\(1 downto 0);
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => \^state_read\(0),
      I5 => \^state_read\(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => \^state_read\(0),
      I5 => \^state_read\(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => \^state_read\(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => \^state_read\(1),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^state_write\(0),
      I4 => \^state_write\(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => \^state_write\(0),
      I4 => \^state_write\(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => \^state_write\(0),
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => \^state_write\(1),
      R => axi_awready_i_1_n_0
    );
NEURO_SA: entity work.whole_system_fowler_nordheim_anne_0_0_neuroSA_machine
     port map (
      CO(0) => CO(0),
      D(15 downto 0) => found_solution_value(15 downto 0),
      E(0) => E(0),
      \FSM_onehot_state_reg[2]\ => update_memory,
      Q(1 downto 0) => slv_reg1(1 downto 0),
      SR(0) => reset_module,
      \cnt_prop_reg[0]\ => \cnt_prop_reg[0]\,
      \cnt_prop_reg[0]_0\ => \cnt_prop_reg[0]_0\,
      flipping_CE => flipping_CE,
      flipping_CE_0 => flipping_CE_0,
      \mem_ram_reg[0][0]\(1 downto 0) => slv_reg5(1 downto 0),
      new_sample_reg => new_sample_reg,
      s00_axi_aclk => s00_axi_aclk,
      spike_reg_reg => spikes(0),
      spike_reg_reg_0 => \spikes__0\(0),
      spike_reg_reg_1 => spike_reg_reg,
      spike_reg_reg_2 => spike_reg_reg_0,
      stage1_r_reg(0) => stage1_r_reg(0),
      \state_ram_reg[2][1]\(11 downto 10) => neuron_state_in(1 downto 0),
      \state_ram_reg[2][1]\(9) => \slv_reg4_reg_n_0_[9]\,
      \state_ram_reg[2][1]\(8) => \slv_reg4_reg_n_0_[8]\,
      \state_ram_reg[2][1]\(7) => \slv_reg4_reg_n_0_[7]\,
      \state_ram_reg[2][1]\(6) => \slv_reg4_reg_n_0_[6]\,
      \state_ram_reg[2][1]\(5) => \slv_reg4_reg_n_0_[5]\,
      \state_ram_reg[2][1]\(4) => \slv_reg4_reg_n_0_[4]\,
      \state_ram_reg[2][1]\(3) => \slv_reg4_reg_n_0_[3]\,
      \state_ram_reg[2][1]\(2) => \slv_reg4_reg_n_0_[2]\,
      \state_ram_reg[2][1]\(1) => \slv_reg4_reg_n_0_[1]\,
      \state_ram_reg[2][1]\(0) => \slv_reg4_reg_n_0_[0]\,
      \state_reg[0]\(0) => \state_reg[0]\(0),
      \state_reg[0]_0\ => state(0),
      \state_reg[0]_1\ => state_1(0),
      \state_reg[0]_2\ => \state_reg[0]_0\,
      \state_reg[0]_3\ => \state_reg[0]_1\,
      \state_reg[0]_4\ => \state_reg[0]_2\,
      \state_reg[15]\(15 downto 0) => slv_reg3(15 downto 0),
      \state_reg[1]\ => state(1),
      \state_reg[1]_0\ => state_1(1),
      \state_reg[1]_1\ => \state_reg[1]\,
      \state_reg[1]_2\ => \state_reg[1]_0\,
      \state_reg[1]_3\ => \state_reg[1]_1\,
      \state_reg[1]_4\ => \state_reg[1]_2\,
      \state_reg[1]_5\ => \state_reg[1]_3\,
      \state_reg[2]\ => state(2),
      \state_reg[2]_0\ => state_1(2),
      \state_reg[2]_1\ => \state_reg[2]\,
      \state_reg[4]\(4 downto 0) => slv_reg2(4 downto 0),
      \x_reg[7]\(0) => \x_reg[7]\(0),
      x_reg_rep => x_reg_rep
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^state_read\(0),
      I4 => \^state_read\(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_reg_1,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^state_write\(1),
      I2 => \^state_write\(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^state_write\(1),
      I2 => \^state_write\(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \^state_write\(1),
      I2 => \^state_write\(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_reg_1,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => axi_awready_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_reg_0,
      Q => s00_axi_wready,
      R => axi_awready_i_1_n_0
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => slv_reg1(0),
      I4 => sel0(0),
      I5 => slv_reg0(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => \slv_reg6_reg_n_0_[0]\,
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[0]\,
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => \slv_reg2__0\(10),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(10),
      I4 => sel0(0),
      I5 => slv_reg0(10),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => \slv_reg6_reg_n_0_[10]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(10),
      I4 => sel0(0),
      I5 => neuron_state_in(0),
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(11),
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => \slv_reg2__0\(11),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(11),
      I4 => sel0(0),
      I5 => slv_reg0(11),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => \slv_reg6_reg_n_0_[11]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(11),
      I4 => sel0(0),
      I5 => neuron_state_in(1),
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(12),
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => \slv_reg2__0\(12),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(12),
      I4 => sel0(0),
      I5 => slv_reg0(12),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => \slv_reg6_reg_n_0_[12]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(12),
      I4 => sel0(0),
      I5 => neuron_state_in(2),
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(13),
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => \slv_reg2__0\(13),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(13),
      I4 => sel0(0),
      I5 => slv_reg0(13),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => \slv_reg6_reg_n_0_[13]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(13),
      I4 => sel0(0),
      I5 => neuron_state_in(3),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(14),
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => \slv_reg2__0\(14),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(14),
      I4 => sel0(0),
      I5 => slv_reg0(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => \slv_reg6_reg_n_0_[14]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(14),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[14]\,
      O => \s00_axi_rdata[14]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(15),
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => \slv_reg2__0\(15),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(15),
      I4 => sel0(0),
      I5 => slv_reg0(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => \slv_reg6_reg_n_0_[15]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(15),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[15]\,
      O => \s00_axi_rdata[15]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(16),
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(16),
      I1 => \slv_reg2__0\(16),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(16),
      I4 => sel0(0),
      I5 => slv_reg0(16),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(16),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[16]\,
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(17),
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(17),
      I1 => \slv_reg2__0\(17),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(17),
      I4 => sel0(0),
      I5 => slv_reg0(17),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(17),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[17]\,
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(18),
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(18),
      I1 => \slv_reg2__0\(18),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(18),
      I4 => sel0(0),
      I5 => slv_reg0(18),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(18),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[18]\,
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(19),
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(19),
      I1 => \slv_reg2__0\(19),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(19),
      I4 => sel0(0),
      I5 => slv_reg0(19),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(19),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[19]\,
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => slv_reg1(1),
      I4 => sel0(0),
      I5 => slv_reg0(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => \slv_reg6_reg_n_0_[1]\,
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[1]\,
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(20),
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(20),
      I1 => \slv_reg2__0\(20),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(20),
      I4 => sel0(0),
      I5 => slv_reg0(20),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(20),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[20]\,
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(21),
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(21),
      I1 => \slv_reg2__0\(21),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(21),
      I4 => sel0(0),
      I5 => slv_reg0(21),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(21),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[21]\,
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(22),
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(22),
      I1 => \slv_reg2__0\(22),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(22),
      I4 => sel0(0),
      I5 => slv_reg0(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(22),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[22]\,
      O => \s00_axi_rdata[22]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(23),
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(23),
      I1 => \slv_reg2__0\(23),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(23),
      I4 => sel0(0),
      I5 => slv_reg0(23),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(23),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[23]\,
      O => \s00_axi_rdata[23]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(24),
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(24),
      I1 => \slv_reg2__0\(24),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(24),
      I4 => sel0(0),
      I5 => slv_reg0(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(24),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[24]\,
      O => \s00_axi_rdata[24]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(25),
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(25),
      I1 => \slv_reg2__0\(25),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(25),
      I4 => sel0(0),
      I5 => slv_reg0(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(25),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[25]\,
      O => \s00_axi_rdata[25]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(26),
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(26),
      I1 => \slv_reg2__0\(26),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(26),
      I4 => sel0(0),
      I5 => slv_reg0(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(26),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[26]\,
      O => \s00_axi_rdata[26]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(27),
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(27),
      I1 => \slv_reg2__0\(27),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(27),
      I4 => sel0(0),
      I5 => slv_reg0(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(27),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[27]\,
      O => \s00_axi_rdata[27]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(28),
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(28),
      I1 => \slv_reg2__0\(28),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(28),
      I4 => sel0(0),
      I5 => slv_reg0(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(28),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[28]\,
      O => \s00_axi_rdata[28]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(29),
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(29),
      I1 => \slv_reg2__0\(29),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(29),
      I4 => sel0(0),
      I5 => slv_reg0(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(29),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[29]\,
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(2),
      I4 => sel0(0),
      I5 => slv_reg0(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => \slv_reg6_reg_n_0_[2]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(2),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[2]\,
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(30),
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(30),
      I1 => \slv_reg2__0\(30),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(30),
      I4 => sel0(0),
      I5 => slv_reg0(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(30),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[30]\,
      O => \s00_axi_rdata[30]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(31),
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3__0\(31),
      I1 => \slv_reg2__0\(31),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(31),
      I4 => sel0(0),
      I5 => slv_reg0(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => sel0(1),
      I2 => \slv_reg5__0\(31),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[31]\,
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(3),
      I4 => sel0(0),
      I5 => slv_reg0(3),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => \slv_reg6_reg_n_0_[3]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(3),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[3]\,
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(4),
      I4 => sel0(0),
      I5 => slv_reg0(4),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => \slv_reg6_reg_n_0_[4]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(4),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[4]\,
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => \slv_reg2__0\(5),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(5),
      I4 => sel0(0),
      I5 => slv_reg0(5),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => \slv_reg6_reg_n_0_[5]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(5),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[5]\,
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => \slv_reg2__0\(6),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(6),
      I4 => sel0(0),
      I5 => slv_reg0(6),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => \slv_reg6_reg_n_0_[6]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(6),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[6]\,
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => \slv_reg2__0\(7),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(7),
      I4 => sel0(0),
      I5 => slv_reg0(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => \slv_reg6_reg_n_0_[7]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(7),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[7]\,
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8),
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => \slv_reg2__0\(8),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(8),
      I4 => sel0(0),
      I5 => slv_reg0(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => \slv_reg6_reg_n_0_[8]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(8),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[8]\,
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9),
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => \slv_reg2__0\(9),
      I2 => sel0(1),
      I3 => \slv_reg1__0\(9),
      I4 => sel0(0),
      I5 => slv_reg0(9),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => \slv_reg6_reg_n_0_[9]\,
      I2 => sel0(1),
      I3 => \slv_reg5__0\(9),
      I4 => sel0(0),
      I5 => \slv_reg4_reg_n_0_[9]\,
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => s00_axi_wstrb(1),
      I4 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => s00_axi_wstrb(2),
      I4 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => s00_axi_wstrb(3),
      I4 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[31]_i_3_n_0\
    );
\slv_reg1[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg1[31]_i_4_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => s00_axi_wstrb(0),
      I4 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1__0\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1__0\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1__0\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1__0\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1__0\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1__0\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1__0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1__0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1__0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1__0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1__0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1__0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1__0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1__0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1__0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1__0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1__0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1__0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1__0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1__0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1__0\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1__0\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1__0\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1__0\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1__0\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1__0\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1__0\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1__0\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1__0\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1__0\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(1),
      I4 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(2),
      I4 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(3),
      I4 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => s00_axi_wstrb(0),
      I4 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2__0\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2__0\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2__0\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2__0\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2__0\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2__0\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2__0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2__0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2__0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2__0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2__0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2__0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2__0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2__0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2__0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2__0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2__0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2__0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2__0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2__0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2__0\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2__0\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2__0\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2__0\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2__0\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2__0\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2__0\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_2_n_0\,
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3__0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3__0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3__0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3__0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3__0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3__0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3__0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3__0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3__0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3__0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3__0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3__0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3__0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3__0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg3__0\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg3__0\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => s00_axi_awaddr(1),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      O => \slv_reg4[31]_i_2_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg4[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg4_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => neuron_state_in(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => neuron_state_in(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => neuron_state_in(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => neuron_state_in(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg4_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg4_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg4_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg4_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg4_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg4_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg4_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg4_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg4_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg4_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg4_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg4_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg4_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg4_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg4_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg4_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg4_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg4_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg4_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg4_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg4_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg4_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg4_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg4_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg4_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg4_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg4_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => s00_axi_wstrb(1),
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => s00_axi_wstrb(2),
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => s00_axi_wstrb(3),
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => s00_axi_wstrb(0),
      I3 => \slv_reg1[31]_i_4_n_0\,
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg5__0\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg5__0\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg5__0\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg5__0\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg5__0\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg5__0\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg5__0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg5__0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg5__0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg5__0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg5__0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg5__0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg5__0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg5__0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg5__0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg5__0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg5__0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg5__0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg5__0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg5__0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg5__0\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg5__0\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg5__0\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg5__0\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg5__0\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg5__0\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg5__0\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg5__0\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg5__0\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg5__0\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(0),
      Q => \slv_reg6_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(10),
      Q => \slv_reg6_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(11),
      Q => \slv_reg6_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(12),
      Q => \slv_reg6_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(13),
      Q => \slv_reg6_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(14),
      Q => \slv_reg6_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(15),
      Q => \slv_reg6_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(1),
      Q => \slv_reg6_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(2),
      Q => \slv_reg6_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(3),
      Q => \slv_reg6_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(4),
      Q => \slv_reg6_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(5),
      Q => \slv_reg6_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(6),
      Q => \slv_reg6_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(7),
      Q => \slv_reg6_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(8),
      Q => \slv_reg6_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => found_solution_value(9),
      Q => \slv_reg6_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => \slv_reg1[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => \slv_reg1[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => \slv_reg1[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg1[31]_i_3_n_0\,
      I2 => \slv_reg1[31]_i_4_n_0\,
      I3 => \slv_reg1[31]_i_2_n_0\,
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_anneale_xd is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_anneale_xd : entity is "fowler_nordheim_anneale_xd";
end whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_anneale_xd;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_anneale_xd is
  signal \NEURO_SA/reset_module\ : STD_LOGIC;
  signal \NEURO_SA/spikes\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NEURO_SA/spikes__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NEURO_SA/unit_gen[0].unit_inst/buffer/state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NEURO_SA/unit_gen[0].unit_inst/flipping_CE\ : STD_LOGIC;
  signal \NEURO_SA/unit_gen[1].unit_inst/buffer/state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NEURO_SA/unit_gen[1].unit_inst/flipping_CE\ : STD_LOGIC;
  signal \NEURO_SA/update_memory\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_2 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_21 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_27 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_30 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_31 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_32 : STD_LOGIC;
  signal fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_33 : STD_LOGIC;
  signal new_sample_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \spike_reg_i_1__0_n_0\ : STD_LOGIC;
  signal spike_reg_i_1_n_0 : STD_LOGIC;
  signal \state[0]_i_1__0__0_n_0\ : STD_LOGIC;
  signal \state[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__3_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal x_reg_rep_i_2_n_0 : STD_LOGIC;
begin
  axi_arready_reg <= \^axi_arready_reg\;
  axi_awready_reg <= \^axi_awready_reg\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg\,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF3838C3FF0000"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg\,
      O => axi_rvalid_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst: entity work.whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI
     port map (
      CO(0) => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_31,
      E(0) => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_1,
      axi_arready_reg_0 => \^axi_arready_reg\,
      axi_arready_reg_1 => axi_arready_i_1_n_0,
      \axi_awready0__0\ => \axi_awready0__0\,
      axi_awready_reg_0 => \^axi_awready_reg\,
      axi_awready_reg_1 => axi_awready_i_2_n_0,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => \^axi_rvalid_reg\,
      axi_rvalid_reg_1 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => axi_wready_i_1_n_0,
      \cnt_prop_reg[0]\ => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28,
      \cnt_prop_reg[0]_0\ => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29,
      flipping_CE => \NEURO_SA/unit_gen[0].unit_inst/flipping_CE\,
      flipping_CE_0 => \NEURO_SA/unit_gen[1].unit_inst/flipping_CE\,
      new_sample_reg => new_sample_i_1_n_0,
      reset_module => \NEURO_SA/reset_module\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s00_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      spike_reg_reg => spike_reg_i_1_n_0,
      spike_reg_reg_0 => \spike_reg_i_1__0_n_0\,
      spikes(0) => \NEURO_SA/spikes\(0),
      \spikes__0\(0) => \NEURO_SA/spikes__0\(1),
      stage1_r_reg(0) => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_33,
      state(2 downto 0) => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(2 downto 0),
      state_1(2 downto 0) => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(2 downto 0),
      state_read(1 downto 0) => state_read(1 downto 0),
      \state_reg[0]\(0) => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_2,
      \state_reg[0]_0\ => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_19,
      \state_reg[0]_1\ => \state[0]_i_1__3_n_0\,
      \state_reg[0]_2\ => \state[0]_i_1__0__0_n_0\,
      \state_reg[1]\ => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_20,
      \state_reg[1]_0\ => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_30,
      \state_reg[1]_1\ => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_32,
      \state_reg[1]_2\ => \state[1]_i_1__3_n_0\,
      \state_reg[1]_3\ => \state[1]_i_1__0__0_n_0\,
      \state_reg[2]\ => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_21,
      state_write(1 downto 0) => state_write(1 downto 0),
      update_memory => \NEURO_SA/update_memory\,
      \x_reg[7]\(0) => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_27,
      x_reg_rep => x_reg_rep_i_2_n_0
    );
new_sample_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NEURO_SA/reset_module\,
      O => new_sample_i_1_n_0
    );
spike_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAB2"
    )
        port map (
      I0 => \NEURO_SA/spikes\(0),
      I1 => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(0),
      I2 => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(1),
      I3 => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(2),
      I4 => \NEURO_SA/update_memory\,
      I5 => \NEURO_SA/reset_module\,
      O => spike_reg_i_1_n_0
    );
\spike_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAB2"
    )
        port map (
      I0 => \NEURO_SA/spikes__0\(1),
      I1 => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(0),
      I2 => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(1),
      I3 => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(2),
      I4 => \NEURO_SA/update_memory\,
      I5 => \NEURO_SA/reset_module\,
      O => \spike_reg_i_1__0_n_0\
    );
\state[0]_i_1__0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FFFFFF5500"
    )
        port map (
      I0 => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(1),
      I1 => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(2),
      I2 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_32,
      I3 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29,
      I4 => \NEURO_SA/update_memory\,
      I5 => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(0),
      O => \state[0]_i_1__0__0_n_0\
    );
\state[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FFFFFF5500"
    )
        port map (
      I0 => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(1),
      I1 => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(2),
      I2 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_30,
      I3 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28,
      I4 => \NEURO_SA/update_memory\,
      I5 => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(0),
      O => \state[0]_i_1__3_n_0\
    );
\state[1]_i_1__0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80FFFFFF8000"
    )
        port map (
      I0 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_33,
      I1 => \NEURO_SA/unit_gen[1].unit_inst/flipping_CE\,
      I2 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_2,
      I3 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_29,
      I4 => \NEURO_SA/update_memory\,
      I5 => \NEURO_SA/unit_gen[1].unit_inst/buffer/state\(1),
      O => \state[1]_i_1__0__0_n_0\
    );
\state[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF80FFFFFF8000"
    )
        port map (
      I0 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_31,
      I1 => \NEURO_SA/unit_gen[0].unit_inst/flipping_CE\,
      I2 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_1,
      I3 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_28,
      I4 => \NEURO_SA/update_memory\,
      I5 => \NEURO_SA/unit_gen[0].unit_inst/buffer/state\(1),
      O => \state[1]_i_1__3_n_0\
    );
x_reg_rep_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_20,
      I1 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_21,
      I2 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_19,
      I3 => fowler_nordheim_annealer_slave_lite_v1_0_S00_AXI_inst_n_27,
      O => x_reg_rep_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity whole_system_fowler_nordheim_anne_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of whole_system_fowler_nordheim_anne_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of whole_system_fowler_nordheim_anne_0_0 : entity is "whole_system_fowler_nordheim_anne_0_0,fowler_nordheim_anneale_xd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of whole_system_fowler_nordheim_anne_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of whole_system_fowler_nordheim_anne_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of whole_system_fowler_nordheim_anne_0_0 : entity is "fowler_nordheim_anneale_xd,Vivado 2024.2";
end whole_system_fowler_nordheim_anne_0_0;

architecture STRUCTURE of whole_system_fowler_nordheim_anne_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN whole_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN whole_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.whole_system_fowler_nordheim_anne_0_0_fowler_nordheim_anneale_xd
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
