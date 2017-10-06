-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:MEMWBReg:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY CPU_MEMWBReg_0_0 IS
  PORT (
    CLK_I : IN STD_LOGIC;
    RST_I : IN STD_LOGIC;
    MEMWB_MUXWBC_I : IN STD_LOGIC;
    MEMWB_MEMDATA_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MEMWB_WBWREN_I : IN STD_LOGIC;
    MEMWB_WBSEL_I : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    MEMWB_ALUOUT_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MEMWB_MUXWBC_O : OUT STD_LOGIC;
    MEMWB_MEMDATA_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    MEMWB_WBWREN_O : OUT STD_LOGIC;
    MEMWB_WBSEL_O : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    MEMWB_ALUOUT_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END CPU_MEMWBReg_0_0;

ARCHITECTURE CPU_MEMWBReg_0_0_arch OF CPU_MEMWBReg_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF CPU_MEMWBReg_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT MEMWBReg IS
    PORT (
      CLK_I : IN STD_LOGIC;
      RST_I : IN STD_LOGIC;
      MEMWB_MUXWBC_I : IN STD_LOGIC;
      MEMWB_MEMDATA_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MEMWB_WBWREN_I : IN STD_LOGIC;
      MEMWB_WBSEL_I : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      MEMWB_ALUOUT_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      MEMWB_MUXWBC_O : OUT STD_LOGIC;
      MEMWB_MEMDATA_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      MEMWB_WBWREN_O : OUT STD_LOGIC;
      MEMWB_WBSEL_O : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      MEMWB_ALUOUT_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT MEMWBReg;
BEGIN
  U0 : MEMWBReg
    PORT MAP (
      CLK_I => CLK_I,
      RST_I => RST_I,
      MEMWB_MUXWBC_I => MEMWB_MUXWBC_I,
      MEMWB_MEMDATA_I => MEMWB_MEMDATA_I,
      MEMWB_WBWREN_I => MEMWB_WBWREN_I,
      MEMWB_WBSEL_I => MEMWB_WBSEL_I,
      MEMWB_ALUOUT_I => MEMWB_ALUOUT_I,
      MEMWB_MUXWBC_O => MEMWB_MUXWBC_O,
      MEMWB_MEMDATA_O => MEMWB_MEMDATA_O,
      MEMWB_WBWREN_O => MEMWB_WBWREN_O,
      MEMWB_WBSEL_O => MEMWB_WBSEL_O,
      MEMWB_ALUOUT_O => MEMWB_ALUOUT_O
    );
END CPU_MEMWBReg_0_0_arch;
