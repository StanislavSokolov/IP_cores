
################################################################
# This is a generated script based on design: TransistorKeys
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
# source TransistorKeys_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name TransistorKeys

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


# Hierarchical cell: TransistorKeys1
proc create_hier_cell_TransistorKeys1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TransistorKeys1() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 3 -to 0 ackin_0
  create_bd_pin -dir O -from 3 -to 0 ackpr_0
  create_bd_pin -dir I -from 3 -to 0 ackpren_0
  create_bd_pin -dir I -from 7 -to 0 acktime_0
  create_bd_pin -dir I breaken
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 3 -to 0 currentpr_0
  create_bd_pin -dir I -from 3 -to 0 currentpren_0
  create_bd_pin -dir I -from 7 -to 0 deadtime
  create_bd_pin -dir I er0in
  create_bd_pin -dir O -from 3 -to 0 keyout_0
  create_bd_pin -dir I -from 1 -to 0 keysel_0
  create_bd_pin -dir I -from 3 -to 0 keysen_0
  create_bd_pin -dir O linepr_0
  create_bd_pin -dir I linepren
  create_bd_pin -dir I -from 7 -to 0 mintime
  create_bd_pin -dir O mintimepr_1
  create_bd_pin -dir I mintimepren
  create_bd_pin -dir I -from 1 -to 0 ob_0
  create_bd_pin -dir I ready
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir I softshutdownen
  create_bd_pin -dir O softshutdownpr_0
  create_bd_pin -dir I -from 15 -to 0 softshutdowntimer
  create_bd_pin -dir O -from 7 -to 0 timeerror_0

  # Create instance: AcknowledgeChecker_v_0, and set properties
  set AcknowledgeChecker_v_0 [ create_bd_cell -type ip -vlnv setcorp:user:AcknowledgeChecker_ver_1_0:1.0 AcknowledgeChecker_v_0 ]
  set_property -dict [ list \
   CONFIG.QUANTITY_ACKNOWLEDGES {4} \
 ] $AcknowledgeChecker_v_0

  # Create instance: CalculatingDeadtime_0, and set properties
  set CalculatingDeadtime_0 [ create_bd_cell -type ip -vlnv setcorp:user:CalculatingDeadtime:1.0 CalculatingDeadtime_0 ]

  # Create instance: CalculatingMintime_v_0, and set properties
  set CalculatingMintime_v_0 [ create_bd_cell -type ip -vlnv setcorp:user:CalculatingMintime_ver_1_0:1.0 CalculatingMintime_v_0 ]

  # Create instance: FrequencyDividerWith_0, and set properties
  set FrequencyDividerWith_0 [ create_bd_cell -type ip -vlnv setcorp:user:FrequencyDividerWithReset_ver_1_0:1.0 FrequencyDividerWith_0 ]

  # Create instance: FrequencyDividerWith_2, and set properties
  set FrequencyDividerWith_2 [ create_bd_cell -type ip -vlnv setcorp:user:FrequencyDividerWithReset_ver_1_0:1.0 FrequencyDividerWith_2 ]

  # Create instance: KeyControllerP0N_ver_0, and set properties
  set KeyControllerP0N_ver_0 [ create_bd_cell -type ip -vlnv setcorp:user:KeyControllerP0N_ver_2_0:1.0 KeyControllerP0N_ver_0 ]

  # Create instance: SignalChangeControl_0, and set properties
  set SignalChangeControl_0 [ create_bd_cell -type ip -vlnv setcorp:user:SignalChangeControl:1.0 SignalChangeControl_0 ]

  # Create port connections
  connect_bd_net -net AcknowledgeChecker_v_0_ackpr [get_bd_pins ackpr_0] [get_bd_pins AcknowledgeChecker_v_0/ackpr]
  connect_bd_net -net AcknowledgeChecker_v_0_currentpr [get_bd_pins currentpr_0] [get_bd_pins AcknowledgeChecker_v_0/currentpr]
  connect_bd_net -net CalculatingDeadtime_0_isdeadtimeok [get_bd_pins CalculatingDeadtime_0/isdeadtimeok] [get_bd_pins KeyControllerP0N_ver_0/isdeadtimeok]
  connect_bd_net -net CalculatingMintime_v_0_error [get_bd_pins mintimepr_1] [get_bd_pins CalculatingMintime_v_0/error]
  connect_bd_net -net CalculatingMintime_v_0_timeerror [get_bd_pins timeerror_0] [get_bd_pins CalculatingMintime_v_0/timeerror]
  connect_bd_net -net FrequencyDividerWith_0_clkdiv [get_bd_pins CalculatingMintime_v_0/ce] [get_bd_pins FrequencyDividerWith_0/clkdiv]
  connect_bd_net -net FrequencyDividerWith_2_clkdiv [get_bd_pins CalculatingDeadtime_0/ce] [get_bd_pins FrequencyDividerWith_2/clkdiv]
  connect_bd_net -net KeyControllerP0N_ver_0_keyout [get_bd_pins keyout_0] [get_bd_pins AcknowledgeChecker_v_0/keyin] [get_bd_pins KeyControllerP0N_ver_0/keysout]
  connect_bd_net -net KeyControllerP0N_ver_0_linepr [get_bd_pins linepr_0] [get_bd_pins KeyControllerP0N_ver_0/linepr]
  connect_bd_net -net KeyControllerP0N_ver_0_softshutdownpr [get_bd_pins softshutdownpr_0] [get_bd_pins KeyControllerP0N_ver_0/softshutdownpr]
  connect_bd_net -net KeyControllerP0N_ver_0_start [get_bd_pins CalculatingDeadtime_0/start] [get_bd_pins FrequencyDividerWith_2/reset] [get_bd_pins KeyControllerP0N_ver_0/start]
  connect_bd_net -net Net [get_bd_pins ready] [get_bd_pins AcknowledgeChecker_v_0/ready] [get_bd_pins KeyControllerP0N_ver_0/ready]
  connect_bd_net -net Net1 [get_bd_pins reset] [get_bd_pins AcknowledgeChecker_v_0/reset] [get_bd_pins CalculatingDeadtime_0/reset] [get_bd_pins CalculatingMintime_v_0/reset] [get_bd_pins KeyControllerP0N_ver_0/reset]
  connect_bd_net -net SignalChangeControl_0_reset [get_bd_pins CalculatingMintime_v_0/start] [get_bd_pins FrequencyDividerWith_0/reset] [get_bd_pins SignalChangeControl_0/reset]
  connect_bd_net -net ackin_0_1 [get_bd_pins ackin_0] [get_bd_pins AcknowledgeChecker_v_0/ackin]
  connect_bd_net -net ackpren_0_1 [get_bd_pins ackpren_0] [get_bd_pins AcknowledgeChecker_v_0/ackpren]
  connect_bd_net -net acktime_0_1 [get_bd_pins acktime_0] [get_bd_pins AcknowledgeChecker_v_0/acktime]
  connect_bd_net -net breaken_0_1 [get_bd_pins breaken] [get_bd_pins KeyControllerP0N_ver_0/breaken]
  connect_bd_net -net clk_0_1 [get_bd_pins clk] [get_bd_pins AcknowledgeChecker_v_0/clk] [get_bd_pins CalculatingDeadtime_0/clk] [get_bd_pins CalculatingMintime_v_0/clk] [get_bd_pins FrequencyDividerWith_0/clk] [get_bd_pins FrequencyDividerWith_2/clk] [get_bd_pins KeyControllerP0N_ver_0/clk] [get_bd_pins SignalChangeControl_0/clk]
  connect_bd_net -net currentpren_0_1 [get_bd_pins currentpren_0] [get_bd_pins AcknowledgeChecker_v_0/currentpren]
  connect_bd_net -net deadtime_0_1 [get_bd_pins deadtime] [get_bd_pins CalculatingDeadtime_0/deadtime]
  connect_bd_net -net en_0_1 [get_bd_pins mintimepren] [get_bd_pins CalculatingMintime_v_0/en]
  connect_bd_net -net er0in_0_1 [get_bd_pins er0in] [get_bd_pins KeyControllerP0N_ver_0/er0in]
  connect_bd_net -net keysel_0_1 [get_bd_pins keysel_0] [get_bd_pins KeyControllerP0N_ver_0/keysel] [get_bd_pins SignalChangeControl_0/signalchange]
  connect_bd_net -net keysen_0_1 [get_bd_pins keysen_0] [get_bd_pins KeyControllerP0N_ver_0/keysen]
  connect_bd_net -net linepren_0_1 [get_bd_pins linepren] [get_bd_pins KeyControllerP0N_ver_0/linepren]
  connect_bd_net -net mintime_0_1 [get_bd_pins mintime] [get_bd_pins CalculatingMintime_v_0/mintime]
  connect_bd_net -net ob_0_1 [get_bd_pins ob_0] [get_bd_pins KeyControllerP0N_ver_0/ob]
  connect_bd_net -net softshutdownen_0_1 [get_bd_pins softshutdownen] [get_bd_pins KeyControllerP0N_ver_0/softshutdownen]
  connect_bd_net -net softshutdowntimer_0_1 [get_bd_pins softshutdowntimer] [get_bd_pins KeyControllerP0N_ver_0/softshutdowntimer]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TransistorKeys0
proc create_hier_cell_TransistorKeys0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TransistorKeys0() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 3 -to 0 ackin_0
  create_bd_pin -dir O -from 3 -to 0 ackpr_0
  create_bd_pin -dir I -from 3 -to 0 ackpren_0
  create_bd_pin -dir I -from 7 -to 0 acktime_0
  create_bd_pin -dir I breaken
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 3 -to 0 currentpr_0
  create_bd_pin -dir I -from 3 -to 0 currentpren_0
  create_bd_pin -dir I -from 7 -to 0 deadtime
  create_bd_pin -dir I er0in
  create_bd_pin -dir O -from 3 -to 0 keyout_0
  create_bd_pin -dir I -from 1 -to 0 keysel_0
  create_bd_pin -dir I -from 3 -to 0 keysen_0
  create_bd_pin -dir O linepr_0
  create_bd_pin -dir I linepren
  create_bd_pin -dir I -from 7 -to 0 mintime
  create_bd_pin -dir O mintimepr_0
  create_bd_pin -dir I mintimepren
  create_bd_pin -dir I -from 1 -to 0 ob_0
  create_bd_pin -dir I ready
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir I softshutdownen
  create_bd_pin -dir O softshutdownpr_0
  create_bd_pin -dir I -from 15 -to 0 softshutdowntimer
  create_bd_pin -dir O -from 7 -to 0 timeerror_0

  # Create instance: AcknowledgeChecker_v_0, and set properties
  set AcknowledgeChecker_v_0 [ create_bd_cell -type ip -vlnv setcorp:user:AcknowledgeChecker_ver_1_0:1.0 AcknowledgeChecker_v_0 ]
  set_property -dict [ list \
   CONFIG.QUANTITY_ACKNOWLEDGES {4} \
 ] $AcknowledgeChecker_v_0

  # Create instance: CalculatingDeadtime_0, and set properties
  set CalculatingDeadtime_0 [ create_bd_cell -type ip -vlnv setcorp:user:CalculatingDeadtime:1.0 CalculatingDeadtime_0 ]

  # Create instance: CalculatingMintime_v_0, and set properties
  set CalculatingMintime_v_0 [ create_bd_cell -type ip -vlnv setcorp:user:CalculatingMintime_ver_1_0:1.0 CalculatingMintime_v_0 ]

  # Create instance: FrequencyDividerWith_0, and set properties
  set FrequencyDividerWith_0 [ create_bd_cell -type ip -vlnv setcorp:user:FrequencyDividerWithReset_ver_1_0:1.0 FrequencyDividerWith_0 ]

  # Create instance: FrequencyDividerWith_2, and set properties
  set FrequencyDividerWith_2 [ create_bd_cell -type ip -vlnv setcorp:user:FrequencyDividerWithReset_ver_1_0:1.0 FrequencyDividerWith_2 ]

  # Create instance: KeyControllerP0N_ver_0, and set properties
  set KeyControllerP0N_ver_0 [ create_bd_cell -type ip -vlnv setcorp:user:KeyControllerP0N_ver_2_0:1.0 KeyControllerP0N_ver_0 ]

  # Create instance: SignalChangeControl_0, and set properties
  set SignalChangeControl_0 [ create_bd_cell -type ip -vlnv setcorp:user:SignalChangeControl:1.0 SignalChangeControl_0 ]

  # Create port connections
  connect_bd_net -net AcknowledgeChecker_v_0_ackpr [get_bd_pins ackpr_0] [get_bd_pins AcknowledgeChecker_v_0/ackpr]
  connect_bd_net -net AcknowledgeChecker_v_0_currentpr [get_bd_pins currentpr_0] [get_bd_pins AcknowledgeChecker_v_0/currentpr]
  connect_bd_net -net CalculatingDeadtime_0_isdeadtimeok [get_bd_pins CalculatingDeadtime_0/isdeadtimeok] [get_bd_pins KeyControllerP0N_ver_0/isdeadtimeok]
  connect_bd_net -net CalculatingMintime_v_0_error [get_bd_pins mintimepr_0] [get_bd_pins CalculatingMintime_v_0/error]
  connect_bd_net -net CalculatingMintime_v_0_timeerror [get_bd_pins timeerror_0] [get_bd_pins CalculatingMintime_v_0/timeerror]
  connect_bd_net -net FrequencyDividerWith_0_clkdiv [get_bd_pins CalculatingMintime_v_0/ce] [get_bd_pins FrequencyDividerWith_0/clkdiv]
  connect_bd_net -net FrequencyDividerWith_2_clkdiv [get_bd_pins CalculatingDeadtime_0/ce] [get_bd_pins FrequencyDividerWith_2/clkdiv]
  connect_bd_net -net KeyControllerP0N_ver_0_keyout [get_bd_pins keyout_0] [get_bd_pins AcknowledgeChecker_v_0/keyin] [get_bd_pins KeyControllerP0N_ver_0/keysout]
  connect_bd_net -net KeyControllerP0N_ver_0_linepr [get_bd_pins linepr_0] [get_bd_pins KeyControllerP0N_ver_0/linepr]
  connect_bd_net -net KeyControllerP0N_ver_0_softshutdownpr [get_bd_pins softshutdownpr_0] [get_bd_pins KeyControllerP0N_ver_0/softshutdownpr]
  connect_bd_net -net KeyControllerP0N_ver_0_start [get_bd_pins CalculatingDeadtime_0/start] [get_bd_pins FrequencyDividerWith_2/reset] [get_bd_pins KeyControllerP0N_ver_0/start]
  connect_bd_net -net Net [get_bd_pins ready] [get_bd_pins AcknowledgeChecker_v_0/ready] [get_bd_pins KeyControllerP0N_ver_0/ready]
  connect_bd_net -net Net1 [get_bd_pins reset] [get_bd_pins AcknowledgeChecker_v_0/reset] [get_bd_pins CalculatingDeadtime_0/reset] [get_bd_pins CalculatingMintime_v_0/reset] [get_bd_pins KeyControllerP0N_ver_0/reset]
  connect_bd_net -net SignalChangeControl_0_reset [get_bd_pins CalculatingMintime_v_0/start] [get_bd_pins FrequencyDividerWith_0/reset] [get_bd_pins SignalChangeControl_0/reset]
  connect_bd_net -net ackin_0_1 [get_bd_pins ackin_0] [get_bd_pins AcknowledgeChecker_v_0/ackin]
  connect_bd_net -net ackpren_0_1 [get_bd_pins ackpren_0] [get_bd_pins AcknowledgeChecker_v_0/ackpren]
  connect_bd_net -net acktime_0_1 [get_bd_pins acktime_0] [get_bd_pins AcknowledgeChecker_v_0/acktime]
  connect_bd_net -net breaken_0_1 [get_bd_pins breaken] [get_bd_pins KeyControllerP0N_ver_0/breaken]
  connect_bd_net -net clk_0_1 [get_bd_pins clk] [get_bd_pins AcknowledgeChecker_v_0/clk] [get_bd_pins CalculatingDeadtime_0/clk] [get_bd_pins CalculatingMintime_v_0/clk] [get_bd_pins FrequencyDividerWith_0/clk] [get_bd_pins FrequencyDividerWith_2/clk] [get_bd_pins KeyControllerP0N_ver_0/clk] [get_bd_pins SignalChangeControl_0/clk]
  connect_bd_net -net currentpren_0_1 [get_bd_pins currentpren_0] [get_bd_pins AcknowledgeChecker_v_0/currentpren]
  connect_bd_net -net deadtime_0_1 [get_bd_pins deadtime] [get_bd_pins CalculatingDeadtime_0/deadtime]
  connect_bd_net -net en_0_1 [get_bd_pins mintimepren] [get_bd_pins CalculatingMintime_v_0/en]
  connect_bd_net -net er0in_0_1 [get_bd_pins er0in] [get_bd_pins KeyControllerP0N_ver_0/er0in]
  connect_bd_net -net keysel_0_1 [get_bd_pins keysel_0] [get_bd_pins KeyControllerP0N_ver_0/keysel] [get_bd_pins SignalChangeControl_0/signalchange]
  connect_bd_net -net keysen_1_1 [get_bd_pins keysen_0] [get_bd_pins KeyControllerP0N_ver_0/keysen]
  connect_bd_net -net linepren_0_1 [get_bd_pins linepren] [get_bd_pins KeyControllerP0N_ver_0/linepren]
  connect_bd_net -net mintime_0_1 [get_bd_pins mintime] [get_bd_pins CalculatingMintime_v_0/mintime]
  connect_bd_net -net ob_0_1 [get_bd_pins ob_0] [get_bd_pins KeyControllerP0N_ver_0/ob]
  connect_bd_net -net softshutdownen_0_1 [get_bd_pins softshutdownen] [get_bd_pins KeyControllerP0N_ver_0/softshutdownen]
  connect_bd_net -net softshutdowntimer_0_1 [get_bd_pins softshutdowntimer] [get_bd_pins KeyControllerP0N_ver_0/softshutdowntimer]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set acknowledges [ create_bd_port -dir I -from 7 -to 0 acknowledges ]
  set ackout [ create_bd_port -dir O -from 7 -to 0 ackout ]
  set ackpr [ create_bd_port -dir O -from 7 -to 0 ackpr ]
  set ackpren [ create_bd_port -dir I -from 7 -to 0 ackpren ]
  set acktime [ create_bd_port -dir I -from 7 -to 0 acktime ]
  set breaken [ create_bd_port -dir I breaken ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set currentpr [ create_bd_port -dir O -from 7 -to 0 currentpr ]
  set currentpren [ create_bd_port -dir I -from 7 -to 0 currentpren ]
  set deadtime [ create_bd_port -dir I -from 7 -to 0 deadtime ]
  set er0in [ create_bd_port -dir I er0in ]
  set keysel_0 [ create_bd_port -dir I -from 1 -to 0 keysel_0 ]
  set keysel_1 [ create_bd_port -dir I -from 1 -to 0 keysel_1 ]
  set keysen [ create_bd_port -dir I -from 7 -to 0 keysen ]
  set keysout [ create_bd_port -dir O -from 7 -to 0 keysout ]
  set linepr [ create_bd_port -dir O -from 1 -to 0 linepr ]
  set linepren [ create_bd_port -dir I linepren ]
  set mintime [ create_bd_port -dir I -from 7 -to 0 mintime ]
  set mintimepr [ create_bd_port -dir O -from 1 -to 0 mintimepr ]
  set mintimepren [ create_bd_port -dir I mintimepren ]
  set ob_0 [ create_bd_port -dir I -from 1 -to 0 ob_0 ]
  set ob_1 [ create_bd_port -dir I -from 1 -to 0 ob_1 ]
  set ready [ create_bd_port -dir I ready ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set softshutdownen [ create_bd_port -dir I softshutdownen ]
  set softshutdownpr [ create_bd_port -dir O -from 1 -to 0 softshutdownpr ]
  set softshutdowntimer [ create_bd_port -dir I -from 15 -to 0 softshutdowntimer ]
  set timeerror [ create_bd_port -dir O -from 15 -to 0 timeerror ]

  # Create instance: OneStageSynchronizer_0, and set properties
  set OneStageSynchronizer_0 [ create_bd_cell -type ip -vlnv setcorp:user:OneStageSynchronizerAndDigitalFilterBlock_ver_1_0:1.0 OneStageSynchronizer_0 ]
  set_property -dict [ list \
   CONFIG.PHASE_SHIFT {4} \
   CONFIG.QUANTITY_CHANNELS {2} \
 ] $OneStageSynchronizer_0

  # Create instance: OneStageSynchronizer_1, and set properties
  set OneStageSynchronizer_1 [ create_bd_cell -type ip -vlnv setcorp:user:OneStageSynchronizerAndDigitalFilterBlock_ver_1_0:1.0 OneStageSynchronizer_1 ]
  set_property -dict [ list \
   CONFIG.PHASE_SHIFT {4} \
   CONFIG.QUANTITY_CHANNELS {8} \
 ] $OneStageSynchronizer_1

  # Create instance: OneStageSynchronizer_2, and set properties
  set OneStageSynchronizer_2 [ create_bd_cell -type ip -vlnv setcorp:user:OneStageSynchronizerAndDigitalFilterBlock_ver_1_0:1.0 OneStageSynchronizer_2 ]
  set_property -dict [ list \
   CONFIG.PHASE_SHIFT {4} \
   CONFIG.QUANTITY_CHANNELS {2} \
 ] $OneStageSynchronizer_2

  # Create instance: TransistorKeys0
  create_hier_cell_TransistorKeys0 [current_bd_instance .] TransistorKeys0

  # Create instance: TransistorKeys1
  create_hier_cell_TransistorKeys1 [current_bd_instance .] TransistorKeys1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_3

  # Create instance: xlconcat_4, and set properties
  set xlconcat_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_4 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_4

  # Create instance: xlconcat_5, and set properties
  set xlconcat_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_5 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_5

  # Create instance: xlconcat_6, and set properties
  set xlconcat_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_6 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {8} \
 ] $xlconcat_6

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_1

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_4

  # Create instance: xlslice_5, and set properties
  set xlslice_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_5

  # Create instance: xlslice_6, and set properties
  set xlslice_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_6

  # Create instance: xlslice_7, and set properties
  set xlslice_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_7 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_7

  # Create instance: xlslice_8, and set properties
  set xlslice_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_8

  # Create instance: xlslice_9, and set properties
  set xlslice_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_9 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_9

  # Create port connections
  connect_bd_net -net Net [get_bd_ports ready] [get_bd_pins TransistorKeys0/ready] [get_bd_pins TransistorKeys1/ready]
  connect_bd_net -net Net1 [get_bd_ports reset] [get_bd_pins TransistorKeys0/reset] [get_bd_pins TransistorKeys1/reset]
  connect_bd_net -net OneStageSynchronizer_1_sync_signal [get_bd_ports ackout] [get_bd_pins OneStageSynchronizer_1/sync_signal] [get_bd_pins xlslice_8/Din] [get_bd_pins xlslice_9/Din]
  connect_bd_net -net TransistorKeys0_ackpr_0 [get_bd_pins TransistorKeys0/ackpr_0] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net TransistorKeys0_currentpr_0 [get_bd_pins TransistorKeys0/currentpr_0] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net TransistorKeys0_keyout_0 [get_bd_pins TransistorKeys0/keyout_0] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net TransistorKeys0_linepr_0 [get_bd_pins TransistorKeys0/linepr_0] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net TransistorKeys0_mintimepr_0 [get_bd_pins TransistorKeys0/mintimepr_0] [get_bd_pins xlconcat_4/In0]
  connect_bd_net -net TransistorKeys0_softshutdownpr_0 [get_bd_pins TransistorKeys0/softshutdownpr_0] [get_bd_pins xlconcat_5/In0]
  connect_bd_net -net TransistorKeys0_timeerror_0 [get_bd_pins TransistorKeys0/timeerror_0] [get_bd_pins xlconcat_6/In0]
  connect_bd_net -net TransistorKeys1_ackpr_0 [get_bd_pins TransistorKeys1/ackpr_0] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net TransistorKeys1_currentpr_0 [get_bd_pins TransistorKeys1/currentpr_0] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net TransistorKeys1_keyout_0 [get_bd_pins TransistorKeys1/keyout_0] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net TransistorKeys1_linepr_0 [get_bd_pins TransistorKeys1/linepr_0] [get_bd_pins xlconcat_3/In1]
  connect_bd_net -net TransistorKeys1_mintimepr_1 [get_bd_pins TransistorKeys1/mintimepr_1] [get_bd_pins xlconcat_4/In1]
  connect_bd_net -net TransistorKeys1_softshutdownpr_0 [get_bd_pins TransistorKeys1/softshutdownpr_0] [get_bd_pins xlconcat_5/In1]
  connect_bd_net -net TransistorKeys1_timeerror_0 [get_bd_pins TransistorKeys1/timeerror_0] [get_bd_pins xlconcat_6/In1]
  connect_bd_net -net acknowledges_1 [get_bd_ports acknowledges] [get_bd_pins OneStageSynchronizer_1/async_signal]
  connect_bd_net -net ackpren_2 [get_bd_ports ackpren] [get_bd_pins xlslice_5/Din] [get_bd_pins xlslice_6/Din]
  connect_bd_net -net acktime_0_1 [get_bd_ports acktime] [get_bd_pins TransistorKeys0/acktime_0] [get_bd_pins TransistorKeys1/acktime_0]
  connect_bd_net -net breaken_0_1 [get_bd_ports breaken] [get_bd_pins TransistorKeys0/breaken] [get_bd_pins TransistorKeys1/breaken]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins OneStageSynchronizer_0/clk] [get_bd_pins OneStageSynchronizer_1/clk] [get_bd_pins OneStageSynchronizer_2/clk] [get_bd_pins TransistorKeys0/clk] [get_bd_pins TransistorKeys1/clk]
  connect_bd_net -net currentpren_2 [get_bd_ports currentpren] [get_bd_pins xlslice_4/Din] [get_bd_pins xlslice_7/Din]
  connect_bd_net -net deadtime_0_1 [get_bd_ports deadtime] [get_bd_pins TransistorKeys0/deadtime] [get_bd_pins TransistorKeys1/deadtime]
  connect_bd_net -net en_0_1 [get_bd_ports mintimepren] [get_bd_pins TransistorKeys0/mintimepren] [get_bd_pins TransistorKeys1/mintimepren]
  connect_bd_net -net er0in_0_1 [get_bd_ports er0in] [get_bd_pins TransistorKeys0/er0in] [get_bd_pins TransistorKeys1/er0in]
  connect_bd_net -net keysel_0_1 [get_bd_ports keysel_0] [get_bd_pins OneStageSynchronizer_0/async_signal]
  connect_bd_net -net keysel_0_2 [get_bd_pins OneStageSynchronizer_0/sync_signal] [get_bd_pins TransistorKeys0/keysel_0]
  connect_bd_net -net keysel_0_3 [get_bd_pins OneStageSynchronizer_2/sync_signal] [get_bd_pins TransistorKeys1/keysel_0]
  connect_bd_net -net keysel_1_1 [get_bd_ports keysel_1] [get_bd_pins OneStageSynchronizer_2/async_signal]
  connect_bd_net -net keysen_0_2 [get_bd_pins TransistorKeys0/keysen_0] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net keysen_2 [get_bd_ports keysen] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net linepren_0_1 [get_bd_ports linepren] [get_bd_pins TransistorKeys0/linepren] [get_bd_pins TransistorKeys1/linepren]
  connect_bd_net -net mintime_0_1 [get_bd_ports mintime] [get_bd_pins TransistorKeys0/mintime] [get_bd_pins TransistorKeys1/mintime]
  connect_bd_net -net ob_0_0_1 [get_bd_ports ob_1] [get_bd_pins TransistorKeys1/ob_0]
  connect_bd_net -net ob_0_1 [get_bd_ports ob_0] [get_bd_pins TransistorKeys0/ob_0]
  connect_bd_net -net softshutdownen_0_1 [get_bd_ports softshutdownen] [get_bd_pins TransistorKeys0/softshutdownen] [get_bd_pins TransistorKeys1/softshutdownen]
  connect_bd_net -net softshutdowntimer_0_1 [get_bd_ports softshutdowntimer] [get_bd_pins TransistorKeys0/softshutdowntimer] [get_bd_pins TransistorKeys1/softshutdowntimer]
  connect_bd_net -net xlconcat_0_dout [get_bd_ports ackpr] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_ports currentpr] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_ports keysout] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_ports linepr] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlconcat_3_dout1 [get_bd_ports mintimepr] [get_bd_pins xlconcat_4/dout]
  connect_bd_net -net xlconcat_5_dout [get_bd_ports softshutdownpr] [get_bd_pins xlconcat_5/dout]
  connect_bd_net -net xlconcat_6_dout [get_bd_ports timeerror] [get_bd_pins xlconcat_6/dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins TransistorKeys1/keysen_0] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins TransistorKeys1/currentpren_0] [get_bd_pins xlslice_4/Dout]
  connect_bd_net -net xlslice_5_Dout [get_bd_pins TransistorKeys1/ackpren_0] [get_bd_pins xlslice_5/Dout]
  connect_bd_net -net xlslice_6_Dout [get_bd_pins TransistorKeys0/ackpren_0] [get_bd_pins xlslice_6/Dout]
  connect_bd_net -net xlslice_7_Dout [get_bd_pins TransistorKeys0/currentpren_0] [get_bd_pins xlslice_7/Dout]
  connect_bd_net -net xlslice_8_Dout [get_bd_pins TransistorKeys1/ackin_0] [get_bd_pins xlslice_8/Dout]
  connect_bd_net -net xlslice_9_Dout [get_bd_pins TransistorKeys0/ackin_0] [get_bd_pins xlslice_9/Dout]

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


