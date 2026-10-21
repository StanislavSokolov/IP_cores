# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COUNTER" -parent ${Page_0}


}

proc update_PARAM_VALUE.COUNTER { PARAM_VALUE.COUNTER } {
	# Procedure called to update COUNTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNTER { PARAM_VALUE.COUNTER } {
	# Procedure called to validate COUNTER
	return true
}


proc update_MODELPARAM_VALUE.COUNTER { MODELPARAM_VALUE.COUNTER PARAM_VALUE.COUNTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNTER}] ${MODELPARAM_VALUE.COUNTER}
}

