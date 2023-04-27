
################################################################
# This is a generated script based on design: AckChecker
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
set scripts_vivado_version 2019.1
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
# source AckChecker_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name AckChecker

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
  variable design_name

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
  set AcknowledgeErrorGroup0 [ create_bd_port -dir O -from 15 -to 0 AcknowledgeErrorGroup0 ]
  set AcknowledgeErrorGroup1 [ create_bd_port -dir O -from 15 -to 0 AcknowledgeErrorGroup1 ]
  set AcknowledgeProtectionEnableGroup0 [ create_bd_port -dir I -from 15 -to 0 AcknowledgeProtectionEnableGroup0 ]
  set AcknowledgeProtectionEnableGroup1 [ create_bd_port -dir I -from 15 -to 0 AcknowledgeProtectionEnableGroup1 ]
  set Clk_0 [ create_bd_port -dir I -type clk Clk_0 ]
  set CurrentErrorGroup0 [ create_bd_port -dir O -from 15 -to 0 CurrentErrorGroup0 ]
  set CurrentErrorGroup1 [ create_bd_port -dir O -from 15 -to 0 CurrentErrorGroup1 ]
  set CurrentProtectionEnableGroup0 [ create_bd_port -dir I -from 15 -to 0 CurrentProtectionEnableGroup0 ]
  set CurrentProtectionEnableGroup1 [ create_bd_port -dir I -from 15 -to 0 CurrentProtectionEnableGroup1 ]
  set MaskAcknowledgeGroup0 [ create_bd_port -dir I -from 15 -to 0 MaskAcknowledgeGroup0 ]
  set MaskAcknowledgeGroup1 [ create_bd_port -dir I -from 15 -to 0 MaskAcknowledgeGroup1 ]
  set MaskCurrentGroup0 [ create_bd_port -dir I -from 15 -to 0 MaskCurrentGroup0 ]
  set MaskCurrentGroup1 [ create_bd_port -dir I -from 15 -to 0 MaskCurrentGroup1 ]
  set Ready_0 [ create_bd_port -dir I Ready_0 ]
  set ReceiverGroup0 [ create_bd_port -dir I -from 15 -to 0 ReceiverGroup0 ]
  set ReceiverGroup1 [ create_bd_port -dir I -from 15 -to 0 ReceiverGroup1 ]
  set TransmitterGroup0 [ create_bd_port -dir I -from 15 -to 0 TransmitterGroup0 ]
  set TransmitterGroup1 [ create_bd_port -dir I -from 15 -to 0 TransmitterGroup1 ]
  set ackTime_0 [ create_bd_port -dir I -from 31 -to 0 ackTime_0 ]
  set reset_0 [ create_bd_port -dir I -type rst reset_0 ]

  # Create instance: AckCheckerConcept_0, and set properties
  set AckCheckerConcept_0 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_0 ]

  # Create instance: AckCheckerConcept_1, and set properties
  set AckCheckerConcept_1 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_1 ]

  # Create instance: AckCheckerConcept_2, and set properties
  set AckCheckerConcept_2 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_2 ]

  # Create instance: AckCheckerConcept_3, and set properties
  set AckCheckerConcept_3 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_3 ]

  # Create instance: AckCheckerConcept_4, and set properties
  set AckCheckerConcept_4 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_4 ]

  # Create instance: AckCheckerConcept_5, and set properties
  set AckCheckerConcept_5 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_5 ]

  # Create instance: AckCheckerConcept_6, and set properties
  set AckCheckerConcept_6 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_6 ]

  # Create instance: AckCheckerConcept_7, and set properties
  set AckCheckerConcept_7 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_7 ]

  # Create instance: AckCheckerConcept_8, and set properties
  set AckCheckerConcept_8 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_8 ]

  # Create instance: AckCheckerConcept_9, and set properties
  set AckCheckerConcept_9 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_9 ]

  # Create instance: AckCheckerConcept_10, and set properties
  set AckCheckerConcept_10 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_10 ]

  # Create instance: AckCheckerConcept_11, and set properties
  set AckCheckerConcept_11 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_11 ]

  # Create instance: AckCheckerConcept_12, and set properties
  set AckCheckerConcept_12 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_12 ]

  # Create instance: AckCheckerConcept_13, and set properties
  set AckCheckerConcept_13 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_13 ]

  # Create instance: AckCheckerConcept_14, and set properties
  set AckCheckerConcept_14 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_14 ]

  # Create instance: AckCheckerConcept_15, and set properties
  set AckCheckerConcept_15 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_15 ]

  # Create instance: AckCheckerConcept_16, and set properties
  set AckCheckerConcept_16 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_16 ]

  # Create instance: AckCheckerConcept_17, and set properties
  set AckCheckerConcept_17 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_17 ]

  # Create instance: AckCheckerConcept_18, and set properties
  set AckCheckerConcept_18 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_18 ]

  # Create instance: AckCheckerConcept_19, and set properties
  set AckCheckerConcept_19 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_19 ]

  # Create instance: AckCheckerConcept_20, and set properties
  set AckCheckerConcept_20 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_20 ]

  # Create instance: AckCheckerConcept_21, and set properties
  set AckCheckerConcept_21 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_21 ]

  # Create instance: AckCheckerConcept_22, and set properties
  set AckCheckerConcept_22 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_22 ]

  # Create instance: AckCheckerConcept_23, and set properties
  set AckCheckerConcept_23 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_23 ]

  # Create instance: AckCheckerConcept_24, and set properties
  set AckCheckerConcept_24 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_24 ]

  # Create instance: AckCheckerConcept_25, and set properties
  set AckCheckerConcept_25 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_25 ]

  # Create instance: AckCheckerConcept_26, and set properties
  set AckCheckerConcept_26 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_26 ]

  # Create instance: AckCheckerConcept_27, and set properties
  set AckCheckerConcept_27 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_27 ]

  # Create instance: AckCheckerConcept_28, and set properties
  set AckCheckerConcept_28 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_28 ]

  # Create instance: AckCheckerConcept_29, and set properties
  set AckCheckerConcept_29 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_29 ]

  # Create instance: AckCheckerConcept_30, and set properties
  set AckCheckerConcept_30 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_30 ]

  # Create instance: AckCheckerConcept_31, and set properties
  set AckCheckerConcept_31 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:AckCheckerConcept:1.0 AckCheckerConcept_31 ]

  # Create instance: BusBlock16IN_0, and set properties
  set BusBlock16IN_0 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_0 ]

  # Create instance: BusBlock16IN_1, and set properties
  set BusBlock16IN_1 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_1 ]

  # Create instance: BusBlock16IN_2, and set properties
  set BusBlock16IN_2 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_2 ]

  # Create instance: BusBlock16IN_3, and set properties
  set BusBlock16IN_3 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_3 ]

  # Create instance: BusBlock16IN_4, and set properties
  set BusBlock16IN_4 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_4 ]

  # Create instance: BusBlock16IN_5, and set properties
  set BusBlock16IN_5 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_5 ]

  # Create instance: BusBlock16IN_6, and set properties
  set BusBlock16IN_6 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_6 ]

  # Create instance: BusBlock16IN_7, and set properties
  set BusBlock16IN_7 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16IN:1.0 BusBlock16IN_7 ]

  # Create instance: BusBlock16OUT_0, and set properties
  set BusBlock16OUT_0 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16OUT:1.0 BusBlock16OUT_0 ]

  # Create instance: BusBlock16OUT_1, and set properties
  set BusBlock16OUT_1 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16OUT:1.0 BusBlock16OUT_1 ]

  # Create instance: BusBlock16OUT_2, and set properties
  set BusBlock16OUT_2 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16OUT:1.0 BusBlock16OUT_2 ]

  # Create instance: BusBlock16OUT_3, and set properties
  set BusBlock16OUT_3 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:BusBlock16OUT:1.0 BusBlock16OUT_3 ]

  # Create port connections
  connect_bd_net -net AckCheckerConcept_0_AckPr [get_bd_pins AckCheckerConcept_0/AckPr] [get_bd_pins BusBlock16OUT_0/In0]
  connect_bd_net -net AckCheckerConcept_0_currentPr [get_bd_pins AckCheckerConcept_0/currentPr] [get_bd_pins BusBlock16OUT_3/In0]
  connect_bd_net -net AckCheckerConcept_10_AckPr [get_bd_pins AckCheckerConcept_10/AckPr] [get_bd_pins BusBlock16OUT_0/In10]
  connect_bd_net -net AckCheckerConcept_10_currentPr [get_bd_pins AckCheckerConcept_10/currentPr] [get_bd_pins BusBlock16OUT_3/In10]
  connect_bd_net -net AckCheckerConcept_11_AckPr [get_bd_pins AckCheckerConcept_11/AckPr] [get_bd_pins BusBlock16OUT_0/In11]
  connect_bd_net -net AckCheckerConcept_11_currentPr [get_bd_pins AckCheckerConcept_11/currentPr] [get_bd_pins BusBlock16OUT_3/In11]
  connect_bd_net -net AckCheckerConcept_12_AckPr [get_bd_pins AckCheckerConcept_12/AckPr] [get_bd_pins BusBlock16OUT_0/In12]
  connect_bd_net -net AckCheckerConcept_12_currentPr [get_bd_pins AckCheckerConcept_12/currentPr] [get_bd_pins BusBlock16OUT_3/In12]
  connect_bd_net -net AckCheckerConcept_13_AckPr [get_bd_pins AckCheckerConcept_13/AckPr] [get_bd_pins BusBlock16OUT_0/In13]
  connect_bd_net -net AckCheckerConcept_13_currentPr [get_bd_pins AckCheckerConcept_13/currentPr] [get_bd_pins BusBlock16OUT_3/In13]
  connect_bd_net -net AckCheckerConcept_14_AckPr [get_bd_pins AckCheckerConcept_14/AckPr] [get_bd_pins BusBlock16OUT_0/In14]
  connect_bd_net -net AckCheckerConcept_14_currentPr [get_bd_pins AckCheckerConcept_14/currentPr] [get_bd_pins BusBlock16OUT_3/In14]
  connect_bd_net -net AckCheckerConcept_15_AckPr [get_bd_pins AckCheckerConcept_15/AckPr] [get_bd_pins BusBlock16OUT_0/In15]
  connect_bd_net -net AckCheckerConcept_15_currentPr [get_bd_pins AckCheckerConcept_15/currentPr] [get_bd_pins BusBlock16OUT_3/In15]
  connect_bd_net -net AckCheckerConcept_16_AckPr [get_bd_pins AckCheckerConcept_16/AckPr] [get_bd_pins BusBlock16OUT_1/In0]
  connect_bd_net -net AckCheckerConcept_16_currentPr [get_bd_pins AckCheckerConcept_16/currentPr] [get_bd_pins BusBlock16OUT_2/In0]
  connect_bd_net -net AckCheckerConcept_17_AckPr [get_bd_pins AckCheckerConcept_17/AckPr] [get_bd_pins BusBlock16OUT_1/In1]
  connect_bd_net -net AckCheckerConcept_17_currentPr [get_bd_pins AckCheckerConcept_17/currentPr] [get_bd_pins BusBlock16OUT_2/In1]
  connect_bd_net -net AckCheckerConcept_18_AckPr [get_bd_pins AckCheckerConcept_18/AckPr] [get_bd_pins BusBlock16OUT_1/In2]
  connect_bd_net -net AckCheckerConcept_18_currentPr [get_bd_pins AckCheckerConcept_18/currentPr] [get_bd_pins BusBlock16OUT_2/In2]
  connect_bd_net -net AckCheckerConcept_19_AckPr [get_bd_pins AckCheckerConcept_19/AckPr] [get_bd_pins BusBlock16OUT_1/In3]
  connect_bd_net -net AckCheckerConcept_19_currentPr [get_bd_pins AckCheckerConcept_19/currentPr] [get_bd_pins BusBlock16OUT_2/In3]
  connect_bd_net -net AckCheckerConcept_1_AckPr [get_bd_pins AckCheckerConcept_1/AckPr] [get_bd_pins BusBlock16OUT_0/In1]
  connect_bd_net -net AckCheckerConcept_1_currentPr [get_bd_pins AckCheckerConcept_1/currentPr] [get_bd_pins BusBlock16OUT_3/In1]
  connect_bd_net -net AckCheckerConcept_20_AckPr [get_bd_pins AckCheckerConcept_20/AckPr] [get_bd_pins BusBlock16OUT_1/In4]
  connect_bd_net -net AckCheckerConcept_20_currentPr [get_bd_pins AckCheckerConcept_20/currentPr] [get_bd_pins BusBlock16OUT_2/In4]
  connect_bd_net -net AckCheckerConcept_21_AckPr [get_bd_pins AckCheckerConcept_21/AckPr] [get_bd_pins BusBlock16OUT_1/In5]
  connect_bd_net -net AckCheckerConcept_21_currentPr [get_bd_pins AckCheckerConcept_21/currentPr] [get_bd_pins BusBlock16OUT_2/In5]
  connect_bd_net -net AckCheckerConcept_22_AckPr [get_bd_pins AckCheckerConcept_22/AckPr] [get_bd_pins BusBlock16OUT_1/In6]
  connect_bd_net -net AckCheckerConcept_22_currentPr [get_bd_pins AckCheckerConcept_22/currentPr] [get_bd_pins BusBlock16OUT_2/In6]
  connect_bd_net -net AckCheckerConcept_23_AckPr [get_bd_pins AckCheckerConcept_23/AckPr] [get_bd_pins BusBlock16OUT_1/In7]
  connect_bd_net -net AckCheckerConcept_23_currentPr [get_bd_pins AckCheckerConcept_23/currentPr] [get_bd_pins BusBlock16OUT_2/In7]
  connect_bd_net -net AckCheckerConcept_24_AckPr [get_bd_pins AckCheckerConcept_24/AckPr] [get_bd_pins BusBlock16OUT_1/In8]
  connect_bd_net -net AckCheckerConcept_24_currentPr [get_bd_pins AckCheckerConcept_24/currentPr] [get_bd_pins BusBlock16OUT_2/In8]
  connect_bd_net -net AckCheckerConcept_25_AckPr [get_bd_pins AckCheckerConcept_25/AckPr] [get_bd_pins BusBlock16OUT_1/In9]
  connect_bd_net -net AckCheckerConcept_25_currentPr [get_bd_pins AckCheckerConcept_25/currentPr] [get_bd_pins BusBlock16OUT_2/In9]
  connect_bd_net -net AckCheckerConcept_26_AckPr [get_bd_pins AckCheckerConcept_26/AckPr] [get_bd_pins BusBlock16OUT_1/In10]
  connect_bd_net -net AckCheckerConcept_26_currentPr [get_bd_pins AckCheckerConcept_26/currentPr] [get_bd_pins BusBlock16OUT_2/In10]
  connect_bd_net -net AckCheckerConcept_27_AckPr [get_bd_pins AckCheckerConcept_27/AckPr] [get_bd_pins BusBlock16OUT_1/In11]
  connect_bd_net -net AckCheckerConcept_27_currentPr [get_bd_pins AckCheckerConcept_27/currentPr] [get_bd_pins BusBlock16OUT_2/In11]
  connect_bd_net -net AckCheckerConcept_28_AckPr [get_bd_pins AckCheckerConcept_28/AckPr] [get_bd_pins BusBlock16OUT_1/In12]
  connect_bd_net -net AckCheckerConcept_28_currentPr [get_bd_pins AckCheckerConcept_28/currentPr] [get_bd_pins BusBlock16OUT_2/In12]
  connect_bd_net -net AckCheckerConcept_29_AckPr [get_bd_pins AckCheckerConcept_29/AckPr] [get_bd_pins BusBlock16OUT_1/In13]
  connect_bd_net -net AckCheckerConcept_29_currentPr [get_bd_pins AckCheckerConcept_29/currentPr] [get_bd_pins BusBlock16OUT_2/In13]
  connect_bd_net -net AckCheckerConcept_2_AckPr [get_bd_pins AckCheckerConcept_2/AckPr] [get_bd_pins BusBlock16OUT_0/In2]
  connect_bd_net -net AckCheckerConcept_2_currentPr [get_bd_pins AckCheckerConcept_2/currentPr] [get_bd_pins BusBlock16OUT_3/In2]
  connect_bd_net -net AckCheckerConcept_30_AckPr [get_bd_pins AckCheckerConcept_30/AckPr] [get_bd_pins BusBlock16OUT_1/In14]
  connect_bd_net -net AckCheckerConcept_30_currentPr [get_bd_pins AckCheckerConcept_30/currentPr] [get_bd_pins BusBlock16OUT_2/In14]
  connect_bd_net -net AckCheckerConcept_31_AckPr [get_bd_pins AckCheckerConcept_31/AckPr] [get_bd_pins BusBlock16OUT_1/In15]
  connect_bd_net -net AckCheckerConcept_31_currentPr [get_bd_pins AckCheckerConcept_31/currentPr] [get_bd_pins BusBlock16OUT_2/In15]
  connect_bd_net -net AckCheckerConcept_3_AckPr [get_bd_pins AckCheckerConcept_3/AckPr] [get_bd_pins BusBlock16OUT_0/In3]
  connect_bd_net -net AckCheckerConcept_3_currentPr [get_bd_pins AckCheckerConcept_3/currentPr] [get_bd_pins BusBlock16OUT_3/In3]
  connect_bd_net -net AckCheckerConcept_4_AckPr [get_bd_pins AckCheckerConcept_4/AckPr] [get_bd_pins BusBlock16OUT_0/In4]
  connect_bd_net -net AckCheckerConcept_4_currentPr [get_bd_pins AckCheckerConcept_4/currentPr] [get_bd_pins BusBlock16OUT_3/In4]
  connect_bd_net -net AckCheckerConcept_5_AckPr [get_bd_pins AckCheckerConcept_5/AckPr] [get_bd_pins BusBlock16OUT_0/In5]
  connect_bd_net -net AckCheckerConcept_5_currentPr [get_bd_pins AckCheckerConcept_5/currentPr] [get_bd_pins BusBlock16OUT_3/In5]
  connect_bd_net -net AckCheckerConcept_6_AckPr [get_bd_pins AckCheckerConcept_6/AckPr] [get_bd_pins BusBlock16OUT_0/In6]
  connect_bd_net -net AckCheckerConcept_6_currentPr [get_bd_pins AckCheckerConcept_6/currentPr] [get_bd_pins BusBlock16OUT_3/In6]
  connect_bd_net -net AckCheckerConcept_7_AckPr [get_bd_pins AckCheckerConcept_7/AckPr] [get_bd_pins BusBlock16OUT_0/In7]
  connect_bd_net -net AckCheckerConcept_7_currentPr [get_bd_pins AckCheckerConcept_7/currentPr] [get_bd_pins BusBlock16OUT_3/In7]
  connect_bd_net -net AckCheckerConcept_8_AckPr [get_bd_pins AckCheckerConcept_8/AckPr] [get_bd_pins BusBlock16OUT_0/In8]
  connect_bd_net -net AckCheckerConcept_8_currentPr [get_bd_pins AckCheckerConcept_8/currentPr] [get_bd_pins BusBlock16OUT_3/In8]
  connect_bd_net -net AckCheckerConcept_9_AckPr [get_bd_pins AckCheckerConcept_9/AckPr] [get_bd_pins BusBlock16OUT_0/In9]
  connect_bd_net -net AckCheckerConcept_9_currentPr [get_bd_pins AckCheckerConcept_9/currentPr] [get_bd_pins BusBlock16OUT_3/In9]
  connect_bd_net -net AcknowledgeProtectionEnableGroup0_1 [get_bd_ports AcknowledgeProtectionEnableGroup0] [get_bd_pins BusBlock16IN_0/Bus_16IN]
  connect_bd_net -net AcknowledgeProtectionEnableGroup1_1 [get_bd_ports AcknowledgeProtectionEnableGroup1] [get_bd_pins BusBlock16IN_1/Bus_16IN]
  connect_bd_net -net BusBlock16IN_0_Out0 [get_bd_pins AckCheckerConcept_0/AckPr_en] [get_bd_pins BusBlock16IN_0/Out0]
  connect_bd_net -net BusBlock16IN_0_Out1 [get_bd_pins AckCheckerConcept_1/AckPr_en] [get_bd_pins BusBlock16IN_0/Out1]
  connect_bd_net -net BusBlock16IN_0_Out2 [get_bd_pins AckCheckerConcept_2/AckPr_en] [get_bd_pins BusBlock16IN_0/Out2]
  connect_bd_net -net BusBlock16IN_0_Out3 [get_bd_pins AckCheckerConcept_3/AckPr_en] [get_bd_pins BusBlock16IN_0/Out3]
  connect_bd_net -net BusBlock16IN_0_Out4 [get_bd_pins AckCheckerConcept_4/AckPr_en] [get_bd_pins BusBlock16IN_0/Out4]
  connect_bd_net -net BusBlock16IN_0_Out5 [get_bd_pins AckCheckerConcept_5/AckPr_en] [get_bd_pins BusBlock16IN_0/Out5]
  connect_bd_net -net BusBlock16IN_0_Out6 [get_bd_pins AckCheckerConcept_6/AckPr_en] [get_bd_pins BusBlock16IN_0/Out6]
  connect_bd_net -net BusBlock16IN_0_Out7 [get_bd_pins AckCheckerConcept_7/AckPr_en] [get_bd_pins BusBlock16IN_0/Out7]
  connect_bd_net -net BusBlock16IN_0_Out8 [get_bd_pins AckCheckerConcept_8/AckPr_en] [get_bd_pins BusBlock16IN_0/Out8]
  connect_bd_net -net BusBlock16IN_0_Out9 [get_bd_pins AckCheckerConcept_9/AckPr_en] [get_bd_pins BusBlock16IN_0/Out9]
  connect_bd_net -net BusBlock16IN_0_Out10 [get_bd_pins AckCheckerConcept_10/AckPr_en] [get_bd_pins BusBlock16IN_0/Out10]
  connect_bd_net -net BusBlock16IN_0_Out11 [get_bd_pins AckCheckerConcept_11/AckPr_en] [get_bd_pins BusBlock16IN_0/Out11]
  connect_bd_net -net BusBlock16IN_0_Out12 [get_bd_pins AckCheckerConcept_12/AckPr_en] [get_bd_pins BusBlock16IN_0/Out12]
  connect_bd_net -net BusBlock16IN_0_Out13 [get_bd_pins AckCheckerConcept_13/AckPr_en] [get_bd_pins BusBlock16IN_0/Out13]
  connect_bd_net -net BusBlock16IN_0_Out14 [get_bd_pins AckCheckerConcept_14/AckPr_en] [get_bd_pins BusBlock16IN_0/Out14]
  connect_bd_net -net BusBlock16IN_0_Out15 [get_bd_pins AckCheckerConcept_15/AckPr_en] [get_bd_pins BusBlock16IN_0/Out15]
  connect_bd_net -net BusBlock16IN_1_Out0 [get_bd_pins AckCheckerConcept_16/AckPr_en] [get_bd_pins BusBlock16IN_1/Out0]
  connect_bd_net -net BusBlock16IN_1_Out1 [get_bd_pins AckCheckerConcept_17/AckPr_en] [get_bd_pins BusBlock16IN_1/Out1]
  connect_bd_net -net BusBlock16IN_1_Out2 [get_bd_pins AckCheckerConcept_18/AckPr_en] [get_bd_pins BusBlock16IN_1/Out2]
  connect_bd_net -net BusBlock16IN_1_Out3 [get_bd_pins AckCheckerConcept_19/AckPr_en] [get_bd_pins BusBlock16IN_1/Out3]
  connect_bd_net -net BusBlock16IN_1_Out4 [get_bd_pins AckCheckerConcept_20/AckPr_en] [get_bd_pins BusBlock16IN_1/Out4]
  connect_bd_net -net BusBlock16IN_1_Out5 [get_bd_pins AckCheckerConcept_21/AckPr_en] [get_bd_pins BusBlock16IN_1/Out5]
  connect_bd_net -net BusBlock16IN_1_Out6 [get_bd_pins AckCheckerConcept_22/AckPr_en] [get_bd_pins BusBlock16IN_1/Out6]
  connect_bd_net -net BusBlock16IN_1_Out7 [get_bd_pins AckCheckerConcept_23/AckPr_en] [get_bd_pins BusBlock16IN_1/Out7]
  connect_bd_net -net BusBlock16IN_1_Out8 [get_bd_pins AckCheckerConcept_24/AckPr_en] [get_bd_pins BusBlock16IN_1/Out8]
  connect_bd_net -net BusBlock16IN_1_Out9 [get_bd_pins AckCheckerConcept_25/AckPr_en] [get_bd_pins BusBlock16IN_1/Out9]
  connect_bd_net -net BusBlock16IN_1_Out10 [get_bd_pins AckCheckerConcept_26/AckPr_en] [get_bd_pins BusBlock16IN_1/Out10]
  connect_bd_net -net BusBlock16IN_1_Out11 [get_bd_pins AckCheckerConcept_27/AckPr_en] [get_bd_pins BusBlock16IN_1/Out11]
  connect_bd_net -net BusBlock16IN_1_Out12 [get_bd_pins AckCheckerConcept_28/AckPr_en] [get_bd_pins BusBlock16IN_1/Out12]
  connect_bd_net -net BusBlock16IN_1_Out13 [get_bd_pins AckCheckerConcept_29/AckPr_en] [get_bd_pins BusBlock16IN_1/Out13]
  connect_bd_net -net BusBlock16IN_1_Out14 [get_bd_pins AckCheckerConcept_30/AckPr_en] [get_bd_pins BusBlock16IN_1/Out14]
  connect_bd_net -net BusBlock16IN_1_Out15 [get_bd_pins AckCheckerConcept_31/AckPr_en] [get_bd_pins BusBlock16IN_1/Out15]
  connect_bd_net -net BusBlock16IN_2_Out0 [get_bd_pins AckCheckerConcept_0/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out0]
  connect_bd_net -net BusBlock16IN_2_Out1 [get_bd_pins AckCheckerConcept_1/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out1]
  connect_bd_net -net BusBlock16IN_2_Out2 [get_bd_pins AckCheckerConcept_2/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out2]
  connect_bd_net -net BusBlock16IN_2_Out3 [get_bd_pins AckCheckerConcept_3/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out3]
  connect_bd_net -net BusBlock16IN_2_Out4 [get_bd_pins AckCheckerConcept_4/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out4]
  connect_bd_net -net BusBlock16IN_2_Out5 [get_bd_pins AckCheckerConcept_5/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out5]
  connect_bd_net -net BusBlock16IN_2_Out6 [get_bd_pins AckCheckerConcept_6/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out6]
  connect_bd_net -net BusBlock16IN_2_Out7 [get_bd_pins AckCheckerConcept_7/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out7]
  connect_bd_net -net BusBlock16IN_2_Out8 [get_bd_pins AckCheckerConcept_8/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out8]
  connect_bd_net -net BusBlock16IN_2_Out9 [get_bd_pins AckCheckerConcept_9/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out9]
  connect_bd_net -net BusBlock16IN_2_Out10 [get_bd_pins AckCheckerConcept_10/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out10]
  connect_bd_net -net BusBlock16IN_2_Out11 [get_bd_pins AckCheckerConcept_11/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out11]
  connect_bd_net -net BusBlock16IN_2_Out12 [get_bd_pins AckCheckerConcept_12/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out12]
  connect_bd_net -net BusBlock16IN_2_Out13 [get_bd_pins AckCheckerConcept_13/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out13]
  connect_bd_net -net BusBlock16IN_2_Out14 [get_bd_pins AckCheckerConcept_14/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out14]
  connect_bd_net -net BusBlock16IN_2_Out15 [get_bd_pins AckCheckerConcept_15/acknowledge_in] [get_bd_pins BusBlock16IN_2/Out15]
  connect_bd_net -net BusBlock16IN_3_Out0 [get_bd_pins AckCheckerConcept_16/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out0]
  connect_bd_net -net BusBlock16IN_3_Out1 [get_bd_pins AckCheckerConcept_17/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out1]
  connect_bd_net -net BusBlock16IN_3_Out2 [get_bd_pins AckCheckerConcept_18/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out2]
  connect_bd_net -net BusBlock16IN_3_Out3 [get_bd_pins AckCheckerConcept_19/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out3]
  connect_bd_net -net BusBlock16IN_3_Out4 [get_bd_pins AckCheckerConcept_20/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out4]
  connect_bd_net -net BusBlock16IN_3_Out5 [get_bd_pins AckCheckerConcept_21/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out5]
  connect_bd_net -net BusBlock16IN_3_Out6 [get_bd_pins AckCheckerConcept_22/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out6]
  connect_bd_net -net BusBlock16IN_3_Out7 [get_bd_pins AckCheckerConcept_23/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out7]
  connect_bd_net -net BusBlock16IN_3_Out8 [get_bd_pins AckCheckerConcept_24/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out8]
  connect_bd_net -net BusBlock16IN_3_Out9 [get_bd_pins AckCheckerConcept_25/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out9]
  connect_bd_net -net BusBlock16IN_3_Out10 [get_bd_pins AckCheckerConcept_26/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out10]
  connect_bd_net -net BusBlock16IN_3_Out11 [get_bd_pins AckCheckerConcept_27/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out11]
  connect_bd_net -net BusBlock16IN_3_Out12 [get_bd_pins AckCheckerConcept_28/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out12]
  connect_bd_net -net BusBlock16IN_3_Out13 [get_bd_pins AckCheckerConcept_29/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out13]
  connect_bd_net -net BusBlock16IN_3_Out14 [get_bd_pins AckCheckerConcept_30/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out14]
  connect_bd_net -net BusBlock16IN_3_Out15 [get_bd_pins AckCheckerConcept_31/acknowledge_in] [get_bd_pins BusBlock16IN_3/Out15]
  connect_bd_net -net BusBlock16IN_4_Out0 [get_bd_pins AckCheckerConcept_0/currentPr_en] [get_bd_pins BusBlock16IN_4/Out0]
  connect_bd_net -net BusBlock16IN_4_Out1 [get_bd_pins AckCheckerConcept_1/currentPr_en] [get_bd_pins BusBlock16IN_4/Out1]
  connect_bd_net -net BusBlock16IN_4_Out2 [get_bd_pins AckCheckerConcept_2/currentPr_en] [get_bd_pins BusBlock16IN_4/Out2]
  connect_bd_net -net BusBlock16IN_4_Out3 [get_bd_pins AckCheckerConcept_3/currentPr_en] [get_bd_pins BusBlock16IN_4/Out3]
  connect_bd_net -net BusBlock16IN_4_Out4 [get_bd_pins AckCheckerConcept_4/currentPr_en] [get_bd_pins BusBlock16IN_4/Out4]
  connect_bd_net -net BusBlock16IN_4_Out5 [get_bd_pins AckCheckerConcept_5/currentPr_en] [get_bd_pins BusBlock16IN_4/Out5]
  connect_bd_net -net BusBlock16IN_4_Out6 [get_bd_pins AckCheckerConcept_6/currentPr_en] [get_bd_pins BusBlock16IN_4/Out6]
  connect_bd_net -net BusBlock16IN_4_Out7 [get_bd_pins AckCheckerConcept_7/currentPr_en] [get_bd_pins BusBlock16IN_4/Out7]
  connect_bd_net -net BusBlock16IN_4_Out8 [get_bd_pins AckCheckerConcept_8/currentPr_en] [get_bd_pins BusBlock16IN_4/Out8]
  connect_bd_net -net BusBlock16IN_4_Out9 [get_bd_pins AckCheckerConcept_9/currentPr_en] [get_bd_pins BusBlock16IN_4/Out9]
  connect_bd_net -net BusBlock16IN_4_Out10 [get_bd_pins AckCheckerConcept_10/currentPr_en] [get_bd_pins BusBlock16IN_4/Out10]
  connect_bd_net -net BusBlock16IN_4_Out11 [get_bd_pins AckCheckerConcept_11/currentPr_en] [get_bd_pins BusBlock16IN_4/Out11]
  connect_bd_net -net BusBlock16IN_4_Out12 [get_bd_pins AckCheckerConcept_12/currentPr_en] [get_bd_pins BusBlock16IN_4/Out12]
  connect_bd_net -net BusBlock16IN_4_Out13 [get_bd_pins AckCheckerConcept_13/currentPr_en] [get_bd_pins BusBlock16IN_4/Out13]
  connect_bd_net -net BusBlock16IN_4_Out14 [get_bd_pins AckCheckerConcept_14/currentPr_en] [get_bd_pins BusBlock16IN_4/Out14]
  connect_bd_net -net BusBlock16IN_4_Out15 [get_bd_pins AckCheckerConcept_15/currentPr_en] [get_bd_pins BusBlock16IN_4/Out15]
  connect_bd_net -net BusBlock16IN_5_Out0 [get_bd_pins AckCheckerConcept_16/currentPr_en] [get_bd_pins BusBlock16IN_5/Out0]
  connect_bd_net -net BusBlock16IN_5_Out1 [get_bd_pins AckCheckerConcept_17/currentPr_en] [get_bd_pins BusBlock16IN_5/Out1]
  connect_bd_net -net BusBlock16IN_5_Out2 [get_bd_pins AckCheckerConcept_18/currentPr_en] [get_bd_pins BusBlock16IN_5/Out2]
  connect_bd_net -net BusBlock16IN_5_Out3 [get_bd_pins AckCheckerConcept_19/currentPr_en] [get_bd_pins BusBlock16IN_5/Out3]
  connect_bd_net -net BusBlock16IN_5_Out4 [get_bd_pins AckCheckerConcept_20/currentPr_en] [get_bd_pins BusBlock16IN_5/Out4]
  connect_bd_net -net BusBlock16IN_5_Out5 [get_bd_pins AckCheckerConcept_21/currentPr_en] [get_bd_pins BusBlock16IN_5/Out5]
  connect_bd_net -net BusBlock16IN_5_Out6 [get_bd_pins AckCheckerConcept_22/currentPr_en] [get_bd_pins BusBlock16IN_5/Out6]
  connect_bd_net -net BusBlock16IN_5_Out7 [get_bd_pins AckCheckerConcept_23/currentPr_en] [get_bd_pins BusBlock16IN_5/Out7]
  connect_bd_net -net BusBlock16IN_5_Out8 [get_bd_pins AckCheckerConcept_24/currentPr_en] [get_bd_pins BusBlock16IN_5/Out8]
  connect_bd_net -net BusBlock16IN_5_Out9 [get_bd_pins AckCheckerConcept_25/currentPr_en] [get_bd_pins BusBlock16IN_5/Out9]
  connect_bd_net -net BusBlock16IN_5_Out10 [get_bd_pins AckCheckerConcept_26/currentPr_en] [get_bd_pins BusBlock16IN_5/Out10]
  connect_bd_net -net BusBlock16IN_5_Out11 [get_bd_pins AckCheckerConcept_27/currentPr_en] [get_bd_pins BusBlock16IN_5/Out11]
  connect_bd_net -net BusBlock16IN_5_Out12 [get_bd_pins AckCheckerConcept_28/currentPr_en] [get_bd_pins BusBlock16IN_5/Out12]
  connect_bd_net -net BusBlock16IN_5_Out13 [get_bd_pins AckCheckerConcept_29/currentPr_en] [get_bd_pins BusBlock16IN_5/Out13]
  connect_bd_net -net BusBlock16IN_5_Out14 [get_bd_pins AckCheckerConcept_30/currentPr_en] [get_bd_pins BusBlock16IN_5/Out14]
  connect_bd_net -net BusBlock16IN_5_Out15 [get_bd_pins AckCheckerConcept_31/currentPr_en] [get_bd_pins BusBlock16IN_5/Out15]
  connect_bd_net -net BusBlock16IN_6_Out0 [get_bd_pins AckCheckerConcept_0/line] [get_bd_pins BusBlock16IN_6/Out0]
  connect_bd_net -net BusBlock16IN_6_Out1 [get_bd_pins AckCheckerConcept_1/line] [get_bd_pins BusBlock16IN_6/Out1]
  connect_bd_net -net BusBlock16IN_6_Out2 [get_bd_pins AckCheckerConcept_2/line] [get_bd_pins BusBlock16IN_6/Out2]
  connect_bd_net -net BusBlock16IN_6_Out3 [get_bd_pins AckCheckerConcept_3/line] [get_bd_pins BusBlock16IN_6/Out3]
  connect_bd_net -net BusBlock16IN_6_Out4 [get_bd_pins AckCheckerConcept_4/line] [get_bd_pins BusBlock16IN_6/Out4]
  connect_bd_net -net BusBlock16IN_6_Out5 [get_bd_pins AckCheckerConcept_5/line] [get_bd_pins BusBlock16IN_6/Out5]
  connect_bd_net -net BusBlock16IN_6_Out6 [get_bd_pins AckCheckerConcept_6/line] [get_bd_pins BusBlock16IN_6/Out6]
  connect_bd_net -net BusBlock16IN_6_Out7 [get_bd_pins AckCheckerConcept_7/line] [get_bd_pins BusBlock16IN_6/Out7]
  connect_bd_net -net BusBlock16IN_6_Out8 [get_bd_pins AckCheckerConcept_8/line] [get_bd_pins BusBlock16IN_6/Out8]
  connect_bd_net -net BusBlock16IN_6_Out9 [get_bd_pins AckCheckerConcept_9/line] [get_bd_pins BusBlock16IN_6/Out9]
  connect_bd_net -net BusBlock16IN_6_Out10 [get_bd_pins AckCheckerConcept_10/line] [get_bd_pins BusBlock16IN_6/Out10]
  connect_bd_net -net BusBlock16IN_6_Out11 [get_bd_pins AckCheckerConcept_11/line] [get_bd_pins BusBlock16IN_6/Out11]
  connect_bd_net -net BusBlock16IN_6_Out12 [get_bd_pins AckCheckerConcept_12/line] [get_bd_pins BusBlock16IN_6/Out12]
  connect_bd_net -net BusBlock16IN_6_Out13 [get_bd_pins AckCheckerConcept_13/line] [get_bd_pins BusBlock16IN_6/Out13]
  connect_bd_net -net BusBlock16IN_6_Out14 [get_bd_pins AckCheckerConcept_14/line] [get_bd_pins BusBlock16IN_6/Out14]
  connect_bd_net -net BusBlock16IN_6_Out15 [get_bd_pins AckCheckerConcept_15/line] [get_bd_pins BusBlock16IN_6/Out15]
  connect_bd_net -net BusBlock16IN_7_Out0 [get_bd_pins AckCheckerConcept_16/line] [get_bd_pins BusBlock16IN_7/Out0]
  connect_bd_net -net BusBlock16IN_7_Out1 [get_bd_pins AckCheckerConcept_17/line] [get_bd_pins BusBlock16IN_7/Out1]
  connect_bd_net -net BusBlock16IN_7_Out2 [get_bd_pins AckCheckerConcept_18/line] [get_bd_pins BusBlock16IN_7/Out2]
  connect_bd_net -net BusBlock16IN_7_Out3 [get_bd_pins AckCheckerConcept_19/line] [get_bd_pins BusBlock16IN_7/Out3]
  connect_bd_net -net BusBlock16IN_7_Out4 [get_bd_pins AckCheckerConcept_20/line] [get_bd_pins BusBlock16IN_7/Out4]
  connect_bd_net -net BusBlock16IN_7_Out5 [get_bd_pins AckCheckerConcept_21/line] [get_bd_pins BusBlock16IN_7/Out5]
  connect_bd_net -net BusBlock16IN_7_Out6 [get_bd_pins AckCheckerConcept_22/line] [get_bd_pins BusBlock16IN_7/Out6]
  connect_bd_net -net BusBlock16IN_7_Out7 [get_bd_pins AckCheckerConcept_23/line] [get_bd_pins BusBlock16IN_7/Out7]
  connect_bd_net -net BusBlock16IN_7_Out8 [get_bd_pins AckCheckerConcept_24/line] [get_bd_pins BusBlock16IN_7/Out8]
  connect_bd_net -net BusBlock16IN_7_Out9 [get_bd_pins AckCheckerConcept_25/line] [get_bd_pins BusBlock16IN_7/Out9]
  connect_bd_net -net BusBlock16IN_7_Out10 [get_bd_pins AckCheckerConcept_26/line] [get_bd_pins BusBlock16IN_7/Out10]
  connect_bd_net -net BusBlock16IN_7_Out11 [get_bd_pins AckCheckerConcept_27/line] [get_bd_pins BusBlock16IN_7/Out11]
  connect_bd_net -net BusBlock16IN_7_Out12 [get_bd_pins AckCheckerConcept_28/line] [get_bd_pins BusBlock16IN_7/Out12]
  connect_bd_net -net BusBlock16IN_7_Out13 [get_bd_pins AckCheckerConcept_29/line] [get_bd_pins BusBlock16IN_7/Out13]
  connect_bd_net -net BusBlock16IN_7_Out14 [get_bd_pins AckCheckerConcept_30/line] [get_bd_pins BusBlock16IN_7/Out14]
  connect_bd_net -net BusBlock16IN_7_Out15 [get_bd_pins AckCheckerConcept_31/line] [get_bd_pins BusBlock16IN_7/Out15]
  connect_bd_net -net BusBlock16OUT_0_BusBlock16OUT [get_bd_ports AcknowledgeErrorGroup0] [get_bd_pins BusBlock16OUT_0/Bus_16OUT]
  connect_bd_net -net BusBlock16OUT_1_BusBlock16OUT [get_bd_ports AcknowledgeErrorGroup1] [get_bd_pins BusBlock16OUT_1/Bus_16OUT]
  connect_bd_net -net BusBlock16OUT_2_BusBlock16OUT [get_bd_ports CurrentErrorGroup1] [get_bd_pins BusBlock16OUT_2/Bus_16OUT]
  connect_bd_net -net BusBlock16OUT_3_BusBlock16OUT [get_bd_ports CurrentErrorGroup0] [get_bd_pins BusBlock16OUT_3/Bus_16OUT]
  connect_bd_net -net Clk_0_1 [get_bd_ports Clk_0] [get_bd_pins AckCheckerConcept_0/Clk] [get_bd_pins AckCheckerConcept_1/Clk] [get_bd_pins AckCheckerConcept_10/Clk] [get_bd_pins AckCheckerConcept_11/Clk] [get_bd_pins AckCheckerConcept_12/Clk] [get_bd_pins AckCheckerConcept_13/Clk] [get_bd_pins AckCheckerConcept_14/Clk] [get_bd_pins AckCheckerConcept_15/Clk] [get_bd_pins AckCheckerConcept_16/Clk] [get_bd_pins AckCheckerConcept_17/Clk] [get_bd_pins AckCheckerConcept_18/Clk] [get_bd_pins AckCheckerConcept_19/Clk] [get_bd_pins AckCheckerConcept_2/Clk] [get_bd_pins AckCheckerConcept_20/Clk] [get_bd_pins AckCheckerConcept_21/Clk] [get_bd_pins AckCheckerConcept_22/Clk] [get_bd_pins AckCheckerConcept_23/Clk] [get_bd_pins AckCheckerConcept_24/Clk] [get_bd_pins AckCheckerConcept_25/Clk] [get_bd_pins AckCheckerConcept_26/Clk] [get_bd_pins AckCheckerConcept_27/Clk] [get_bd_pins AckCheckerConcept_28/Clk] [get_bd_pins AckCheckerConcept_29/Clk] [get_bd_pins AckCheckerConcept_3/Clk] [get_bd_pins AckCheckerConcept_30/Clk] [get_bd_pins AckCheckerConcept_31/Clk] [get_bd_pins AckCheckerConcept_4/Clk] [get_bd_pins AckCheckerConcept_5/Clk] [get_bd_pins AckCheckerConcept_6/Clk] [get_bd_pins AckCheckerConcept_7/Clk] [get_bd_pins AckCheckerConcept_8/Clk] [get_bd_pins AckCheckerConcept_9/Clk]
  connect_bd_net -net CurrentProtectionEnableGroup0_1 [get_bd_ports CurrentProtectionEnableGroup0] [get_bd_pins BusBlock16IN_4/Bus_16IN]
  connect_bd_net -net CurrentProtectionEnableGroup1_1 [get_bd_ports CurrentProtectionEnableGroup1] [get_bd_pins BusBlock16IN_5/Bus_16IN]
  connect_bd_net -net MaskAcknowledgeGroup0_1 [get_bd_ports MaskAcknowledgeGroup0] [get_bd_pins BusBlock16OUT_0/Mask]
  connect_bd_net -net MaskAcknowledgeGroup1_1 [get_bd_ports MaskAcknowledgeGroup1] [get_bd_pins BusBlock16OUT_1/Mask]
  connect_bd_net -net MaskCurrentGroup0_1 [get_bd_ports MaskCurrentGroup0] [get_bd_pins BusBlock16OUT_3/Mask]
  connect_bd_net -net MaskCurrentGroup1_1 [get_bd_ports MaskCurrentGroup1] [get_bd_pins BusBlock16OUT_2/Mask]
  connect_bd_net -net Ready_0_1 [get_bd_ports Ready_0] [get_bd_pins AckCheckerConcept_0/Ready] [get_bd_pins AckCheckerConcept_1/Ready] [get_bd_pins AckCheckerConcept_10/Ready] [get_bd_pins AckCheckerConcept_11/Ready] [get_bd_pins AckCheckerConcept_12/Ready] [get_bd_pins AckCheckerConcept_13/Ready] [get_bd_pins AckCheckerConcept_14/Ready] [get_bd_pins AckCheckerConcept_15/Ready] [get_bd_pins AckCheckerConcept_16/Ready] [get_bd_pins AckCheckerConcept_17/Ready] [get_bd_pins AckCheckerConcept_18/Ready] [get_bd_pins AckCheckerConcept_19/Ready] [get_bd_pins AckCheckerConcept_2/Ready] [get_bd_pins AckCheckerConcept_20/Ready] [get_bd_pins AckCheckerConcept_21/Ready] [get_bd_pins AckCheckerConcept_22/Ready] [get_bd_pins AckCheckerConcept_23/Ready] [get_bd_pins AckCheckerConcept_24/Ready] [get_bd_pins AckCheckerConcept_25/Ready] [get_bd_pins AckCheckerConcept_26/Ready] [get_bd_pins AckCheckerConcept_27/Ready] [get_bd_pins AckCheckerConcept_28/Ready] [get_bd_pins AckCheckerConcept_29/Ready] [get_bd_pins AckCheckerConcept_3/Ready] [get_bd_pins AckCheckerConcept_30/Ready] [get_bd_pins AckCheckerConcept_31/Ready] [get_bd_pins AckCheckerConcept_4/Ready] [get_bd_pins AckCheckerConcept_5/Ready] [get_bd_pins AckCheckerConcept_6/Ready] [get_bd_pins AckCheckerConcept_7/Ready] [get_bd_pins AckCheckerConcept_8/Ready] [get_bd_pins AckCheckerConcept_9/Ready]
  connect_bd_net -net ReceiverGroup0_1 [get_bd_ports ReceiverGroup0] [get_bd_pins BusBlock16IN_2/Bus_16IN]
  connect_bd_net -net ReceiverGroup1_1 [get_bd_ports ReceiverGroup1] [get_bd_pins BusBlock16IN_3/Bus_16IN]
  connect_bd_net -net TransmitterGroup0_1 [get_bd_ports TransmitterGroup0] [get_bd_pins BusBlock16IN_6/Bus_16IN]
  connect_bd_net -net TransmitterGroup1_1 [get_bd_ports TransmitterGroup1] [get_bd_pins BusBlock16IN_7/Bus_16IN]
  connect_bd_net -net ackTime_0_1 [get_bd_ports ackTime_0] [get_bd_pins AckCheckerConcept_0/ackTime] [get_bd_pins AckCheckerConcept_1/ackTime] [get_bd_pins AckCheckerConcept_10/ackTime] [get_bd_pins AckCheckerConcept_11/ackTime] [get_bd_pins AckCheckerConcept_12/ackTime] [get_bd_pins AckCheckerConcept_13/ackTime] [get_bd_pins AckCheckerConcept_14/ackTime] [get_bd_pins AckCheckerConcept_15/ackTime] [get_bd_pins AckCheckerConcept_16/ackTime] [get_bd_pins AckCheckerConcept_17/ackTime] [get_bd_pins AckCheckerConcept_18/ackTime] [get_bd_pins AckCheckerConcept_19/ackTime] [get_bd_pins AckCheckerConcept_2/ackTime] [get_bd_pins AckCheckerConcept_20/ackTime] [get_bd_pins AckCheckerConcept_21/ackTime] [get_bd_pins AckCheckerConcept_22/ackTime] [get_bd_pins AckCheckerConcept_23/ackTime] [get_bd_pins AckCheckerConcept_24/ackTime] [get_bd_pins AckCheckerConcept_25/ackTime] [get_bd_pins AckCheckerConcept_26/ackTime] [get_bd_pins AckCheckerConcept_27/ackTime] [get_bd_pins AckCheckerConcept_28/ackTime] [get_bd_pins AckCheckerConcept_29/ackTime] [get_bd_pins AckCheckerConcept_3/ackTime] [get_bd_pins AckCheckerConcept_30/ackTime] [get_bd_pins AckCheckerConcept_31/ackTime] [get_bd_pins AckCheckerConcept_4/ackTime] [get_bd_pins AckCheckerConcept_5/ackTime] [get_bd_pins AckCheckerConcept_6/ackTime] [get_bd_pins AckCheckerConcept_7/ackTime] [get_bd_pins AckCheckerConcept_8/ackTime] [get_bd_pins AckCheckerConcept_9/ackTime]
  connect_bd_net -net reset_0_1 [get_bd_ports reset_0] [get_bd_pins AckCheckerConcept_0/reset] [get_bd_pins AckCheckerConcept_1/reset] [get_bd_pins AckCheckerConcept_10/reset] [get_bd_pins AckCheckerConcept_11/reset] [get_bd_pins AckCheckerConcept_12/reset] [get_bd_pins AckCheckerConcept_13/reset] [get_bd_pins AckCheckerConcept_14/reset] [get_bd_pins AckCheckerConcept_15/reset] [get_bd_pins AckCheckerConcept_16/reset] [get_bd_pins AckCheckerConcept_17/reset] [get_bd_pins AckCheckerConcept_18/reset] [get_bd_pins AckCheckerConcept_19/reset] [get_bd_pins AckCheckerConcept_2/reset] [get_bd_pins AckCheckerConcept_20/reset] [get_bd_pins AckCheckerConcept_21/reset] [get_bd_pins AckCheckerConcept_22/reset] [get_bd_pins AckCheckerConcept_23/reset] [get_bd_pins AckCheckerConcept_24/reset] [get_bd_pins AckCheckerConcept_25/reset] [get_bd_pins AckCheckerConcept_26/reset] [get_bd_pins AckCheckerConcept_27/reset] [get_bd_pins AckCheckerConcept_28/reset] [get_bd_pins AckCheckerConcept_29/reset] [get_bd_pins AckCheckerConcept_3/reset] [get_bd_pins AckCheckerConcept_30/reset] [get_bd_pins AckCheckerConcept_31/reset] [get_bd_pins AckCheckerConcept_4/reset] [get_bd_pins AckCheckerConcept_5/reset] [get_bd_pins AckCheckerConcept_6/reset] [get_bd_pins AckCheckerConcept_7/reset] [get_bd_pins AckCheckerConcept_8/reset] [get_bd_pins AckCheckerConcept_9/reset]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


