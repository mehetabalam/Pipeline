--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
--Date        : Tue Sep 26 17:32:43 2017
--Host        : MAK running 64-bit major release  (build 9200)
--Command     : generate_target CPU_wrapper.bd
--Design      : CPU_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_wrapper is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
end CPU_wrapper;

architecture STRUCTURE of CPU_wrapper is
  component CPU is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  end component CPU;
begin
CPU_i: component CPU
     port map (
      CLK => CLK,
      RST => RST
    );
end STRUCTURE;
