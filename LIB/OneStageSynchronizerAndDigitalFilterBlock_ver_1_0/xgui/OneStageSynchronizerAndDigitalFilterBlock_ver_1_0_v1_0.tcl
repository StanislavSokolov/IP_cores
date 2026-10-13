# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "PHASE_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "QUANTITY_CHANNELS" -parent ${Page_0}


}

proc update_PARAM_VALUE.PHASE_SHIFT { PARAM_VALUE.PHASE_SHIFT } {
	# Procedure called to update PHASE_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PHASE_SHIFT { PARAM_VALUE.PHASE_SHIFT } {
	# Procedure called to validate PHASE_SHIFT
	return true
}

proc update_PARAM_VALUE.QUANTITY_CHANNELS { PARAM_VALUE.QUANTITY_CHANNELS } {
	# Procedure called to update QUANTITY_CHANNELS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.QUANTITY_CHANNELS { PARAM_VALUE.QUANTITY_CHANNELS } {
	# Procedure called to validate QUANTITY_CHANNELS
	return true
}


proc update_MODELPARAM_VALUE.PHASE_SHIFT { MODELPARAM_VALUE.PHASE_SHIFT PARAM_VALUE.PHASE_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PHASE_SHIFT}] ${MODELPARAM_VALUE.PHASE_SHIFT}
}

proc update_MODELPARAM_VALUE.QUANTITY_CHANNELS { MODELPARAM_VALUE.QUANTITY_CHANNELS PARAM_VALUE.QUANTITY_CHANNELS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.QUANTITY_CHANNELS}] ${MODELPARAM_VALUE.QUANTITY_CHANNELS}
}

