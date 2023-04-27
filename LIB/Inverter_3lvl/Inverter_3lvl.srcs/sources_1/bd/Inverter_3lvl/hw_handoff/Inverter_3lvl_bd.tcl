
################################################################
# This is a generated script based on design: Inverter_3lvl
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
# source Inverter_3lvl_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Inverter_3lvl

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
  set BreakingEnable [ create_bd_port -dir I -from 15 -to 0 -type data BreakingEnable ]
  set ChGroup0 [ create_bd_port -dir O -from 15 -to 0 -type data ChGroup0 ]
  set ChGroup1 [ create_bd_port -dir O -from 15 -to 0 -type data ChGroup1 ]
  set MaskChGroup0 [ create_bd_port -dir I -from 15 -to 0 MaskChGroup0 ]
  set MaskChGroup1 [ create_bd_port -dir I -from 15 -to 0 MaskChGroup1 ]
  set MaskMinTimeError [ create_bd_port -dir I -from 15 -to 0 MaskMinTimeError ]
  set MinTimeError [ create_bd_port -dir O -from 15 -to 0 -type data MinTimeError ]
  set PWM [ create_bd_port -dir I -from 15 -to 0 -type data PWM ]
  set deadTime_0 [ create_bd_port -dir I -from 31 -to 0 deadTime_0 ]
  set er_0 [ create_bd_port -dir I er_0 ]
  set externalCLK_0 [ create_bd_port -dir I externalCLK_0 ]
  set minTime_0 [ create_bd_port -dir I -from 31 -to 0 minTime_0 ]
  set minTime_En_0 [ create_bd_port -dir I minTime_En_0 ]
  set ready_0 [ create_bd_port -dir I ready_0 ]
  set reset_0 [ create_bd_port -dir I -type rst reset_0 ]

  # Create instance: BUS_16IN_0, and set properties
  set BUS_16IN_0 [ create_bd_cell -type ip -vlnv setcorp:user:BUS_16IN:1.0 BUS_16IN_0 ]

  # Create instance: BUS_16IN_1, and set properties
  set BUS_16IN_1 [ create_bd_cell -type ip -vlnv setcorp:user:BUS_16IN:1.0 BUS_16IN_1 ]

  # Create instance: BUS_16OUT_0, and set properties
  set BUS_16OUT_0 [ create_bd_cell -type ip -vlnv setcorp:user:BUS_16OUT:1.0 BUS_16OUT_0 ]

  # Create instance: BUS_16OUT_1, and set properties
  set BUS_16OUT_1 [ create_bd_cell -type ip -vlnv setcorp:user:BUS_16OUT:1.0 BUS_16OUT_1 ]

  # Create instance: BUS_16OUT_2, and set properties
  set BUS_16OUT_2 [ create_bd_cell -type ip -vlnv setcorp:user:BUS_16OUT:1.0 BUS_16OUT_2 ]

  # Create instance: P0N_3lvl_0, and set properties
  set P0N_3lvl_0 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_0 ]

  # Create instance: P0N_3lvl_1, and set properties
  set P0N_3lvl_1 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_1 ]

  # Create instance: P0N_3lvl_2, and set properties
  set P0N_3lvl_2 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_2 ]

  # Create instance: P0N_3lvl_3, and set properties
  set P0N_3lvl_3 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_3 ]

  # Create instance: P0N_3lvl_4, and set properties
  set P0N_3lvl_4 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_4 ]

  # Create instance: P0N_3lvl_5, and set properties
  set P0N_3lvl_5 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_5 ]

  # Create instance: P0N_3lvl_6, and set properties
  set P0N_3lvl_6 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_6 ]

  # Create instance: P0N_3lvl_7, and set properties
  set P0N_3lvl_7 [ create_bd_cell -type ip -vlnv ssevendenergy.com:user:P0N_3lvl:1.0 P0N_3lvl_7 ]

  # Create port connections
  connect_bd_net -net BUS_16IN_0_Out0 [get_bd_pins BUS_16IN_0/Out0] [get_bd_pins P0N_3lvl_0/TKin0]
  connect_bd_net -net BUS_16IN_0_Out1 [get_bd_pins BUS_16IN_0/Out1] [get_bd_pins P0N_3lvl_0/TKin1]
  connect_bd_net -net BUS_16IN_0_Out2 [get_bd_pins BUS_16IN_0/Out2] [get_bd_pins P0N_3lvl_1/TKin0]
  connect_bd_net -net BUS_16IN_0_Out3 [get_bd_pins BUS_16IN_0/Out3] [get_bd_pins P0N_3lvl_1/TKin1]
  connect_bd_net -net BUS_16IN_0_Out4 [get_bd_pins BUS_16IN_0/Out4] [get_bd_pins P0N_3lvl_2/TKin0]
  connect_bd_net -net BUS_16IN_0_Out5 [get_bd_pins BUS_16IN_0/Out5] [get_bd_pins P0N_3lvl_2/TKin1]
  connect_bd_net -net BUS_16IN_0_Out6 [get_bd_pins BUS_16IN_0/Out6] [get_bd_pins P0N_3lvl_3/TKin0]
  connect_bd_net -net BUS_16IN_0_Out7 [get_bd_pins BUS_16IN_0/Out7] [get_bd_pins P0N_3lvl_3/TKin1]
  connect_bd_net -net BUS_16IN_0_Out8 [get_bd_pins BUS_16IN_0/Out8] [get_bd_pins P0N_3lvl_4/TKin0]
  connect_bd_net -net BUS_16IN_0_Out9 [get_bd_pins BUS_16IN_0/Out9] [get_bd_pins P0N_3lvl_4/TKin1]
  connect_bd_net -net BUS_16IN_0_Out10 [get_bd_pins BUS_16IN_0/Out10] [get_bd_pins P0N_3lvl_5/TKin0]
  connect_bd_net -net BUS_16IN_0_Out11 [get_bd_pins BUS_16IN_0/Out11] [get_bd_pins P0N_3lvl_5/TKin1]
  connect_bd_net -net BUS_16IN_0_Out12 [get_bd_pins BUS_16IN_0/Out12] [get_bd_pins P0N_3lvl_6/TKin0]
  connect_bd_net -net BUS_16IN_0_Out13 [get_bd_pins BUS_16IN_0/Out13] [get_bd_pins P0N_3lvl_6/TKin1]
  connect_bd_net -net BUS_16IN_0_Out14 [get_bd_pins BUS_16IN_0/Out14] [get_bd_pins P0N_3lvl_7/TKin0]
  connect_bd_net -net BUS_16IN_0_Out15 [get_bd_pins BUS_16IN_0/Out15] [get_bd_pins P0N_3lvl_7/TKin1]
  connect_bd_net -net BUS_16IN_1_Out0 [get_bd_pins BUS_16IN_1/Out0] [get_bd_pins P0N_3lvl_0/breaking_en]
  connect_bd_net -net BUS_16IN_1_Out1 [get_bd_pins BUS_16IN_1/Out1] [get_bd_pins P0N_3lvl_1/breaking_en]
  connect_bd_net -net BUS_16IN_1_Out2 [get_bd_pins BUS_16IN_1/Out2] [get_bd_pins P0N_3lvl_2/breaking_en]
  connect_bd_net -net BUS_16IN_1_Out3 [get_bd_pins BUS_16IN_1/Out3] [get_bd_pins P0N_3lvl_3/breaking_en]
  connect_bd_net -net BUS_16IN_1_Out4 [get_bd_pins BUS_16IN_1/Out4] [get_bd_pins P0N_3lvl_4/breaking_en]
  connect_bd_net -net BUS_16IN_1_Out5 [get_bd_pins BUS_16IN_1/Out5] [get_bd_pins P0N_3lvl_5/breaking_en]
  connect_bd_net -net BUS_16IN_1_Out6 [get_bd_pins BUS_16IN_1/Out6] [get_bd_pins P0N_3lvl_6/breaking_en]
  connect_bd_net -net BUS_16IN_1_Out7 [get_bd_pins BUS_16IN_1/Out7] [get_bd_pins P0N_3lvl_7/breaking_en]
  connect_bd_net -net BUS_16OUT_0_BusBlock16OUT [get_bd_ports ChGroup0] [get_bd_pins BUS_16OUT_0/BusBlock16OUT]
  connect_bd_net -net BUS_16OUT_1_BusBlock16OUT [get_bd_ports ChGroup1] [get_bd_pins BUS_16OUT_1/BusBlock16OUT]
  connect_bd_net -net BUS_16OUT_2_BusBlock16OUT [get_bd_ports MinTimeError] [get_bd_pins BUS_16OUT_2/BusBlock16OUT]
  connect_bd_net -net BreakingEnable_1 [get_bd_ports BreakingEnable] [get_bd_pins BUS_16IN_1/BusBlock16IN]
  connect_bd_net -net MaskChGroup0_1 [get_bd_ports MaskChGroup0] [get_bd_pins BUS_16OUT_0/Mask]
  connect_bd_net -net MaskChGroup1_1 [get_bd_ports MaskChGroup1] [get_bd_pins BUS_16OUT_1/Mask]
  connect_bd_net -net MaskMinTimeError_1 [get_bd_ports MaskMinTimeError] [get_bd_pins BUS_16OUT_2/Mask]
  connect_bd_net -net P0N_3lvl_0_PWM_out_0 [get_bd_pins BUS_16OUT_0/In0] [get_bd_pins P0N_3lvl_0/PWM_out_0]
  connect_bd_net -net P0N_3lvl_0_PWM_out_1 [get_bd_pins BUS_16OUT_0/In1] [get_bd_pins P0N_3lvl_0/PWM_out_1]
  connect_bd_net -net P0N_3lvl_0_PWM_out_2 [get_bd_pins BUS_16OUT_0/In2] [get_bd_pins P0N_3lvl_0/PWM_out_2]
  connect_bd_net -net P0N_3lvl_0_PWM_out_3 [get_bd_pins BUS_16OUT_0/In3] [get_bd_pins P0N_3lvl_0/PWM_out_3]
  connect_bd_net -net P0N_3lvl_0_minTimeEr [get_bd_pins BUS_16OUT_2/In0] [get_bd_pins P0N_3lvl_0/minTimeEr]
  connect_bd_net -net P0N_3lvl_1_PWM_out_0 [get_bd_pins BUS_16OUT_0/In4] [get_bd_pins P0N_3lvl_1/PWM_out_0]
  connect_bd_net -net P0N_3lvl_1_PWM_out_1 [get_bd_pins BUS_16OUT_0/In5] [get_bd_pins P0N_3lvl_1/PWM_out_1]
  connect_bd_net -net P0N_3lvl_1_PWM_out_2 [get_bd_pins BUS_16OUT_0/In6] [get_bd_pins P0N_3lvl_1/PWM_out_2]
  connect_bd_net -net P0N_3lvl_1_PWM_out_3 [get_bd_pins BUS_16OUT_0/In7] [get_bd_pins P0N_3lvl_1/PWM_out_3]
  connect_bd_net -net P0N_3lvl_1_minTimeEr [get_bd_pins BUS_16OUT_2/In1] [get_bd_pins P0N_3lvl_1/minTimeEr]
  connect_bd_net -net P0N_3lvl_2_PWM_out_0 [get_bd_pins BUS_16OUT_0/In8] [get_bd_pins P0N_3lvl_2/PWM_out_0]
  connect_bd_net -net P0N_3lvl_2_PWM_out_1 [get_bd_pins BUS_16OUT_0/In9] [get_bd_pins P0N_3lvl_2/PWM_out_1]
  connect_bd_net -net P0N_3lvl_2_PWM_out_2 [get_bd_pins BUS_16OUT_0/In10] [get_bd_pins P0N_3lvl_2/PWM_out_2]
  connect_bd_net -net P0N_3lvl_2_PWM_out_3 [get_bd_pins BUS_16OUT_0/In11] [get_bd_pins P0N_3lvl_2/PWM_out_3]
  connect_bd_net -net P0N_3lvl_2_minTimeEr [get_bd_pins BUS_16OUT_2/In2] [get_bd_pins P0N_3lvl_2/minTimeEr]
  connect_bd_net -net P0N_3lvl_3_PWM_out_0 [get_bd_pins BUS_16OUT_0/In12] [get_bd_pins P0N_3lvl_3/PWM_out_0]
  connect_bd_net -net P0N_3lvl_3_PWM_out_1 [get_bd_pins BUS_16OUT_0/In13] [get_bd_pins P0N_3lvl_3/PWM_out_1]
  connect_bd_net -net P0N_3lvl_3_PWM_out_2 [get_bd_pins BUS_16OUT_0/In14] [get_bd_pins P0N_3lvl_3/PWM_out_2]
  connect_bd_net -net P0N_3lvl_3_PWM_out_3 [get_bd_pins BUS_16OUT_0/In15] [get_bd_pins P0N_3lvl_3/PWM_out_3]
  connect_bd_net -net P0N_3lvl_3_minTimeEr [get_bd_pins BUS_16OUT_2/In3] [get_bd_pins P0N_3lvl_3/minTimeEr]
  connect_bd_net -net P0N_3lvl_4_PWM_out_0 [get_bd_pins BUS_16OUT_1/In0] [get_bd_pins P0N_3lvl_4/PWM_out_0]
  connect_bd_net -net P0N_3lvl_4_PWM_out_1 [get_bd_pins BUS_16OUT_1/In1] [get_bd_pins P0N_3lvl_4/PWM_out_1]
  connect_bd_net -net P0N_3lvl_4_PWM_out_2 [get_bd_pins BUS_16OUT_1/In2] [get_bd_pins P0N_3lvl_4/PWM_out_2]
  connect_bd_net -net P0N_3lvl_4_PWM_out_3 [get_bd_pins BUS_16OUT_1/In3] [get_bd_pins P0N_3lvl_4/PWM_out_3]
  connect_bd_net -net P0N_3lvl_4_minTimeEr [get_bd_pins BUS_16OUT_2/In4] [get_bd_pins P0N_3lvl_4/minTimeEr]
  connect_bd_net -net P0N_3lvl_5_PWM_out_0 [get_bd_pins BUS_16OUT_1/In4] [get_bd_pins P0N_3lvl_5/PWM_out_0]
  connect_bd_net -net P0N_3lvl_5_PWM_out_1 [get_bd_pins BUS_16OUT_1/In5] [get_bd_pins P0N_3lvl_5/PWM_out_1]
  connect_bd_net -net P0N_3lvl_5_PWM_out_2 [get_bd_pins BUS_16OUT_1/In6] [get_bd_pins P0N_3lvl_5/PWM_out_2]
  connect_bd_net -net P0N_3lvl_5_PWM_out_3 [get_bd_pins BUS_16OUT_1/In7] [get_bd_pins P0N_3lvl_5/PWM_out_3]
  connect_bd_net -net P0N_3lvl_5_minTimeEr [get_bd_pins BUS_16OUT_2/In5] [get_bd_pins P0N_3lvl_5/minTimeEr]
  connect_bd_net -net P0N_3lvl_6_PWM_out_0 [get_bd_pins BUS_16OUT_1/In8] [get_bd_pins P0N_3lvl_6/PWM_out_0]
  connect_bd_net -net P0N_3lvl_6_PWM_out_1 [get_bd_pins BUS_16OUT_1/In9] [get_bd_pins P0N_3lvl_6/PWM_out_1]
  connect_bd_net -net P0N_3lvl_6_PWM_out_2 [get_bd_pins BUS_16OUT_1/In10] [get_bd_pins P0N_3lvl_6/PWM_out_2]
  connect_bd_net -net P0N_3lvl_6_PWM_out_3 [get_bd_pins BUS_16OUT_1/In11] [get_bd_pins P0N_3lvl_6/PWM_out_3]
  connect_bd_net -net P0N_3lvl_6_minTimeEr [get_bd_pins BUS_16OUT_2/In6] [get_bd_pins P0N_3lvl_6/minTimeEr]
  connect_bd_net -net P0N_3lvl_7_PWM_out_0 [get_bd_pins BUS_16OUT_1/In12] [get_bd_pins P0N_3lvl_7/PWM_out_0]
  connect_bd_net -net P0N_3lvl_7_PWM_out_1 [get_bd_pins BUS_16OUT_1/In13] [get_bd_pins P0N_3lvl_7/PWM_out_1]
  connect_bd_net -net P0N_3lvl_7_PWM_out_2 [get_bd_pins BUS_16OUT_1/In14] [get_bd_pins P0N_3lvl_7/PWM_out_2]
  connect_bd_net -net P0N_3lvl_7_PWM_out_3 [get_bd_pins BUS_16OUT_1/In15] [get_bd_pins P0N_3lvl_7/PWM_out_3]
  connect_bd_net -net P0N_3lvl_7_minTimeEr [get_bd_pins BUS_16OUT_2/In7] [get_bd_pins P0N_3lvl_7/minTimeEr]
  connect_bd_net -net PWM_1 [get_bd_ports PWM] [get_bd_pins BUS_16IN_0/BusBlock16IN]
  connect_bd_net -net deadTime_0_1 [get_bd_ports deadTime_0] [get_bd_pins P0N_3lvl_0/deadTime] [get_bd_pins P0N_3lvl_1/deadTime] [get_bd_pins P0N_3lvl_2/deadTime] [get_bd_pins P0N_3lvl_3/deadTime] [get_bd_pins P0N_3lvl_4/deadTime] [get_bd_pins P0N_3lvl_5/deadTime] [get_bd_pins P0N_3lvl_6/deadTime] [get_bd_pins P0N_3lvl_7/deadTime]
  connect_bd_net -net er_0_1 [get_bd_ports er_0] [get_bd_pins P0N_3lvl_0/er] [get_bd_pins P0N_3lvl_1/er] [get_bd_pins P0N_3lvl_2/er] [get_bd_pins P0N_3lvl_3/er] [get_bd_pins P0N_3lvl_4/er] [get_bd_pins P0N_3lvl_5/er] [get_bd_pins P0N_3lvl_6/er] [get_bd_pins P0N_3lvl_7/er]
  connect_bd_net -net externalCLK_0_1 [get_bd_ports externalCLK_0] [get_bd_pins P0N_3lvl_0/externalCLK] [get_bd_pins P0N_3lvl_1/externalCLK] [get_bd_pins P0N_3lvl_2/externalCLK] [get_bd_pins P0N_3lvl_3/externalCLK] [get_bd_pins P0N_3lvl_4/externalCLK] [get_bd_pins P0N_3lvl_5/externalCLK] [get_bd_pins P0N_3lvl_6/externalCLK] [get_bd_pins P0N_3lvl_7/externalCLK]
  connect_bd_net -net minTime_0_1 [get_bd_ports minTime_0] [get_bd_pins P0N_3lvl_0/minTime] [get_bd_pins P0N_3lvl_1/minTime] [get_bd_pins P0N_3lvl_2/minTime] [get_bd_pins P0N_3lvl_3/minTime] [get_bd_pins P0N_3lvl_4/minTime] [get_bd_pins P0N_3lvl_5/minTime] [get_bd_pins P0N_3lvl_6/minTime] [get_bd_pins P0N_3lvl_7/minTime]
  connect_bd_net -net minTime_En_0_1 [get_bd_ports minTime_En_0] [get_bd_pins P0N_3lvl_0/minTime_En] [get_bd_pins P0N_3lvl_1/minTime_En] [get_bd_pins P0N_3lvl_2/minTime_En] [get_bd_pins P0N_3lvl_3/minTime_En] [get_bd_pins P0N_3lvl_4/minTime_En] [get_bd_pins P0N_3lvl_5/minTime_En] [get_bd_pins P0N_3lvl_6/minTime_En] [get_bd_pins P0N_3lvl_7/minTime_En]
  connect_bd_net -net ready_0_1 [get_bd_ports ready_0] [get_bd_pins P0N_3lvl_0/ready] [get_bd_pins P0N_3lvl_1/ready] [get_bd_pins P0N_3lvl_2/ready] [get_bd_pins P0N_3lvl_3/ready] [get_bd_pins P0N_3lvl_4/ready] [get_bd_pins P0N_3lvl_5/ready] [get_bd_pins P0N_3lvl_6/ready] [get_bd_pins P0N_3lvl_7/ready]
  connect_bd_net -net reset_0_1 [get_bd_ports reset_0] [get_bd_pins P0N_3lvl_0/reset] [get_bd_pins P0N_3lvl_1/reset] [get_bd_pins P0N_3lvl_2/reset] [get_bd_pins P0N_3lvl_3/reset] [get_bd_pins P0N_3lvl_4/reset] [get_bd_pins P0N_3lvl_5/reset] [get_bd_pins P0N_3lvl_6/reset] [get_bd_pins P0N_3lvl_7/reset]

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


