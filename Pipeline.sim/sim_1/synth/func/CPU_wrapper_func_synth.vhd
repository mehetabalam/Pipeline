-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Wed Sep 20 00:45:43 2017
-- Host        : MAK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/ACAProject/Pipeline/Pipeline.sim/sim_1/synth/func/CPU_wrapper_func_synth.vhd
-- Design      : RegFile
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RegFile is
  port (
    CLK_I : in STD_LOGIC;
    EN_I : in STD_LOGIC;
    WEN_I : in STD_LOGIC;
    WSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    WD_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IR_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RD_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RS_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RegFile : entity is true;
end RegFile;

architecture STRUCTURE of RegFile is
  signal CLK_I_IBUF : STD_LOGIC;
  signal CLK_I_IBUF_BUFG : STD_LOGIC;
  signal IR_I_IBUF : STD_LOGIC_VECTOR ( 25 downto 16 );
  signal RD_O_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RS_O_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal WD_I_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal WEN_I_IBUF : STD_LOGIC;
  signal WSEL_I_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_reg32_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg32_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg32_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg32_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of reg32_reg_1 : label is "COMMON";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of reg32_reg_1 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of reg32_reg_1 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of reg32_reg_1 : label is "reg32";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of reg32_reg_1 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of reg32_reg_1 : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of reg32_reg_1 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of reg32_reg_1 : label is 71;
  attribute CLOCK_DOMAINS of reg32_reg_2 : label is "COMMON";
  attribute METHODOLOGY_DRC_VIOS of reg32_reg_2 : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS of reg32_reg_2 : label is 1024;
  attribute RTL_RAM_NAME of reg32_reg_2 : label is "reg32";
  attribute bram_addr_begin of reg32_reg_2 : label is 0;
  attribute bram_addr_end of reg32_reg_2 : label is 511;
  attribute bram_slice_begin of reg32_reg_2 : label is 0;
  attribute bram_slice_end of reg32_reg_2 : label is 71;
begin
CLK_I_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_I_IBUF,
      O => CLK_I_IBUF_BUFG
    );
CLK_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK_I,
      O => CLK_I_IBUF
    );
\IR_I_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(16),
      O => IR_I_IBUF(16)
    );
\IR_I_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(17),
      O => IR_I_IBUF(17)
    );
\IR_I_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(18),
      O => IR_I_IBUF(18)
    );
\IR_I_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(19),
      O => IR_I_IBUF(19)
    );
\IR_I_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(20),
      O => IR_I_IBUF(20)
    );
\IR_I_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(21),
      O => IR_I_IBUF(21)
    );
\IR_I_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(22),
      O => IR_I_IBUF(22)
    );
\IR_I_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(23),
      O => IR_I_IBUF(23)
    );
\IR_I_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(24),
      O => IR_I_IBUF(24)
    );
\IR_I_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => IR_I(25),
      O => IR_I_IBUF(25)
    );
\RD_O_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(0),
      O => RD_O(0)
    );
\RD_O_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(10),
      O => RD_O(10)
    );
\RD_O_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(11),
      O => RD_O(11)
    );
\RD_O_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(12),
      O => RD_O(12)
    );
\RD_O_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(13),
      O => RD_O(13)
    );
\RD_O_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(14),
      O => RD_O(14)
    );
\RD_O_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(15),
      O => RD_O(15)
    );
\RD_O_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(16),
      O => RD_O(16)
    );
\RD_O_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(17),
      O => RD_O(17)
    );
\RD_O_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(18),
      O => RD_O(18)
    );
\RD_O_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(19),
      O => RD_O(19)
    );
\RD_O_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(1),
      O => RD_O(1)
    );
\RD_O_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(20),
      O => RD_O(20)
    );
\RD_O_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(21),
      O => RD_O(21)
    );
\RD_O_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(22),
      O => RD_O(22)
    );
\RD_O_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(23),
      O => RD_O(23)
    );
\RD_O_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(24),
      O => RD_O(24)
    );
\RD_O_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(25),
      O => RD_O(25)
    );
\RD_O_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(26),
      O => RD_O(26)
    );
\RD_O_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(27),
      O => RD_O(27)
    );
\RD_O_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(28),
      O => RD_O(28)
    );
\RD_O_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(29),
      O => RD_O(29)
    );
\RD_O_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(2),
      O => RD_O(2)
    );
\RD_O_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(30),
      O => RD_O(30)
    );
\RD_O_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(31),
      O => RD_O(31)
    );
\RD_O_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(3),
      O => RD_O(3)
    );
\RD_O_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(4),
      O => RD_O(4)
    );
\RD_O_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(5),
      O => RD_O(5)
    );
\RD_O_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(6),
      O => RD_O(6)
    );
\RD_O_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(7),
      O => RD_O(7)
    );
\RD_O_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(8),
      O => RD_O(8)
    );
\RD_O_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD_O_OBUF(9),
      O => RD_O(9)
    );
\RS_O_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(0),
      O => RS_O(0)
    );
\RS_O_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(10),
      O => RS_O(10)
    );
\RS_O_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(11),
      O => RS_O(11)
    );
\RS_O_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(12),
      O => RS_O(12)
    );
\RS_O_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(13),
      O => RS_O(13)
    );
\RS_O_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(14),
      O => RS_O(14)
    );
\RS_O_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(15),
      O => RS_O(15)
    );
\RS_O_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(16),
      O => RS_O(16)
    );
\RS_O_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(17),
      O => RS_O(17)
    );
\RS_O_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(18),
      O => RS_O(18)
    );
\RS_O_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(19),
      O => RS_O(19)
    );
\RS_O_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(1),
      O => RS_O(1)
    );
\RS_O_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(20),
      O => RS_O(20)
    );
\RS_O_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(21),
      O => RS_O(21)
    );
\RS_O_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(22),
      O => RS_O(22)
    );
\RS_O_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(23),
      O => RS_O(23)
    );
\RS_O_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(24),
      O => RS_O(24)
    );
\RS_O_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(25),
      O => RS_O(25)
    );
\RS_O_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(26),
      O => RS_O(26)
    );
\RS_O_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(27),
      O => RS_O(27)
    );
\RS_O_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(28),
      O => RS_O(28)
    );
\RS_O_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(29),
      O => RS_O(29)
    );
\RS_O_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(2),
      O => RS_O(2)
    );
\RS_O_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(30),
      O => RS_O(30)
    );
\RS_O_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(31),
      O => RS_O(31)
    );
\RS_O_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(3),
      O => RS_O(3)
    );
\RS_O_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(4),
      O => RS_O(4)
    );
\RS_O_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(5),
      O => RS_O(5)
    );
\RS_O_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(6),
      O => RS_O(6)
    );
\RS_O_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(7),
      O => RS_O(7)
    );
\RS_O_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(8),
      O => RS_O(8)
    );
\RS_O_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RS_O_OBUF(9),
      O => RS_O(9)
    );
\WD_I_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(0),
      O => WD_I_IBUF(0)
    );
\WD_I_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(10),
      O => WD_I_IBUF(10)
    );
\WD_I_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(11),
      O => WD_I_IBUF(11)
    );
\WD_I_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(12),
      O => WD_I_IBUF(12)
    );
\WD_I_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(13),
      O => WD_I_IBUF(13)
    );
\WD_I_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(14),
      O => WD_I_IBUF(14)
    );
\WD_I_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(15),
      O => WD_I_IBUF(15)
    );
\WD_I_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(16),
      O => WD_I_IBUF(16)
    );
\WD_I_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(17),
      O => WD_I_IBUF(17)
    );
\WD_I_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(18),
      O => WD_I_IBUF(18)
    );
\WD_I_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(19),
      O => WD_I_IBUF(19)
    );
\WD_I_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(1),
      O => WD_I_IBUF(1)
    );
\WD_I_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(20),
      O => WD_I_IBUF(20)
    );
\WD_I_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(21),
      O => WD_I_IBUF(21)
    );
\WD_I_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(22),
      O => WD_I_IBUF(22)
    );
\WD_I_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(23),
      O => WD_I_IBUF(23)
    );
\WD_I_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(24),
      O => WD_I_IBUF(24)
    );
\WD_I_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(25),
      O => WD_I_IBUF(25)
    );
\WD_I_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(26),
      O => WD_I_IBUF(26)
    );
\WD_I_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(27),
      O => WD_I_IBUF(27)
    );
\WD_I_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(28),
      O => WD_I_IBUF(28)
    );
\WD_I_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(29),
      O => WD_I_IBUF(29)
    );
\WD_I_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(2),
      O => WD_I_IBUF(2)
    );
\WD_I_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(30),
      O => WD_I_IBUF(30)
    );
\WD_I_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(31),
      O => WD_I_IBUF(31)
    );
\WD_I_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(3),
      O => WD_I_IBUF(3)
    );
\WD_I_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(4),
      O => WD_I_IBUF(4)
    );
\WD_I_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(5),
      O => WD_I_IBUF(5)
    );
\WD_I_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(6),
      O => WD_I_IBUF(6)
    );
\WD_I_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(7),
      O => WD_I_IBUF(7)
    );
\WD_I_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(8),
      O => WD_I_IBUF(8)
    );
\WD_I_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WD_I(9),
      O => WD_I_IBUF(9)
    );
WEN_I_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => WEN_I,
      O => WEN_I_IBUF
    );
\WSEL_I_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WSEL_I(0),
      O => WSEL_I_IBUF(0)
    );
\WSEL_I_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WSEL_I(1),
      O => WSEL_I_IBUF(1)
    );
\WSEL_I_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WSEL_I(2),
      O => WSEL_I_IBUF(2)
    );
\WSEL_I_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WSEL_I(3),
      O => WSEL_I_IBUF(3)
    );
\WSEL_I_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => WSEL_I(4),
      O => WSEL_I_IBUF(4)
    );
reg32_reg_1: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_FILE => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"0000",
      ADDRARDADDR(9 downto 5) => IR_I_IBUF(25 downto 21),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 10) => B"0000",
      ADDRBWRADDR(9 downto 5) => WSEL_I_IBUF(4 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => CLK_I_IBUF_BUFG,
      CLKBWRCLK => CLK_I_IBUF_BUFG,
      DIADI(15 downto 0) => WD_I_IBUF(15 downto 0),
      DIBDI(15 downto 0) => WD_I_IBUF(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => RD_O_OBUF(15 downto 0),
      DOBDO(15 downto 0) => RD_O_OBUF(31 downto 16),
      DOPADOP(1 downto 0) => NLW_reg32_reg_1_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_reg32_reg_1_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => WEN_I_IBUF,
      WEBWE(2) => WEN_I_IBUF,
      WEBWE(1) => WEN_I_IBUF,
      WEBWE(0) => WEN_I_IBUF
    );
reg32_reg_2: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_FILE => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"0000",
      ADDRARDADDR(9 downto 5) => IR_I_IBUF(20 downto 16),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 10) => B"0000",
      ADDRBWRADDR(9 downto 5) => WSEL_I_IBUF(4 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => CLK_I_IBUF_BUFG,
      CLKBWRCLK => CLK_I_IBUF_BUFG,
      DIADI(15 downto 0) => WD_I_IBUF(15 downto 0),
      DIBDI(15 downto 0) => WD_I_IBUF(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => RS_O_OBUF(15 downto 0),
      DOBDO(15 downto 0) => RS_O_OBUF(31 downto 16),
      DOPADOP(1 downto 0) => NLW_reg32_reg_2_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_reg32_reg_2_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => WEN_I_IBUF,
      WEBWE(2) => WEN_I_IBUF,
      WEBWE(1) => WEN_I_IBUF,
      WEBWE(0) => WEN_I_IBUF
    );
end STRUCTURE;
