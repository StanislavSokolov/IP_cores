# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDRESS_DEVICE_BUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDRESS_REG_BUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COUNT_RESET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COUNT_TIMEOUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_BUS_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH { PARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH } {
	# Procedure called to update ADDRESS_DEVICE_BUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH { PARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH } {
	# Procedure called to validate ADDRESS_DEVICE_BUS_WIDTH
	return true
}

proc update_PARAM_VALUE.ADDRESS_REG_BUS_WIDTH { PARAM_VALUE.ADDRESS_REG_BUS_WIDTH } {
	# Procedure called to update ADDRESS_REG_BUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDRESS_REG_BUS_WIDTH { PARAM_VALUE.ADDRESS_REG_BUS_WIDTH } {
	# Procedure called to validate ADDRESS_REG_BUS_WIDTH
	return true
}

proc update_PARAM_VALUE.COUNT_RESET { PARAM_VALUE.COUNT_RESET } {
	# Procedure called to update COUNT_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_RESET { PARAM_VALUE.COUNT_RESET } {
	# Procedure called to validate COUNT_RESET
	return true
}

proc update_PARAM_VALUE.COUNT_TIMEOUT { PARAM_VALUE.COUNT_TIMEOUT } {
	# Procedure called to update COUNT_TIMEOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_TIMEOUT { PARAM_VALUE.COUNT_TIMEOUT } {
	# Procedure called to validate COUNT_TIMEOUT
	return true
}

proc update_PARAM_VALUE.DATA_BUS_WIDTH { PARAM_VALUE.DATA_BUS_WIDTH } {
	# Procedure called to update DATA_BUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_BUS_WIDTH { PARAM_VALUE.DATA_BUS_WIDTH } {
	# Procedure called to validate DATA_BUS_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH { MODELPARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH PARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH}] ${MODELPARAM_VALUE.ADDRESS_DEVICE_BUS_WIDTH}
}

proc update_MODELPARAM_VALUE.ADDRESS_REG_BUS_WIDTH { MODELPARAM_VALUE.ADDRESS_REG_BUS_WIDTH PARAM_VALUE.ADDRESS_REG_BUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDRESS_REG_BUS_WIDTH}] ${MODELPARAM_VALUE.ADDRESS_REG_BUS_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_BUS_WIDTH { MODELPARAM_VALUE.DATA_BUS_WIDTH PARAM_VALUE.DATA_BUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_BUS_WIDTH}] ${MODELPARAM_VALUE.DATA_BUS_WIDTH}
}

proc update_MODELPARAM_VALUE.COUNT_RESET { MODELPARAM_VALUE.COUNT_RESET PARAM_VALUE.COUNT_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNT_RESET}] ${MODELPARAM_VALUE.COUNT_RESET}
}

proc update_MODELPARAM_VALUE.COUNT_TIMEOUT { MODELPARAM_VALUE.COUNT_TIMEOUT PARAM_VALUE.COUNT_TIMEOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNT_TIMEOUT}] ${MODELPARAM_VALUE.COUNT_TIMEOUT}
}

