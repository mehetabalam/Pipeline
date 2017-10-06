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

-- IP VLNV: xilinx.com:module_ref:IDEXReg:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY CPU_IDEXReg_0_0 IS
  PORT (
    CLK_I : IN STD_LOGIC;
    RST_I : IN STD_LOGIC;
    IDEX_RA_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_RB_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_WBSEL_I : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IDEX_MUXRAC_I : IN STD_LOGIC;
    IDEX_MUXRBC_I : IN STD_LOGIC;
    IDEX_MUXWBC_I : IN STD_LOGIC;
    IDEX_ALUOP_I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    IDEX_DMWEN_I : IN STD_LOGIC;
    IDEX_WBWREN_I : IN STD_LOGIC;
    IDEX_IMM32_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_NPC_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_BC_I : IN STD_LOGIC;
    IDEX_RA_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_RB_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_WBSEL_O : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    IDEX_MUXRAC_O : OUT STD_LOGIC;
    IDEX_MUXRBC_O : OUT STD_LOGIC;
    IDEX_MUXWBC_O : OUT STD_LOGIC;
    IDEX_ALUOP_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    IDEX_DMWEN_O : OUT STD_LOGIC;
    IDEX_WBWREN_O : OUT STD_LOGIC;
    IDEX_IMM32_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_NPC_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    IDEX_BC_O : OUT STD_LOGIC
  );
END CPU_IDEXReg_0_0;

ARCHITECTURE CPU_IDEXReg_0_0_arch OF CPU_IDEXReg_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF CPU_IDEXReg_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT IDEXReg IS
    PORT (
      CLK_I : IN STD_LOGIC;
      RST_I : IN STD_LOGIC;
      IDEX_RA_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_RB_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_WBSEL_I : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      IDEX_MUXRAC_I : IN STD_LOGIC;
      IDEX_MUXRBC_I : IN STD_LOGIC;
      IDEX_MUXWBC_I : IN STD_LOGIC;
      IDEX_ALUOP_I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      IDEX_DMWEN_I : IN STD_LOGIC;
      IDEX_WBWREN_I : IN STD_LOGIC;
      IDEX_IMM32_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_NPC_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_BC_I : IN STD_LOGIC;
      IDEX_RA_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_RB_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_WBSEL_O : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      IDEX_MUXRAC_O : OUT STD_LOGIC;
      IDEX_MUXRBC_O : OUT STD_LOGIC;
      IDEX_MUXWBC_O : OUT STD_LOGIC;
      IDEX_ALUOP_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      IDEX_DMWEN_O : OUT STD_LOGIC;
      IDEX_WBWREN_O : OUT STD_LOGIC;
      IDEX_IMM32_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_NPC_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IDEX_BC_O : OUT STD_LOGIC
    );
  END COMPONENT IDEXReg;
BEGIN
  U0 : IDEXReg
    PORT MAP (
      CLK_I => CLK_I,
      RST_I => RST_I,
      IDEX_RA_I => IDEX_RA_I,
      IDEX_RB_I => IDEX_RB_I,
      IDEX_WBSEL_I => IDEX_WBSEL_I,
      IDEX_MUXRAC_I => IDEX_MUXRAC_I,
      IDEX_MUXRBC_I => IDEX_MUXRBC_I,
      IDEX_MUXWBC_I => IDEX_MUXWBC_I,
      IDEX_ALUOP_I => IDEX_ALUOP_I,
      IDEX_DMWEN_I => IDEX_DMWEN_I,
      IDEX_WBWREN_I => IDEX_WBWREN_I,
      IDEX_IMM32_I => IDEX_IMM32_I,
      IDEX_NPC_I => IDEX_NPC_I,
      IDEX_BC_I => IDEX_BC_I,
      IDEX_RA_O => IDEX_RA_O,
      IDEX_RB_O => IDEX_RB_O,
      IDEX_WBSEL_O => IDEX_WBSEL_O,
      IDEX_MUXRAC_O => IDEX_MUXRAC_O,
      IDEX_MUXRBC_O => IDEX_MUXRBC_O,
      IDEX_MUXWBC_O => IDEX_MUXWBC_O,
      IDEX_ALUOP_O => IDEX_ALUOP_O,
      IDEX_DMWEN_O => IDEX_DMWEN_O,
      IDEX_WBWREN_O => IDEX_WBWREN_O,
      IDEX_IMM32_O => IDEX_IMM32_O,
      IDEX_NPC_O => IDEX_NPC_O,
      IDEX_BC_O => IDEX_BC_O
    );
END CPU_IDEXReg_0_0_arch;
