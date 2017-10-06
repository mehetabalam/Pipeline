vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../bd/CPU/ip/CPU_SignExtender_0_0/sim/CPU_SignExtender_0_0.vhd" \
"../../../bd/CPU/ip/CPU_RegFile_0_0/sim/CPU_RegFile_0_0.vhd" \
"../../../bd/CPU/ip/CPU_InstMem_0_0/sim/CPU_InstMem_0_0.vhd" \
"../../../bd/CPU/ip/CPU_IFIDReg_0_0/sim/CPU_IFIDReg_0_0.vhd" \
"../../../bd/CPU/ip/CPU_IDEXReg_0_0/sim/CPU_IDEXReg_0_0.vhd" \
"../../../bd/CPU/ip/CPU_EXMEMReg_0_0/sim/CPU_EXMEMReg_0_0.vhd" \
"../../../bd/CPU/ip/CPU_Decoder_0_0/sim/CPU_Decoder_0_0.vhd" \
"../../../bd/CPU/ip/CPU_ALU_0_0/sim/CPU_ALU_0_0.vhd" \
"../../../bd/CPU/ip/CPU_DataMem_0_0/sim/CPU_DataMem_0_0.vhd" \
"../../../bd/CPU/ip/CPU_PC_0_0/sim/CPU_PC_0_0.vhd" \
"../../../bd/CPU/hdl/CPU.vhd" \
"../../../bd/CPU/ip/CPU_PCAdder_0_0/sim/CPU_PCAdder_0_0.vhd" \
"../../../bd/CPU/ip/CPU_Mux2to1_0_1/sim/CPU_Mux2to1_0_1.vhd" \
"../../../bd/CPU/ip/CPU_Mux2to1_1_0/sim/CPU_Mux2to1_1_0.vhd" \
"../../../bd/CPU/ip/CPU_Mux2to1_2_0/sim/CPU_Mux2to1_2_0.vhd" \
"../../../bd/CPU/ip/CPU_MEMWBReg_0_0/sim/CPU_MEMWBReg_0_0.vhd" \
"../../../bd/CPU/ip/CPU_Mux2to1_3_0/sim/CPU_Mux2to1_3_0.vhd" \


