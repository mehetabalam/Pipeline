// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Wed Sep 20 00:46:19 2017
// Host        : MAK running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/ACAProject/Pipeline/Pipeline.sim/sim_1/synth/timing/CPU_wrapper_time_synth.v
// Design      : RegFile
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module RegFile
   (CLK_I,
    EN_I,
    WEN_I,
    WSEL_I,
    WD_I,
    IR_I,
    RD_O,
    RS_O);
  input CLK_I;
  input EN_I;
  input WEN_I;
  input [4:0]WSEL_I;
  input [31:0]WD_I;
  input [31:0]IR_I;
  output [31:0]RD_O;
  output [31:0]RS_O;

  wire CLK_I;
  wire CLK_I_IBUF;
  wire CLK_I_IBUF_BUFG;
  wire [31:0]IR_I;
  wire [25:16]IR_I_IBUF;
  wire [31:0]RD_O;
  wire [31:0]RD_O_OBUF;
  wire [31:0]RS_O;
  wire [31:0]RS_O_OBUF;
  wire [31:0]WD_I;
  wire [31:0]WD_I_IBUF;
  wire WEN_I;
  wire WEN_I_IBUF;
  wire [4:0]WSEL_I;
  wire [4:0]WSEL_I_IBUF;
  wire [1:0]NLW_reg32_reg_1_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_reg32_reg_1_DOPBDOP_UNCONNECTED;
  wire [1:0]NLW_reg32_reg_2_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_reg32_reg_2_DOPBDOP_UNCONNECTED;

initial begin
 $sdf_annotate("CPU_wrapper_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_I_IBUF_BUFG_inst
       (.I(CLK_I_IBUF),
        .O(CLK_I_IBUF_BUFG));
  IBUF CLK_I_IBUF_inst
       (.I(CLK_I),
        .O(CLK_I_IBUF));
  IBUF \IR_I_IBUF[16]_inst 
       (.I(IR_I[16]),
        .O(IR_I_IBUF[16]));
  IBUF \IR_I_IBUF[17]_inst 
       (.I(IR_I[17]),
        .O(IR_I_IBUF[17]));
  IBUF \IR_I_IBUF[18]_inst 
       (.I(IR_I[18]),
        .O(IR_I_IBUF[18]));
  IBUF \IR_I_IBUF[19]_inst 
       (.I(IR_I[19]),
        .O(IR_I_IBUF[19]));
  IBUF \IR_I_IBUF[20]_inst 
       (.I(IR_I[20]),
        .O(IR_I_IBUF[20]));
  IBUF \IR_I_IBUF[21]_inst 
       (.I(IR_I[21]),
        .O(IR_I_IBUF[21]));
  IBUF \IR_I_IBUF[22]_inst 
       (.I(IR_I[22]),
        .O(IR_I_IBUF[22]));
  IBUF \IR_I_IBUF[23]_inst 
       (.I(IR_I[23]),
        .O(IR_I_IBUF[23]));
  IBUF \IR_I_IBUF[24]_inst 
       (.I(IR_I[24]),
        .O(IR_I_IBUF[24]));
  IBUF \IR_I_IBUF[25]_inst 
       (.I(IR_I[25]),
        .O(IR_I_IBUF[25]));
  OBUF \RD_O_OBUF[0]_inst 
       (.I(RD_O_OBUF[0]),
        .O(RD_O[0]));
  OBUF \RD_O_OBUF[10]_inst 
       (.I(RD_O_OBUF[10]),
        .O(RD_O[10]));
  OBUF \RD_O_OBUF[11]_inst 
       (.I(RD_O_OBUF[11]),
        .O(RD_O[11]));
  OBUF \RD_O_OBUF[12]_inst 
       (.I(RD_O_OBUF[12]),
        .O(RD_O[12]));
  OBUF \RD_O_OBUF[13]_inst 
       (.I(RD_O_OBUF[13]),
        .O(RD_O[13]));
  OBUF \RD_O_OBUF[14]_inst 
       (.I(RD_O_OBUF[14]),
        .O(RD_O[14]));
  OBUF \RD_O_OBUF[15]_inst 
       (.I(RD_O_OBUF[15]),
        .O(RD_O[15]));
  OBUF \RD_O_OBUF[16]_inst 
       (.I(RD_O_OBUF[16]),
        .O(RD_O[16]));
  OBUF \RD_O_OBUF[17]_inst 
       (.I(RD_O_OBUF[17]),
        .O(RD_O[17]));
  OBUF \RD_O_OBUF[18]_inst 
       (.I(RD_O_OBUF[18]),
        .O(RD_O[18]));
  OBUF \RD_O_OBUF[19]_inst 
       (.I(RD_O_OBUF[19]),
        .O(RD_O[19]));
  OBUF \RD_O_OBUF[1]_inst 
       (.I(RD_O_OBUF[1]),
        .O(RD_O[1]));
  OBUF \RD_O_OBUF[20]_inst 
       (.I(RD_O_OBUF[20]),
        .O(RD_O[20]));
  OBUF \RD_O_OBUF[21]_inst 
       (.I(RD_O_OBUF[21]),
        .O(RD_O[21]));
  OBUF \RD_O_OBUF[22]_inst 
       (.I(RD_O_OBUF[22]),
        .O(RD_O[22]));
  OBUF \RD_O_OBUF[23]_inst 
       (.I(RD_O_OBUF[23]),
        .O(RD_O[23]));
  OBUF \RD_O_OBUF[24]_inst 
       (.I(RD_O_OBUF[24]),
        .O(RD_O[24]));
  OBUF \RD_O_OBUF[25]_inst 
       (.I(RD_O_OBUF[25]),
        .O(RD_O[25]));
  OBUF \RD_O_OBUF[26]_inst 
       (.I(RD_O_OBUF[26]),
        .O(RD_O[26]));
  OBUF \RD_O_OBUF[27]_inst 
       (.I(RD_O_OBUF[27]),
        .O(RD_O[27]));
  OBUF \RD_O_OBUF[28]_inst 
       (.I(RD_O_OBUF[28]),
        .O(RD_O[28]));
  OBUF \RD_O_OBUF[29]_inst 
       (.I(RD_O_OBUF[29]),
        .O(RD_O[29]));
  OBUF \RD_O_OBUF[2]_inst 
       (.I(RD_O_OBUF[2]),
        .O(RD_O[2]));
  OBUF \RD_O_OBUF[30]_inst 
       (.I(RD_O_OBUF[30]),
        .O(RD_O[30]));
  OBUF \RD_O_OBUF[31]_inst 
       (.I(RD_O_OBUF[31]),
        .O(RD_O[31]));
  OBUF \RD_O_OBUF[3]_inst 
       (.I(RD_O_OBUF[3]),
        .O(RD_O[3]));
  OBUF \RD_O_OBUF[4]_inst 
       (.I(RD_O_OBUF[4]),
        .O(RD_O[4]));
  OBUF \RD_O_OBUF[5]_inst 
       (.I(RD_O_OBUF[5]),
        .O(RD_O[5]));
  OBUF \RD_O_OBUF[6]_inst 
       (.I(RD_O_OBUF[6]),
        .O(RD_O[6]));
  OBUF \RD_O_OBUF[7]_inst 
       (.I(RD_O_OBUF[7]),
        .O(RD_O[7]));
  OBUF \RD_O_OBUF[8]_inst 
       (.I(RD_O_OBUF[8]),
        .O(RD_O[8]));
  OBUF \RD_O_OBUF[9]_inst 
       (.I(RD_O_OBUF[9]),
        .O(RD_O[9]));
  OBUF \RS_O_OBUF[0]_inst 
       (.I(RS_O_OBUF[0]),
        .O(RS_O[0]));
  OBUF \RS_O_OBUF[10]_inst 
       (.I(RS_O_OBUF[10]),
        .O(RS_O[10]));
  OBUF \RS_O_OBUF[11]_inst 
       (.I(RS_O_OBUF[11]),
        .O(RS_O[11]));
  OBUF \RS_O_OBUF[12]_inst 
       (.I(RS_O_OBUF[12]),
        .O(RS_O[12]));
  OBUF \RS_O_OBUF[13]_inst 
       (.I(RS_O_OBUF[13]),
        .O(RS_O[13]));
  OBUF \RS_O_OBUF[14]_inst 
       (.I(RS_O_OBUF[14]),
        .O(RS_O[14]));
  OBUF \RS_O_OBUF[15]_inst 
       (.I(RS_O_OBUF[15]),
        .O(RS_O[15]));
  OBUF \RS_O_OBUF[16]_inst 
       (.I(RS_O_OBUF[16]),
        .O(RS_O[16]));
  OBUF \RS_O_OBUF[17]_inst 
       (.I(RS_O_OBUF[17]),
        .O(RS_O[17]));
  OBUF \RS_O_OBUF[18]_inst 
       (.I(RS_O_OBUF[18]),
        .O(RS_O[18]));
  OBUF \RS_O_OBUF[19]_inst 
       (.I(RS_O_OBUF[19]),
        .O(RS_O[19]));
  OBUF \RS_O_OBUF[1]_inst 
       (.I(RS_O_OBUF[1]),
        .O(RS_O[1]));
  OBUF \RS_O_OBUF[20]_inst 
       (.I(RS_O_OBUF[20]),
        .O(RS_O[20]));
  OBUF \RS_O_OBUF[21]_inst 
       (.I(RS_O_OBUF[21]),
        .O(RS_O[21]));
  OBUF \RS_O_OBUF[22]_inst 
       (.I(RS_O_OBUF[22]),
        .O(RS_O[22]));
  OBUF \RS_O_OBUF[23]_inst 
       (.I(RS_O_OBUF[23]),
        .O(RS_O[23]));
  OBUF \RS_O_OBUF[24]_inst 
       (.I(RS_O_OBUF[24]),
        .O(RS_O[24]));
  OBUF \RS_O_OBUF[25]_inst 
       (.I(RS_O_OBUF[25]),
        .O(RS_O[25]));
  OBUF \RS_O_OBUF[26]_inst 
       (.I(RS_O_OBUF[26]),
        .O(RS_O[26]));
  OBUF \RS_O_OBUF[27]_inst 
       (.I(RS_O_OBUF[27]),
        .O(RS_O[27]));
  OBUF \RS_O_OBUF[28]_inst 
       (.I(RS_O_OBUF[28]),
        .O(RS_O[28]));
  OBUF \RS_O_OBUF[29]_inst 
       (.I(RS_O_OBUF[29]),
        .O(RS_O[29]));
  OBUF \RS_O_OBUF[2]_inst 
       (.I(RS_O_OBUF[2]),
        .O(RS_O[2]));
  OBUF \RS_O_OBUF[30]_inst 
       (.I(RS_O_OBUF[30]),
        .O(RS_O[30]));
  OBUF \RS_O_OBUF[31]_inst 
       (.I(RS_O_OBUF[31]),
        .O(RS_O[31]));
  OBUF \RS_O_OBUF[3]_inst 
       (.I(RS_O_OBUF[3]),
        .O(RS_O[3]));
  OBUF \RS_O_OBUF[4]_inst 
       (.I(RS_O_OBUF[4]),
        .O(RS_O[4]));
  OBUF \RS_O_OBUF[5]_inst 
       (.I(RS_O_OBUF[5]),
        .O(RS_O[5]));
  OBUF \RS_O_OBUF[6]_inst 
       (.I(RS_O_OBUF[6]),
        .O(RS_O[6]));
  OBUF \RS_O_OBUF[7]_inst 
       (.I(RS_O_OBUF[7]),
        .O(RS_O[7]));
  OBUF \RS_O_OBUF[8]_inst 
       (.I(RS_O_OBUF[8]),
        .O(RS_O[8]));
  OBUF \RS_O_OBUF[9]_inst 
       (.I(RS_O_OBUF[9]),
        .O(RS_O[9]));
  IBUF \WD_I_IBUF[0]_inst 
       (.I(WD_I[0]),
        .O(WD_I_IBUF[0]));
  IBUF \WD_I_IBUF[10]_inst 
       (.I(WD_I[10]),
        .O(WD_I_IBUF[10]));
  IBUF \WD_I_IBUF[11]_inst 
       (.I(WD_I[11]),
        .O(WD_I_IBUF[11]));
  IBUF \WD_I_IBUF[12]_inst 
       (.I(WD_I[12]),
        .O(WD_I_IBUF[12]));
  IBUF \WD_I_IBUF[13]_inst 
       (.I(WD_I[13]),
        .O(WD_I_IBUF[13]));
  IBUF \WD_I_IBUF[14]_inst 
       (.I(WD_I[14]),
        .O(WD_I_IBUF[14]));
  IBUF \WD_I_IBUF[15]_inst 
       (.I(WD_I[15]),
        .O(WD_I_IBUF[15]));
  IBUF \WD_I_IBUF[16]_inst 
       (.I(WD_I[16]),
        .O(WD_I_IBUF[16]));
  IBUF \WD_I_IBUF[17]_inst 
       (.I(WD_I[17]),
        .O(WD_I_IBUF[17]));
  IBUF \WD_I_IBUF[18]_inst 
       (.I(WD_I[18]),
        .O(WD_I_IBUF[18]));
  IBUF \WD_I_IBUF[19]_inst 
       (.I(WD_I[19]),
        .O(WD_I_IBUF[19]));
  IBUF \WD_I_IBUF[1]_inst 
       (.I(WD_I[1]),
        .O(WD_I_IBUF[1]));
  IBUF \WD_I_IBUF[20]_inst 
       (.I(WD_I[20]),
        .O(WD_I_IBUF[20]));
  IBUF \WD_I_IBUF[21]_inst 
       (.I(WD_I[21]),
        .O(WD_I_IBUF[21]));
  IBUF \WD_I_IBUF[22]_inst 
       (.I(WD_I[22]),
        .O(WD_I_IBUF[22]));
  IBUF \WD_I_IBUF[23]_inst 
       (.I(WD_I[23]),
        .O(WD_I_IBUF[23]));
  IBUF \WD_I_IBUF[24]_inst 
       (.I(WD_I[24]),
        .O(WD_I_IBUF[24]));
  IBUF \WD_I_IBUF[25]_inst 
       (.I(WD_I[25]),
        .O(WD_I_IBUF[25]));
  IBUF \WD_I_IBUF[26]_inst 
       (.I(WD_I[26]),
        .O(WD_I_IBUF[26]));
  IBUF \WD_I_IBUF[27]_inst 
       (.I(WD_I[27]),
        .O(WD_I_IBUF[27]));
  IBUF \WD_I_IBUF[28]_inst 
       (.I(WD_I[28]),
        .O(WD_I_IBUF[28]));
  IBUF \WD_I_IBUF[29]_inst 
       (.I(WD_I[29]),
        .O(WD_I_IBUF[29]));
  IBUF \WD_I_IBUF[2]_inst 
       (.I(WD_I[2]),
        .O(WD_I_IBUF[2]));
  IBUF \WD_I_IBUF[30]_inst 
       (.I(WD_I[30]),
        .O(WD_I_IBUF[30]));
  IBUF \WD_I_IBUF[31]_inst 
       (.I(WD_I[31]),
        .O(WD_I_IBUF[31]));
  IBUF \WD_I_IBUF[3]_inst 
       (.I(WD_I[3]),
        .O(WD_I_IBUF[3]));
  IBUF \WD_I_IBUF[4]_inst 
       (.I(WD_I[4]),
        .O(WD_I_IBUF[4]));
  IBUF \WD_I_IBUF[5]_inst 
       (.I(WD_I[5]),
        .O(WD_I_IBUF[5]));
  IBUF \WD_I_IBUF[6]_inst 
       (.I(WD_I[6]),
        .O(WD_I_IBUF[6]));
  IBUF \WD_I_IBUF[7]_inst 
       (.I(WD_I[7]),
        .O(WD_I_IBUF[7]));
  IBUF \WD_I_IBUF[8]_inst 
       (.I(WD_I[8]),
        .O(WD_I_IBUF[8]));
  IBUF \WD_I_IBUF[9]_inst 
       (.I(WD_I[9]),
        .O(WD_I_IBUF[9]));
  IBUF WEN_I_IBUF_inst
       (.I(WEN_I),
        .O(WEN_I_IBUF));
  IBUF \WSEL_I_IBUF[0]_inst 
       (.I(WSEL_I[0]),
        .O(WSEL_I_IBUF[0]));
  IBUF \WSEL_I_IBUF[1]_inst 
       (.I(WSEL_I[1]),
        .O(WSEL_I_IBUF[1]));
  IBUF \WSEL_I_IBUF[2]_inst 
       (.I(WSEL_I[2]),
        .O(WSEL_I_IBUF[2]));
  IBUF \WSEL_I_IBUF[3]_inst 
       (.I(WSEL_I[3]),
        .O(WSEL_I_IBUF[3]));
  IBUF \WSEL_I_IBUF[4]_inst 
       (.I(WSEL_I[4]),
        .O(WSEL_I_IBUF[4]));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "reg32" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "71" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    reg32_reg_1
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,IR_I_IBUF[25:21],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,WSEL_I_IBUF,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK_I_IBUF_BUFG),
        .CLKBWRCLK(CLK_I_IBUF_BUFG),
        .DIADI(WD_I_IBUF[15:0]),
        .DIBDI(WD_I_IBUF[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(RD_O_OBUF[15:0]),
        .DOBDO(RD_O_OBUF[31:16]),
        .DOPADOP(NLW_reg32_reg_1_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_reg32_reg_1_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({WEN_I_IBUF,WEN_I_IBUF,WEN_I_IBUF,WEN_I_IBUF}));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "reg32" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "71" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    reg32_reg_2
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,IR_I_IBUF[20:16],1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,WSEL_I_IBUF,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK_I_IBUF_BUFG),
        .CLKBWRCLK(CLK_I_IBUF_BUFG),
        .DIADI(WD_I_IBUF[15:0]),
        .DIBDI(WD_I_IBUF[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(RS_O_OBUF[15:0]),
        .DOBDO(RS_O_OBUF[31:16]),
        .DOPADOP(NLW_reg32_reg_2_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_reg32_reg_2_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({WEN_I_IBUF,WEN_I_IBUF,WEN_I_IBUF,WEN_I_IBUF}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif