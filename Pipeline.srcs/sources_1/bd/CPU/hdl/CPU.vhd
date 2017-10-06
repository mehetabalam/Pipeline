--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
--Date        : Tue Sep 26 17:32:43 2017
--Host        : MAK running 64-bit major release  (build 9200)
--Command     : generate_target CPU.bd
--Design      : CPU
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of CPU : entity is "CPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CPU,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of CPU : entity is "CPU.hwdef";
end CPU;

architecture STRUCTURE of CPU is
  component CPU_PC_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC;
    PC_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_PC_0_0;
  component CPU_Mux2to1_0_1 is
  port (
    DATA1_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA2_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C_I : in STD_LOGIC;
    DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_Mux2to1_0_1;
  component CPU_MEMWBReg_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC;
    MEMWB_MUXWBC_I : in STD_LOGIC;
    MEMWB_MEMDATA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMWB_WBWREN_I : in STD_LOGIC;
    MEMWB_WBSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MEMWB_ALUOUT_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMWB_MUXWBC_O : out STD_LOGIC;
    MEMWB_MEMDATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMWB_WBWREN_O : out STD_LOGIC;
    MEMWB_WBSEL_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    MEMWB_ALUOUT_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_MEMWBReg_0_0;
  component CPU_PCAdder_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    PC_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCPLUS4_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_PCAdder_0_0;
  component CPU_DataMem_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC;
    WREN_I : in STD_LOGIC;
    DATA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADD_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_DataMem_0_0;
  component CPU_RegFile_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC;
    WEN_I : in STD_LOGIC;
    WSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    WDATA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RASEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RBSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RA_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RB_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_RegFile_0_0;
  component CPU_EXMEMReg_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC;
    EXMEM_WBSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    EXMEM_MUXWBC_I : in STD_LOGIC;
    EXMEM_DMWEN_I : in STD_LOGIC;
    EXMEM_WBWREN_I : in STD_LOGIC;
    EXMEM_ALUOUT_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EXMEM_RB_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EXMEM_MUXBC_I : in STD_LOGIC;
    EXMEM_WBSEL_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    EXMEM_MUXWBC_O : out STD_LOGIC;
    EXMEM_DMWEN_O : out STD_LOGIC;
    EXMEM_WBWREN_O : out STD_LOGIC;
    EXMEM_ALUOUT_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    EXMEM_RB_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    EXMEM_MUXBC_O : out STD_LOGIC
  );
  end component CPU_EXMEMReg_0_0;
  component CPU_BranchCond_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    BC_I : in STD_LOGIC;
    RA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RB_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MUXBC_O : out STD_LOGIC
  );
  end component CPU_BranchCond_0_0;
  component CPU_IDEXReg_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC;
    IDEX_RA_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_RB_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_WBSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IDEX_MUXRAC_I : in STD_LOGIC;
    IDEX_MUXRBC_I : in STD_LOGIC;
    IDEX_MUXWBC_I : in STD_LOGIC;
    IDEX_ALUOP_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IDEX_DMWEN_I : in STD_LOGIC;
    IDEX_WBWREN_I : in STD_LOGIC;
    IDEX_IMM32_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_NPC_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_BC_I : in STD_LOGIC;
    IDEX_RA_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_RB_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_WBSEL_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IDEX_MUXRAC_O : out STD_LOGIC;
    IDEX_MUXRBC_O : out STD_LOGIC;
    IDEX_MUXWBC_O : out STD_LOGIC;
    IDEX_ALUOP_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IDEX_DMWEN_O : out STD_LOGIC;
    IDEX_WBWREN_O : out STD_LOGIC;
    IDEX_IMM32_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_NPC_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IDEX_BC_O : out STD_LOGIC
  );
  end component CPU_IDEXReg_0_0;
  component CPU_SignExtender_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    IMM16_I : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IMM32_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_SignExtender_0_0;
  component CPU_IFIDReg_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC;
    IFID_NPC_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IFID_IR_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IFID_NPC_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IFID_RS_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IFID_RT_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IFID_RD_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IFID_OPC_O : out STD_LOGIC_VECTOR ( 5 downto 0 );
    IFID_IMM_O : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component CPU_IFIDReg_0_0;
  component CPU_Decoder_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    OPC_I : in STD_LOGIC_VECTOR ( 5 downto 0 );
    RTSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RDSEL_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MUXRAC_O : out STD_LOGIC;
    MUXRBC_O : out STD_LOGIC;
    MUXWBC_O : out STD_LOGIC;
    ALUOP_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DMWEN_O : out STD_LOGIC;
    WBWREN_O : out STD_LOGIC;
    WBSEL_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    BC_O : out STD_LOGIC
  );
  end component CPU_Decoder_0_0;
  component CPU_ALU_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    OPCODE_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DATA1_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA2_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALU_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_ALU_0_0;
  component CPU_Mux2to1_1_0 is
  port (
    DATA1_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA2_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C_I : in STD_LOGIC;
    DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_Mux2to1_1_0;
  component CPU_Mux2to1_2_0 is
  port (
    DATA1_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA2_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C_I : in STD_LOGIC;
    DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_Mux2to1_2_0;
  component CPU_Mux2to1_3_0 is
  port (
    DATA1_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA2_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C_I : in STD_LOGIC;
    DATA_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_Mux2to1_3_0;
  component CPU_InstMem_0_0 is
  port (
    CLK_I : in STD_LOGIC;
    PC_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IR_O : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component CPU_InstMem_0_0;
  signal ALU_0_ALU_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BranchCond_0_MUXBC_O : STD_LOGIC;
  signal CLK_1 : STD_LOGIC;
  signal DataMem_0_DATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Decoder_0_ALUOP_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Decoder_0_BC_O : STD_LOGIC;
  signal Decoder_0_DMWEN_O : STD_LOGIC;
  signal Decoder_0_MUXRAC_O : STD_LOGIC;
  signal Decoder_0_MUXRBC_O : STD_LOGIC;
  signal Decoder_0_MUXWBC_O : STD_LOGIC;
  signal Decoder_0_WBSEL_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Decoder_0_WBWREN_O : STD_LOGIC;
  signal EXMEMReg_0_EXMEM_ALUOUT_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal EXMEMReg_0_EXMEM_DMWEN_O : STD_LOGIC;
  signal EXMEMReg_0_EXMEM_MUXBC_O : STD_LOGIC;
  signal EXMEMReg_0_EXMEM_MUXWBC_O : STD_LOGIC;
  signal EXMEMReg_0_EXMEM_RBSEL_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal EXMEMReg_0_EXMEM_RB_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal EXMEMReg_0_EXMEM_WBWREN_O : STD_LOGIC;
  signal IDEXReg_0_IDEX_ALUOP_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IDEXReg_0_IDEX_BC_O : STD_LOGIC;
  signal IDEXReg_0_IDEX_DMWEN_O : STD_LOGIC;
  signal IDEXReg_0_IDEX_IMM32_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IDEXReg_0_IDEX_MUXRAC_O : STD_LOGIC;
  signal IDEXReg_0_IDEX_MUXRBC_O : STD_LOGIC;
  signal IDEXReg_0_IDEX_MUXWBC_O : STD_LOGIC;
  signal IDEXReg_0_IDEX_NPC_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IDEXReg_0_IDEX_RA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IDEXReg_0_IDEX_RB_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IDEXReg_0_IDEX_WBSEL_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal IDEXReg_0_IDEX_WBWREN_O : STD_LOGIC;
  signal IFIDReg_0_IFID_IMM_O : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal IFIDReg_0_IFID_NPC_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IFIDReg_0_IFID_OPC_O : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal IFIDReg_0_IFID_RD_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal IFIDReg_0_IFID_RS_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal IFIDReg_0_IFID_RT_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal InstMem_0_IR_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMWBReg_0_MEMWB_ALUOUT_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMWBReg_0_MEMWB_MEMDATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMWBReg_0_MEMWB_MUXWBC_O : STD_LOGIC;
  signal MEMWBReg_0_MEMWB_WBDATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMWBReg_0_MEMWB_WBEN_O : STD_LOGIC;
  signal MEMWBReg_0_MEMWB_WBSEL_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Mux2to1_0_DATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Mux2to1_1_DATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Mux2to1_2_DATA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCAdder_0_PCPLUS4_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PC_0_PC_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RST_1 : STD_LOGIC;
  signal RegFile_0_RA_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RegFile_0_RB_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SignExtender_0_IMM32_O : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  CLK_1 <= CLK;
  RST_1 <= RST;
ALU_0: component CPU_ALU_0_0
     port map (
      ALU_O(31 downto 0) => ALU_0_ALU_O(31 downto 0),
      CLK_I => CLK_1,
      DATA1_I(31 downto 0) => Mux2to1_1_DATA_O(31 downto 0),
      DATA2_I(31 downto 0) => Mux2to1_2_DATA_O(31 downto 0),
      OPCODE_I(3 downto 0) => IDEXReg_0_IDEX_ALUOP_O(3 downto 0)
    );
BranchCond_0: component CPU_BranchCond_0_0
     port map (
      BC_I => IDEXReg_0_IDEX_BC_O,
      CLK_I => CLK_1,
      MUXBC_O => BranchCond_0_MUXBC_O,
      RA_I(31 downto 0) => IDEXReg_0_IDEX_RA_O(31 downto 0),
      RB_I(31 downto 0) => IDEXReg_0_IDEX_RB_O(31 downto 0)
    );
DataMem_0: component CPU_DataMem_0_0
     port map (
      ADD_I(31 downto 0) => EXMEMReg_0_EXMEM_ALUOUT_O(31 downto 0),
      CLK_I => CLK_1,
      DATA_I(31 downto 0) => EXMEMReg_0_EXMEM_RB_O(31 downto 0),
      DATA_O(31 downto 0) => DataMem_0_DATA_O(31 downto 0),
      RST_I => RST_1,
      WREN_I => EXMEMReg_0_EXMEM_DMWEN_O
    );
Decoder_0: component CPU_Decoder_0_0
     port map (
      ALUOP_O(3 downto 0) => Decoder_0_ALUOP_O(3 downto 0),
      BC_O => Decoder_0_BC_O,
      CLK_I => CLK_1,
      DMWEN_O => Decoder_0_DMWEN_O,
      MUXRAC_O => Decoder_0_MUXRAC_O,
      MUXRBC_O => Decoder_0_MUXRBC_O,
      MUXWBC_O => Decoder_0_MUXWBC_O,
      OPC_I(5 downto 0) => IFIDReg_0_IFID_OPC_O(5 downto 0),
      RDSEL_I(4 downto 0) => IFIDReg_0_IFID_RD_O(4 downto 0),
      RTSEL_I(4 downto 0) => IFIDReg_0_IFID_RT_O(4 downto 0),
      WBSEL_O(4 downto 0) => Decoder_0_WBSEL_O(4 downto 0),
      WBWREN_O => Decoder_0_WBWREN_O
    );
EXMEMReg_0: component CPU_EXMEMReg_0_0
     port map (
      CLK_I => CLK_1,
      EXMEM_ALUOUT_I(31 downto 0) => ALU_0_ALU_O(31 downto 0),
      EXMEM_ALUOUT_O(31 downto 0) => EXMEMReg_0_EXMEM_ALUOUT_O(31 downto 0),
      EXMEM_DMWEN_I => IDEXReg_0_IDEX_DMWEN_O,
      EXMEM_DMWEN_O => EXMEMReg_0_EXMEM_DMWEN_O,
      EXMEM_MUXBC_I => BranchCond_0_MUXBC_O,
      EXMEM_MUXBC_O => EXMEMReg_0_EXMEM_MUXBC_O,
      EXMEM_MUXWBC_I => IDEXReg_0_IDEX_MUXWBC_O,
      EXMEM_MUXWBC_O => EXMEMReg_0_EXMEM_MUXWBC_O,
      EXMEM_RB_I(31 downto 0) => IDEXReg_0_IDEX_RB_O(31 downto 0),
      EXMEM_RB_O(31 downto 0) => EXMEMReg_0_EXMEM_RB_O(31 downto 0),
      EXMEM_WBSEL_I(4 downto 0) => IDEXReg_0_IDEX_WBSEL_O(4 downto 0),
      EXMEM_WBSEL_O(4 downto 0) => EXMEMReg_0_EXMEM_RBSEL_O(4 downto 0),
      EXMEM_WBWREN_I => IDEXReg_0_IDEX_WBWREN_O,
      EXMEM_WBWREN_O => EXMEMReg_0_EXMEM_WBWREN_O,
      RST_I => RST_1
    );
IDEXReg_0: component CPU_IDEXReg_0_0
     port map (
      CLK_I => CLK_1,
      IDEX_ALUOP_I(3 downto 0) => Decoder_0_ALUOP_O(3 downto 0),
      IDEX_ALUOP_O(3 downto 0) => IDEXReg_0_IDEX_ALUOP_O(3 downto 0),
      IDEX_BC_I => Decoder_0_BC_O,
      IDEX_BC_O => IDEXReg_0_IDEX_BC_O,
      IDEX_DMWEN_I => Decoder_0_DMWEN_O,
      IDEX_DMWEN_O => IDEXReg_0_IDEX_DMWEN_O,
      IDEX_IMM32_I(31 downto 0) => SignExtender_0_IMM32_O(31 downto 0),
      IDEX_IMM32_O(31 downto 0) => IDEXReg_0_IDEX_IMM32_O(31 downto 0),
      IDEX_MUXRAC_I => Decoder_0_MUXRAC_O,
      IDEX_MUXRAC_O => IDEXReg_0_IDEX_MUXRAC_O,
      IDEX_MUXRBC_I => Decoder_0_MUXRBC_O,
      IDEX_MUXRBC_O => IDEXReg_0_IDEX_MUXRBC_O,
      IDEX_MUXWBC_I => Decoder_0_MUXWBC_O,
      IDEX_MUXWBC_O => IDEXReg_0_IDEX_MUXWBC_O,
      IDEX_NPC_I(31 downto 0) => IFIDReg_0_IFID_NPC_O(31 downto 0),
      IDEX_NPC_O(31 downto 0) => IDEXReg_0_IDEX_NPC_O(31 downto 0),
      IDEX_RA_I(31 downto 0) => RegFile_0_RA_O(31 downto 0),
      IDEX_RA_O(31 downto 0) => IDEXReg_0_IDEX_RA_O(31 downto 0),
      IDEX_RB_I(31 downto 0) => RegFile_0_RB_O(31 downto 0),
      IDEX_RB_O(31 downto 0) => IDEXReg_0_IDEX_RB_O(31 downto 0),
      IDEX_WBSEL_I(4 downto 0) => Decoder_0_WBSEL_O(4 downto 0),
      IDEX_WBSEL_O(4 downto 0) => IDEXReg_0_IDEX_WBSEL_O(4 downto 0),
      IDEX_WBWREN_I => Decoder_0_WBWREN_O,
      IDEX_WBWREN_O => IDEXReg_0_IDEX_WBWREN_O,
      RST_I => RST_1
    );
IFIDReg_0: component CPU_IFIDReg_0_0
     port map (
      CLK_I => CLK_1,
      IFID_IMM_O(15 downto 0) => IFIDReg_0_IFID_IMM_O(15 downto 0),
      IFID_IR_I(31 downto 0) => InstMem_0_IR_O(31 downto 0),
      IFID_NPC_I(31 downto 0) => Mux2to1_0_DATA_O(31 downto 0),
      IFID_NPC_O(31 downto 0) => IFIDReg_0_IFID_NPC_O(31 downto 0),
      IFID_OPC_O(5 downto 0) => IFIDReg_0_IFID_OPC_O(5 downto 0),
      IFID_RD_O(4 downto 0) => IFIDReg_0_IFID_RD_O(4 downto 0),
      IFID_RS_O(4 downto 0) => IFIDReg_0_IFID_RS_O(4 downto 0),
      IFID_RT_O(4 downto 0) => IFIDReg_0_IFID_RT_O(4 downto 0),
      RST_I => RST_1
    );
InstMem_0: component CPU_InstMem_0_0
     port map (
      CLK_I => CLK_1,
      IR_O(31 downto 0) => InstMem_0_IR_O(31 downto 0),
      PC_I(31 downto 0) => PC_0_PC_O(31 downto 0)
    );
MEMWBReg_0: component CPU_MEMWBReg_0_0
     port map (
      CLK_I => CLK_1,
      MEMWB_ALUOUT_I(31 downto 0) => EXMEMReg_0_EXMEM_ALUOUT_O(31 downto 0),
      MEMWB_ALUOUT_O(31 downto 0) => MEMWBReg_0_MEMWB_ALUOUT_O(31 downto 0),
      MEMWB_MEMDATA_I(31 downto 0) => DataMem_0_DATA_O(31 downto 0),
      MEMWB_MEMDATA_O(31 downto 0) => MEMWBReg_0_MEMWB_MEMDATA_O(31 downto 0),
      MEMWB_MUXWBC_I => EXMEMReg_0_EXMEM_MUXWBC_O,
      MEMWB_MUXWBC_O => MEMWBReg_0_MEMWB_MUXWBC_O,
      MEMWB_WBSEL_I(4 downto 0) => EXMEMReg_0_EXMEM_RBSEL_O(4 downto 0),
      MEMWB_WBSEL_O(4 downto 0) => MEMWBReg_0_MEMWB_WBSEL_O(4 downto 0),
      MEMWB_WBWREN_I => EXMEMReg_0_EXMEM_WBWREN_O,
      MEMWB_WBWREN_O => MEMWBReg_0_MEMWB_WBEN_O,
      RST_I => RST_1
    );
Mux2to1_0: component CPU_Mux2to1_0_1
     port map (
      C_I => EXMEMReg_0_EXMEM_MUXBC_O,
      DATA1_I(31 downto 0) => PCAdder_0_PCPLUS4_O(31 downto 0),
      DATA2_I(31 downto 0) => EXMEMReg_0_EXMEM_ALUOUT_O(31 downto 0),
      DATA_O(31 downto 0) => Mux2to1_0_DATA_O(31 downto 0)
    );
Mux2to1_1: component CPU_Mux2to1_1_0
     port map (
      C_I => IDEXReg_0_IDEX_MUXRAC_O,
      DATA1_I(31 downto 0) => IDEXReg_0_IDEX_RA_O(31 downto 0),
      DATA2_I(31 downto 0) => IDEXReg_0_IDEX_NPC_O(31 downto 0),
      DATA_O(31 downto 0) => Mux2to1_1_DATA_O(31 downto 0)
    );
Mux2to1_2: component CPU_Mux2to1_2_0
     port map (
      C_I => IDEXReg_0_IDEX_MUXRBC_O,
      DATA1_I(31 downto 0) => IDEXReg_0_IDEX_RB_O(31 downto 0),
      DATA2_I(31 downto 0) => IDEXReg_0_IDEX_IMM32_O(31 downto 0),
      DATA_O(31 downto 0) => Mux2to1_2_DATA_O(31 downto 0)
    );
Mux2to1_3: component CPU_Mux2to1_3_0
     port map (
      C_I => MEMWBReg_0_MEMWB_MUXWBC_O,
      DATA1_I(31 downto 0) => MEMWBReg_0_MEMWB_ALUOUT_O(31 downto 0),
      DATA2_I(31 downto 0) => MEMWBReg_0_MEMWB_MEMDATA_O(31 downto 0),
      DATA_O(31 downto 0) => MEMWBReg_0_MEMWB_WBDATA_O(31 downto 0)
    );
PCAdder_0: component CPU_PCAdder_0_0
     port map (
      CLK_I => CLK_1,
      PCPLUS4_O(31 downto 0) => PCAdder_0_PCPLUS4_O(31 downto 0),
      PC_I(31 downto 0) => PC_0_PC_O(31 downto 0)
    );
PC_0: component CPU_PC_0_0
     port map (
      CLK_I => CLK_1,
      PC_I(31 downto 0) => Mux2to1_0_DATA_O(31 downto 0),
      PC_O(31 downto 0) => PC_0_PC_O(31 downto 0),
      RST_I => RST_1
    );
RegFile_0: component CPU_RegFile_0_0
     port map (
      CLK_I => CLK_1,
      RASEL_I(4 downto 0) => IFIDReg_0_IFID_RS_O(4 downto 0),
      RA_O(31 downto 0) => RegFile_0_RA_O(31 downto 0),
      RBSEL_I(4 downto 0) => IFIDReg_0_IFID_RT_O(4 downto 0),
      RB_O(31 downto 0) => RegFile_0_RB_O(31 downto 0),
      RST_I => RST_1,
      WDATA_I(31 downto 0) => MEMWBReg_0_MEMWB_WBDATA_O(31 downto 0),
      WEN_I => MEMWBReg_0_MEMWB_WBEN_O,
      WSEL_I(4 downto 0) => MEMWBReg_0_MEMWB_WBSEL_O(4 downto 0)
    );
SignExtender_0: component CPU_SignExtender_0_0
     port map (
      CLK_I => CLK_1,
      IMM16_I(15 downto 0) => IFIDReg_0_IFID_IMM_O(15 downto 0),
      IMM32_O(31 downto 0) => SignExtender_0_IMM32_O(31 downto 0)
    );
end STRUCTURE;
