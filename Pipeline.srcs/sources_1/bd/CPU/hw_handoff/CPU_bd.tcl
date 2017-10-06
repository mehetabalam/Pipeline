
################################################################
# This is a generated script based on design: CPU
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source CPU_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ALU, BranchCond, DataMem, Decoder, EXMEMReg, IDEXReg, IFIDReg, InstMem, MEMWBReg, Mux2to1, Mux2to1, Mux2to1, Mux2to1, PCAdder, PC, RegFile, SignExtender

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
set design_name CPU

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CLK [ create_bd_port -dir I CLK ]
  set RST [ create_bd_port -dir I RST ]

  # Create instance: ALU_0, and set properties
  set block_name ALU
  set block_cell_name ALU_0
  if { [catch {set ALU_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: BranchCond_0, and set properties
  set block_name BranchCond
  set block_cell_name BranchCond_0
  if { [catch {set BranchCond_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $BranchCond_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DataMem_0, and set properties
  set block_name DataMem
  set block_cell_name DataMem_0
  if { [catch {set DataMem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DataMem_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Decoder_0, and set properties
  set block_name Decoder
  set block_cell_name Decoder_0
  if { [catch {set Decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Decoder_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: EXMEMReg_0, and set properties
  set block_name EXMEMReg
  set block_cell_name EXMEMReg_0
  if { [catch {set EXMEMReg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EXMEMReg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: IDEXReg_0, and set properties
  set block_name IDEXReg
  set block_cell_name IDEXReg_0
  if { [catch {set IDEXReg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IDEXReg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: IFIDReg_0, and set properties
  set block_name IFIDReg
  set block_cell_name IFIDReg_0
  if { [catch {set IFIDReg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IFIDReg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: InstMem_0, and set properties
  set block_name InstMem
  set block_cell_name InstMem_0
  if { [catch {set InstMem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $InstMem_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MEMWBReg_0, and set properties
  set block_name MEMWBReg
  set block_cell_name MEMWBReg_0
  if { [catch {set MEMWBReg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MEMWBReg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mux2to1_0, and set properties
  set block_name Mux2to1
  set block_cell_name Mux2to1_0
  if { [catch {set Mux2to1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux2to1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mux2to1_1, and set properties
  set block_name Mux2to1
  set block_cell_name Mux2to1_1
  if { [catch {set Mux2to1_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux2to1_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mux2to1_2, and set properties
  set block_name Mux2to1
  set block_cell_name Mux2to1_2
  if { [catch {set Mux2to1_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux2to1_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mux2to1_3, and set properties
  set block_name Mux2to1
  set block_cell_name Mux2to1_3
  if { [catch {set Mux2to1_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux2to1_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PCAdder_0, and set properties
  set block_name PCAdder
  set block_cell_name PCAdder_0
  if { [catch {set PCAdder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PCAdder_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PC_0, and set properties
  set block_name PC
  set block_cell_name PC_0
  if { [catch {set PC_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PC_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RegFile_0, and set properties
  set block_name RegFile
  set block_cell_name RegFile_0
  if { [catch {set RegFile_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RegFile_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SignExtender_0, and set properties
  set block_name SignExtender
  set block_cell_name SignExtender_0
  if { [catch {set SignExtender_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SignExtender_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net ALU_0_ALU_O [get_bd_pins ALU_0/ALU_O] [get_bd_pins EXMEMReg_0/EXMEM_ALUOUT_I]
  connect_bd_net -net BranchCond_0_MUXBC_O [get_bd_pins BranchCond_0/MUXBC_O] [get_bd_pins EXMEMReg_0/EXMEM_MUXBC_I]
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins ALU_0/CLK_I] [get_bd_pins BranchCond_0/CLK_I] [get_bd_pins DataMem_0/CLK_I] [get_bd_pins Decoder_0/CLK_I] [get_bd_pins EXMEMReg_0/CLK_I] [get_bd_pins IDEXReg_0/CLK_I] [get_bd_pins IFIDReg_0/CLK_I] [get_bd_pins InstMem_0/CLK_I] [get_bd_pins MEMWBReg_0/CLK_I] [get_bd_pins PCAdder_0/CLK_I] [get_bd_pins PC_0/CLK_I] [get_bd_pins RegFile_0/CLK_I] [get_bd_pins SignExtender_0/CLK_I]
  connect_bd_net -net DataMem_0_DATA_O [get_bd_pins DataMem_0/DATA_O] [get_bd_pins MEMWBReg_0/MEMWB_MEMDATA_I]
  connect_bd_net -net Decoder_0_ALUOP_O [get_bd_pins Decoder_0/ALUOP_O] [get_bd_pins IDEXReg_0/IDEX_ALUOP_I]
  connect_bd_net -net Decoder_0_BC_O [get_bd_pins Decoder_0/BC_O] [get_bd_pins IDEXReg_0/IDEX_BC_I]
  connect_bd_net -net Decoder_0_DMWEN_O [get_bd_pins Decoder_0/DMWEN_O] [get_bd_pins IDEXReg_0/IDEX_DMWEN_I]
  connect_bd_net -net Decoder_0_MUXRAC_O [get_bd_pins Decoder_0/MUXRAC_O] [get_bd_pins IDEXReg_0/IDEX_MUXRAC_I]
  connect_bd_net -net Decoder_0_MUXRBC_O [get_bd_pins Decoder_0/MUXRBC_O] [get_bd_pins IDEXReg_0/IDEX_MUXRBC_I]
  connect_bd_net -net Decoder_0_MUXWBC_O [get_bd_pins Decoder_0/MUXWBC_O] [get_bd_pins IDEXReg_0/IDEX_MUXWBC_I]
  connect_bd_net -net Decoder_0_WBSEL_O [get_bd_pins Decoder_0/WBSEL_O] [get_bd_pins IDEXReg_0/IDEX_WBSEL_I]
  connect_bd_net -net Decoder_0_WBWREN_O [get_bd_pins Decoder_0/WBWREN_O] [get_bd_pins IDEXReg_0/IDEX_WBWREN_I]
  connect_bd_net -net EXMEMReg_0_EXMEM_ALUOUT_O [get_bd_pins DataMem_0/ADD_I] [get_bd_pins EXMEMReg_0/EXMEM_ALUOUT_O] [get_bd_pins MEMWBReg_0/MEMWB_ALUOUT_I] [get_bd_pins Mux2to1_0/DATA2_I]
  connect_bd_net -net EXMEMReg_0_EXMEM_DMWEN_O [get_bd_pins DataMem_0/WREN_I] [get_bd_pins EXMEMReg_0/EXMEM_DMWEN_O]
  connect_bd_net -net EXMEMReg_0_EXMEM_MUXBC_O [get_bd_pins EXMEMReg_0/EXMEM_MUXBC_O] [get_bd_pins Mux2to1_0/C_I]
  connect_bd_net -net EXMEMReg_0_EXMEM_MUXWBC_O [get_bd_pins EXMEMReg_0/EXMEM_MUXWBC_O] [get_bd_pins MEMWBReg_0/MEMWB_MUXWBC_I]
  connect_bd_net -net EXMEMReg_0_EXMEM_RBSEL_O [get_bd_pins EXMEMReg_0/EXMEM_WBSEL_O] [get_bd_pins MEMWBReg_0/MEMWB_WBSEL_I]
  connect_bd_net -net EXMEMReg_0_EXMEM_RB_O [get_bd_pins DataMem_0/DATA_I] [get_bd_pins EXMEMReg_0/EXMEM_RB_O]
  connect_bd_net -net EXMEMReg_0_EXMEM_WBWREN_O [get_bd_pins EXMEMReg_0/EXMEM_WBWREN_O] [get_bd_pins MEMWBReg_0/MEMWB_WBWREN_I]
  connect_bd_net -net IDEXReg_0_IDEX_ALUOP_O [get_bd_pins ALU_0/OPCODE_I] [get_bd_pins IDEXReg_0/IDEX_ALUOP_O]
  connect_bd_net -net IDEXReg_0_IDEX_BC_O [get_bd_pins BranchCond_0/BC_I] [get_bd_pins IDEXReg_0/IDEX_BC_O]
  connect_bd_net -net IDEXReg_0_IDEX_DMWEN_O [get_bd_pins EXMEMReg_0/EXMEM_DMWEN_I] [get_bd_pins IDEXReg_0/IDEX_DMWEN_O]
  connect_bd_net -net IDEXReg_0_IDEX_IMM32_O [get_bd_pins IDEXReg_0/IDEX_IMM32_O] [get_bd_pins Mux2to1_2/DATA2_I]
  connect_bd_net -net IDEXReg_0_IDEX_MUXRAC_O [get_bd_pins IDEXReg_0/IDEX_MUXRAC_O] [get_bd_pins Mux2to1_1/C_I]
  connect_bd_net -net IDEXReg_0_IDEX_MUXRBC_O [get_bd_pins IDEXReg_0/IDEX_MUXRBC_O] [get_bd_pins Mux2to1_2/C_I]
  connect_bd_net -net IDEXReg_0_IDEX_MUXWBC_O [get_bd_pins EXMEMReg_0/EXMEM_MUXWBC_I] [get_bd_pins IDEXReg_0/IDEX_MUXWBC_O]
  connect_bd_net -net IDEXReg_0_IDEX_NPC_O [get_bd_pins IDEXReg_0/IDEX_NPC_O] [get_bd_pins Mux2to1_1/DATA2_I]
  connect_bd_net -net IDEXReg_0_IDEX_RA_O [get_bd_pins BranchCond_0/RA_I] [get_bd_pins IDEXReg_0/IDEX_RA_O] [get_bd_pins Mux2to1_1/DATA1_I]
  connect_bd_net -net IDEXReg_0_IDEX_RB_O [get_bd_pins BranchCond_0/RB_I] [get_bd_pins EXMEMReg_0/EXMEM_RB_I] [get_bd_pins IDEXReg_0/IDEX_RB_O] [get_bd_pins Mux2to1_2/DATA1_I]
  connect_bd_net -net IDEXReg_0_IDEX_WBSEL_O [get_bd_pins EXMEMReg_0/EXMEM_WBSEL_I] [get_bd_pins IDEXReg_0/IDEX_WBSEL_O]
  connect_bd_net -net IDEXReg_0_IDEX_WBWREN_O [get_bd_pins EXMEMReg_0/EXMEM_WBWREN_I] [get_bd_pins IDEXReg_0/IDEX_WBWREN_O]
  connect_bd_net -net IFIDReg_0_IFID_IMM_O [get_bd_pins IFIDReg_0/IFID_IMM_O] [get_bd_pins SignExtender_0/IMM16_I]
  connect_bd_net -net IFIDReg_0_IFID_NPC_O [get_bd_pins IDEXReg_0/IDEX_NPC_I] [get_bd_pins IFIDReg_0/IFID_NPC_O]
  connect_bd_net -net IFIDReg_0_IFID_OPC_O [get_bd_pins Decoder_0/OPC_I] [get_bd_pins IFIDReg_0/IFID_OPC_O]
  connect_bd_net -net IFIDReg_0_IFID_RD_O [get_bd_pins Decoder_0/RDSEL_I] [get_bd_pins IFIDReg_0/IFID_RD_O]
  connect_bd_net -net IFIDReg_0_IFID_RS_O [get_bd_pins IFIDReg_0/IFID_RS_O] [get_bd_pins RegFile_0/RASEL_I]
  connect_bd_net -net IFIDReg_0_IFID_RT_O [get_bd_pins Decoder_0/RTSEL_I] [get_bd_pins IFIDReg_0/IFID_RT_O] [get_bd_pins RegFile_0/RBSEL_I]
  connect_bd_net -net InstMem_0_IR_O [get_bd_pins IFIDReg_0/IFID_IR_I] [get_bd_pins InstMem_0/IR_O]
  connect_bd_net -net MEMWBReg_0_MEMWB_ALUOUT_O [get_bd_pins MEMWBReg_0/MEMWB_ALUOUT_O] [get_bd_pins Mux2to1_3/DATA1_I]
  connect_bd_net -net MEMWBReg_0_MEMWB_MEMDATA_O [get_bd_pins MEMWBReg_0/MEMWB_MEMDATA_O] [get_bd_pins Mux2to1_3/DATA2_I]
  connect_bd_net -net MEMWBReg_0_MEMWB_MUXWBC_O [get_bd_pins MEMWBReg_0/MEMWB_MUXWBC_O] [get_bd_pins Mux2to1_3/C_I]
  connect_bd_net -net MEMWBReg_0_MEMWB_WBDATA_O [get_bd_pins Mux2to1_3/DATA_O] [get_bd_pins RegFile_0/WDATA_I]
  connect_bd_net -net MEMWBReg_0_MEMWB_WBEN_O [get_bd_pins MEMWBReg_0/MEMWB_WBWREN_O] [get_bd_pins RegFile_0/WEN_I]
  connect_bd_net -net MEMWBReg_0_MEMWB_WBSEL_O [get_bd_pins MEMWBReg_0/MEMWB_WBSEL_O] [get_bd_pins RegFile_0/WSEL_I]
  connect_bd_net -net Mux2to1_0_DATA_O [get_bd_pins IFIDReg_0/IFID_NPC_I] [get_bd_pins Mux2to1_0/DATA_O] [get_bd_pins PC_0/PC_I]
  connect_bd_net -net Mux2to1_1_DATA_O [get_bd_pins ALU_0/DATA1_I] [get_bd_pins Mux2to1_1/DATA_O]
  connect_bd_net -net Mux2to1_2_DATA_O [get_bd_pins ALU_0/DATA2_I] [get_bd_pins Mux2to1_2/DATA_O]
  connect_bd_net -net PCAdder_0_PCPLUS4_O [get_bd_pins Mux2to1_0/DATA1_I] [get_bd_pins PCAdder_0/PCPLUS4_O]
  connect_bd_net -net PC_0_PC_O [get_bd_pins InstMem_0/PC_I] [get_bd_pins PCAdder_0/PC_I] [get_bd_pins PC_0/PC_O]
  connect_bd_net -net RST_1 [get_bd_ports RST] [get_bd_pins DataMem_0/RST_I] [get_bd_pins EXMEMReg_0/RST_I] [get_bd_pins IDEXReg_0/RST_I] [get_bd_pins IFIDReg_0/RST_I] [get_bd_pins MEMWBReg_0/RST_I] [get_bd_pins PC_0/RST_I] [get_bd_pins RegFile_0/RST_I]
  connect_bd_net -net RegFile_0_RA_O [get_bd_pins IDEXReg_0/IDEX_RA_I] [get_bd_pins RegFile_0/RA_O]
  connect_bd_net -net RegFile_0_RB_O [get_bd_pins IDEXReg_0/IDEX_RB_I] [get_bd_pins RegFile_0/RB_O]
  connect_bd_net -net SignExtender_0_IMM32_O [get_bd_pins IDEXReg_0/IDEX_IMM32_I] [get_bd_pins SignExtender_0/IMM32_O]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port RST -pg 1 -y 190 -defaultsOSRD
preplace port CLK -pg 1 -y 170 -defaultsOSRD
preplace inst EXMEMReg_0 -pg 1 -lvl 9 -y 360 -defaultsOSRD
preplace inst RegFile_0 -pg 1 -lvl 5 -y 140 -defaultsOSRD
preplace inst IFIDReg_0 -pg 1 -lvl 4 -y 370 -defaultsOSRD
preplace inst SignExtender_0 -pg 1 -lvl 5 -y 600 -defaultsOSRD
preplace inst DataMem_0 -pg 1 -lvl 10 -y 380 -defaultsOSRD
preplace inst PC_0 -pg 1 -lvl 1 -y 190 -defaultsOSRD
preplace inst IDEXReg_0 -pg 1 -lvl 6 -y 400 -defaultsOSRD
preplace inst PCAdder_0 -pg 1 -lvl 2 -y 180 -defaultsOSRD
preplace inst Mux2to1_0 -pg 1 -lvl 3 -y 200 -defaultsOSRD
preplace inst Mux2to1_1 -pg 1 -lvl 7 -y 330 -defaultsOSRD
preplace inst ALU_0 -pg 1 -lvl 8 -y 320 -defaultsOSRD
preplace inst Mux2to1_2 -pg 1 -lvl 7 -y 500 -defaultsOSRD
preplace inst Mux2to1_3 -pg 1 -lvl 12 -y 170 -defaultsOSRD
preplace inst Decoder_0 -pg 1 -lvl 5 -y 440 -defaultsOSRD
preplace inst InstMem_0 -pg 1 -lvl 2 -y 280 -defaultsOSRD
preplace inst MEMWBReg_0 -pg 1 -lvl 11 -y 230 -defaultsOSRD
preplace inst BranchCond_0 -pg 1 -lvl 8 -y 120 -defaultsOSRD
preplace netloc EXMEMReg_0_EXMEM_MUXBC_O 1 2 8 540 270 NJ 270 NJ 270 NJ 190 NJ 190 NJ 200 NJ 200 3020
preplace netloc CLK_1 1 0 11 10 260 280 110 NJ 110 830 110 1170 280 1550 210 NJ 210 2310 210 2640 210 3050 170 NJ
preplace netloc MEMWBReg_0_MEMWB_WBEN_O 1 4 8 1210 30 NJ 30 NJ 30 NJ 30 NJ 30 NJ 30 NJ 30 3780
preplace netloc Decoder_0_DMWEN_O 1 5 1 N
preplace netloc Decoder_0_WBSEL_O 1 5 1 1560
preplace netloc MEMWBReg_0_MEMWB_WBSEL_O 1 4 8 1210 250 NJ 170 NJ 170 NJ 40 NJ 40 NJ 40 NJ 40 3770
preplace netloc EXMEMReg_0_EXMEM_RB_O 1 9 1 N
preplace netloc IDEXReg_0_IDEX_DMWEN_O 1 6 3 NJ 430 NJ 430 NJ
preplace netloc IDEXReg_0_IDEX_NPC_O 1 6 1 1990
preplace netloc IDEXReg_0_IDEX_MUXRAC_O 1 6 1 N
preplace netloc Decoder_0_MUXWBC_O 1 5 1 N
preplace netloc IDEXReg_0_IDEX_BC_O 1 6 2 1960 110 NJ
preplace netloc IDEXReg_0_IDEX_MUXWBC_O 1 6 3 NJ 400 NJ 400 NJ
preplace netloc IDEXReg_0_IDEX_IMM32_O 1 6 1 1940
preplace netloc Mux2to1_0_DATA_O 1 0 4 30 90 NJ 90 NJ 90 810
preplace netloc Decoder_0_ALUOP_O 1 5 1 N
preplace netloc Decoder_0_BC_O 1 5 1 1530
preplace netloc DataMem_0_DATA_O 1 10 1 3350
preplace netloc IDEXReg_0_IDEX_MUXRBC_O 1 6 1 1950
preplace netloc MEMWBReg_0_MEMWB_ALUOUT_O 1 11 1 3790
preplace netloc MEMWBReg_0_MEMWB_MEMDATA_O 1 11 1 3800
preplace netloc EXMEMReg_0_EXMEM_MUXWBC_O 1 9 2 3060 210 NJ
preplace netloc IFIDReg_0_IFID_RD_O 1 4 1 1160
preplace netloc ALU_0_ALU_O 1 8 1 2590
preplace netloc IDEXReg_0_IDEX_RA_O 1 6 2 2020 130 NJ
preplace netloc RegFile_0_RB_O 1 5 1 1560
preplace netloc IDEXReg_0_IDEX_ALUOP_O 1 6 2 1980 260 NJ
preplace netloc BranchCond_0_MUXBC_O 1 8 1 2610
preplace netloc Mux2to1_1_DATA_O 1 7 1 N
preplace netloc IFIDReg_0_IFID_RS_O 1 4 1 1180
preplace netloc IFIDReg_0_IFID_IMM_O 1 4 1 1150
preplace netloc IDEXReg_0_IDEX_WBSEL_O 1 6 3 1950 240 NJ 240 NJ
preplace netloc IFIDReg_0_IFID_RT_O 1 4 1 1200
preplace netloc EXMEMReg_0_EXMEM_ALUOUT_O 1 2 9 540 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 3030 290 NJ
preplace netloc EXMEMReg_0_EXMEM_DMWEN_O 1 9 1 3040
preplace netloc IFIDReg_0_IFID_NPC_O 1 4 2 NJ 320 NJ
preplace netloc InstMem_0_IR_O 1 2 2 NJ 280 800
preplace netloc EXMEMReg_0_EXMEM_WBWREN_O 1 9 2 3080 250 NJ
preplace netloc IDEXReg_0_IDEX_WBWREN_O 1 6 3 NJ 410 NJ 410 NJ
preplace netloc MEMWBReg_0_MEMWB_WBDATA_O 1 4 9 1200 20 NJ 20 NJ 20 NJ 20 NJ 20 NJ 10 NJ 10 NJ 10 4060
preplace netloc Mux2to1_2_DATA_O 1 7 1 2300
preplace netloc IDEXReg_0_IDEX_RB_O 1 6 3 2010 220 2300 220 NJ
preplace netloc RST_1 1 0 11 20 120 NJ 120 NJ 120 820 120 1190 260 1580 220 NJ 230 NJ 230 2630 230 3090 190 NJ
preplace netloc PCAdder_0_PCPLUS4_O 1 2 1 N
preplace netloc RegFile_0_RA_O 1 5 1 1570
preplace netloc SignExtender_0_IMM32_O 1 5 1 1580
preplace netloc IFIDReg_0_IFID_OPC_O 1 4 1 1180
preplace netloc MEMWBReg_0_MEMWB_MUXWBC_O 1 11 1 N
preplace netloc EXMEMReg_0_EXMEM_RBSEL_O 1 9 2 3070 270 NJ
preplace netloc Decoder_0_WBWREN_O 1 5 1 N
preplace netloc Decoder_0_MUXRBC_O 1 5 1 N
preplace netloc Decoder_0_MUXRAC_O 1 5 1 N
preplace netloc PC_0_PC_O 1 1 1 270
levelinfo -pg 1 -10 150 410 670 1000 1390 1770 2160 2450 2830 3220 3560 3930 4080 -top 0 -bot 660
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


