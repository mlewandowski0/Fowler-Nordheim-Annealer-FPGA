# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COUNTER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FLIPPING_OUTPUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FRACTIONAL_PART" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GRAPH_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDX_THAT_FIRED_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LOG_LUT_BIT_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LOG_NOISE_LUT_FILENAME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LOG_NOISE_SOURCE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEMBRANE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NEURONS_PER_UNIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NEURON_NUM_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NEURON_SEL_LFSR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NO_CLK_CYCLES_AFTER_UPDATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NO_OF_CLK_CYCLES_TO_PROPAGATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PIPELINED_ENSEMBLE_STORAGE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PIPELINED_ROMs" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REAL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SOLUTION_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TEMPERATURE_LUT_FILENAME" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TEMPERATURE_LUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TEMP_INC_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UNITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UNIT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_FLOAT_POINT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_ROUND_ROBIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_TRANSMIT_WITH_BUFF" -parent ${Page_0}


}

proc update_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to update COUNTER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to validate COUNTER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FLIPPING_OUTPUT_WIDTH { PARAM_VALUE.FLIPPING_OUTPUT_WIDTH } {
	# Procedure called to update FLIPPING_OUTPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLIPPING_OUTPUT_WIDTH { PARAM_VALUE.FLIPPING_OUTPUT_WIDTH } {
	# Procedure called to validate FLIPPING_OUTPUT_WIDTH
	return true
}

proc update_PARAM_VALUE.FRACTIONAL_PART { PARAM_VALUE.FRACTIONAL_PART } {
	# Procedure called to update FRACTIONAL_PART when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FRACTIONAL_PART { PARAM_VALUE.FRACTIONAL_PART } {
	# Procedure called to validate FRACTIONAL_PART
	return true
}

proc update_PARAM_VALUE.GRAPH_WIDTH { PARAM_VALUE.GRAPH_WIDTH } {
	# Procedure called to update GRAPH_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GRAPH_WIDTH { PARAM_VALUE.GRAPH_WIDTH } {
	# Procedure called to validate GRAPH_WIDTH
	return true
}

proc update_PARAM_VALUE.IDX_THAT_FIRED_WIDTH { PARAM_VALUE.IDX_THAT_FIRED_WIDTH } {
	# Procedure called to update IDX_THAT_FIRED_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDX_THAT_FIRED_WIDTH { PARAM_VALUE.IDX_THAT_FIRED_WIDTH } {
	# Procedure called to validate IDX_THAT_FIRED_WIDTH
	return true
}

proc update_PARAM_VALUE.LOG_LUT_BIT_SIZE { PARAM_VALUE.LOG_LUT_BIT_SIZE } {
	# Procedure called to update LOG_LUT_BIT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOG_LUT_BIT_SIZE { PARAM_VALUE.LOG_LUT_BIT_SIZE } {
	# Procedure called to validate LOG_LUT_BIT_SIZE
	return true
}

proc update_PARAM_VALUE.LOG_NOISE_LUT_FILENAME { PARAM_VALUE.LOG_NOISE_LUT_FILENAME } {
	# Procedure called to update LOG_NOISE_LUT_FILENAME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOG_NOISE_LUT_FILENAME { PARAM_VALUE.LOG_NOISE_LUT_FILENAME } {
	# Procedure called to validate LOG_NOISE_LUT_FILENAME
	return true
}

proc update_PARAM_VALUE.LOG_NOISE_SOURCE_WIDTH { PARAM_VALUE.LOG_NOISE_SOURCE_WIDTH } {
	# Procedure called to update LOG_NOISE_SOURCE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOG_NOISE_SOURCE_WIDTH { PARAM_VALUE.LOG_NOISE_SOURCE_WIDTH } {
	# Procedure called to validate LOG_NOISE_SOURCE_WIDTH
	return true
}

proc update_PARAM_VALUE.MEMBRANE_WIDTH { PARAM_VALUE.MEMBRANE_WIDTH } {
	# Procedure called to update MEMBRANE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEMBRANE_WIDTH { PARAM_VALUE.MEMBRANE_WIDTH } {
	# Procedure called to validate MEMBRANE_WIDTH
	return true
}

proc update_PARAM_VALUE.NEURONS_PER_UNIT { PARAM_VALUE.NEURONS_PER_UNIT } {
	# Procedure called to update NEURONS_PER_UNIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NEURONS_PER_UNIT { PARAM_VALUE.NEURONS_PER_UNIT } {
	# Procedure called to validate NEURONS_PER_UNIT
	return true
}

proc update_PARAM_VALUE.NEURON_NUM_WIDTH { PARAM_VALUE.NEURON_NUM_WIDTH } {
	# Procedure called to update NEURON_NUM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NEURON_NUM_WIDTH { PARAM_VALUE.NEURON_NUM_WIDTH } {
	# Procedure called to validate NEURON_NUM_WIDTH
	return true
}

proc update_PARAM_VALUE.NEURON_SEL_LFSR_WIDTH { PARAM_VALUE.NEURON_SEL_LFSR_WIDTH } {
	# Procedure called to update NEURON_SEL_LFSR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NEURON_SEL_LFSR_WIDTH { PARAM_VALUE.NEURON_SEL_LFSR_WIDTH } {
	# Procedure called to validate NEURON_SEL_LFSR_WIDTH
	return true
}

proc update_PARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE { PARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE } {
	# Procedure called to update NO_CLK_CYCLES_AFTER_UPDATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE { PARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE } {
	# Procedure called to validate NO_CLK_CYCLES_AFTER_UPDATE
	return true
}

proc update_PARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE { PARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE } {
	# Procedure called to update NO_OF_CLK_CYCLES_TO_PROPAGATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE { PARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE } {
	# Procedure called to validate NO_OF_CLK_CYCLES_TO_PROPAGATE
	return true
}

proc update_PARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE { PARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE } {
	# Procedure called to update NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE { PARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE } {
	# Procedure called to validate NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE
	return true
}

proc update_PARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE { PARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE } {
	# Procedure called to update PIPELINED_ENSEMBLE_STORAGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE { PARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE } {
	# Procedure called to validate PIPELINED_ENSEMBLE_STORAGE
	return true
}

proc update_PARAM_VALUE.PIPELINED_ROMs { PARAM_VALUE.PIPELINED_ROMs } {
	# Procedure called to update PIPELINED_ROMs when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PIPELINED_ROMs { PARAM_VALUE.PIPELINED_ROMs } {
	# Procedure called to validate PIPELINED_ROMs
	return true
}

proc update_PARAM_VALUE.REAL_WIDTH { PARAM_VALUE.REAL_WIDTH } {
	# Procedure called to update REAL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REAL_WIDTH { PARAM_VALUE.REAL_WIDTH } {
	# Procedure called to validate REAL_WIDTH
	return true
}

proc update_PARAM_VALUE.SOLUTION_WIDTH { PARAM_VALUE.SOLUTION_WIDTH } {
	# Procedure called to update SOLUTION_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SOLUTION_WIDTH { PARAM_VALUE.SOLUTION_WIDTH } {
	# Procedure called to validate SOLUTION_WIDTH
	return true
}

proc update_PARAM_VALUE.TEMPERATURE_LUT_FILENAME { PARAM_VALUE.TEMPERATURE_LUT_FILENAME } {
	# Procedure called to update TEMPERATURE_LUT_FILENAME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEMPERATURE_LUT_FILENAME { PARAM_VALUE.TEMPERATURE_LUT_FILENAME } {
	# Procedure called to validate TEMPERATURE_LUT_FILENAME
	return true
}

proc update_PARAM_VALUE.TEMPERATURE_LUT_WIDTH { PARAM_VALUE.TEMPERATURE_LUT_WIDTH } {
	# Procedure called to update TEMPERATURE_LUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEMPERATURE_LUT_WIDTH { PARAM_VALUE.TEMPERATURE_LUT_WIDTH } {
	# Procedure called to validate TEMPERATURE_LUT_WIDTH
	return true
}

proc update_PARAM_VALUE.TEMP_INC_WIDTH { PARAM_VALUE.TEMP_INC_WIDTH } {
	# Procedure called to update TEMP_INC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEMP_INC_WIDTH { PARAM_VALUE.TEMP_INC_WIDTH } {
	# Procedure called to validate TEMP_INC_WIDTH
	return true
}

proc update_PARAM_VALUE.UNITS { PARAM_VALUE.UNITS } {
	# Procedure called to update UNITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UNITS { PARAM_VALUE.UNITS } {
	# Procedure called to validate UNITS
	return true
}

proc update_PARAM_VALUE.UNIT_WIDTH { PARAM_VALUE.UNIT_WIDTH } {
	# Procedure called to update UNIT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UNIT_WIDTH { PARAM_VALUE.UNIT_WIDTH } {
	# Procedure called to validate UNIT_WIDTH
	return true
}

proc update_PARAM_VALUE.USE_FLOAT_POINT { PARAM_VALUE.USE_FLOAT_POINT } {
	# Procedure called to update USE_FLOAT_POINT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_FLOAT_POINT { PARAM_VALUE.USE_FLOAT_POINT } {
	# Procedure called to validate USE_FLOAT_POINT
	return true
}

proc update_PARAM_VALUE.USE_ROUND_ROBIN { PARAM_VALUE.USE_ROUND_ROBIN } {
	# Procedure called to update USE_ROUND_ROBIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_ROUND_ROBIN { PARAM_VALUE.USE_ROUND_ROBIN } {
	# Procedure called to validate USE_ROUND_ROBIN
	return true
}

proc update_PARAM_VALUE.USE_TRANSMIT_WITH_BUFF { PARAM_VALUE.USE_TRANSMIT_WITH_BUFF } {
	# Procedure called to update USE_TRANSMIT_WITH_BUFF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_TRANSMIT_WITH_BUFF { PARAM_VALUE.USE_TRANSMIT_WITH_BUFF } {
	# Procedure called to validate USE_TRANSMIT_WITH_BUFF
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.USE_ROUND_ROBIN { MODELPARAM_VALUE.USE_ROUND_ROBIN PARAM_VALUE.USE_ROUND_ROBIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_ROUND_ROBIN}] ${MODELPARAM_VALUE.USE_ROUND_ROBIN}
}

proc update_MODELPARAM_VALUE.NEURON_SEL_LFSR_WIDTH { MODELPARAM_VALUE.NEURON_SEL_LFSR_WIDTH PARAM_VALUE.NEURON_SEL_LFSR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NEURON_SEL_LFSR_WIDTH}] ${MODELPARAM_VALUE.NEURON_SEL_LFSR_WIDTH}
}

proc update_MODELPARAM_VALUE.MEMBRANE_WIDTH { MODELPARAM_VALUE.MEMBRANE_WIDTH PARAM_VALUE.MEMBRANE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEMBRANE_WIDTH}] ${MODELPARAM_VALUE.MEMBRANE_WIDTH}
}

proc update_MODELPARAM_VALUE.LOG_NOISE_SOURCE_WIDTH { MODELPARAM_VALUE.LOG_NOISE_SOURCE_WIDTH PARAM_VALUE.LOG_NOISE_SOURCE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOG_NOISE_SOURCE_WIDTH}] ${MODELPARAM_VALUE.LOG_NOISE_SOURCE_WIDTH}
}

proc update_MODELPARAM_VALUE.LOG_LUT_BIT_SIZE { MODELPARAM_VALUE.LOG_LUT_BIT_SIZE PARAM_VALUE.LOG_LUT_BIT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOG_LUT_BIT_SIZE}] ${MODELPARAM_VALUE.LOG_LUT_BIT_SIZE}
}

proc update_MODELPARAM_VALUE.COUNTER_WIDTH { MODELPARAM_VALUE.COUNTER_WIDTH PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNTER_WIDTH}] ${MODELPARAM_VALUE.COUNTER_WIDTH}
}

proc update_MODELPARAM_VALUE.TEMP_INC_WIDTH { MODELPARAM_VALUE.TEMP_INC_WIDTH PARAM_VALUE.TEMP_INC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEMP_INC_WIDTH}] ${MODELPARAM_VALUE.TEMP_INC_WIDTH}
}

proc update_MODELPARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE { MODELPARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE PARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE}] ${MODELPARAM_VALUE.NO_CLK_CYCLES_AFTER_UPDATE}
}

proc update_MODELPARAM_VALUE.SOLUTION_WIDTH { MODELPARAM_VALUE.SOLUTION_WIDTH PARAM_VALUE.SOLUTION_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SOLUTION_WIDTH}] ${MODELPARAM_VALUE.SOLUTION_WIDTH}
}

proc update_MODELPARAM_VALUE.USE_FLOAT_POINT { MODELPARAM_VALUE.USE_FLOAT_POINT PARAM_VALUE.USE_FLOAT_POINT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_FLOAT_POINT}] ${MODELPARAM_VALUE.USE_FLOAT_POINT}
}

proc update_MODELPARAM_VALUE.REAL_WIDTH { MODELPARAM_VALUE.REAL_WIDTH PARAM_VALUE.REAL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REAL_WIDTH}] ${MODELPARAM_VALUE.REAL_WIDTH}
}

proc update_MODELPARAM_VALUE.FLIPPING_OUTPUT_WIDTH { MODELPARAM_VALUE.FLIPPING_OUTPUT_WIDTH PARAM_VALUE.FLIPPING_OUTPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLIPPING_OUTPUT_WIDTH}] ${MODELPARAM_VALUE.FLIPPING_OUTPUT_WIDTH}
}

proc update_MODELPARAM_VALUE.FRACTIONAL_PART { MODELPARAM_VALUE.FRACTIONAL_PART PARAM_VALUE.FRACTIONAL_PART } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FRACTIONAL_PART}] ${MODELPARAM_VALUE.FRACTIONAL_PART}
}

proc update_MODELPARAM_VALUE.LOG_NOISE_LUT_FILENAME { MODELPARAM_VALUE.LOG_NOISE_LUT_FILENAME PARAM_VALUE.LOG_NOISE_LUT_FILENAME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOG_NOISE_LUT_FILENAME}] ${MODELPARAM_VALUE.LOG_NOISE_LUT_FILENAME}
}

proc update_MODELPARAM_VALUE.TEMPERATURE_LUT_FILENAME { MODELPARAM_VALUE.TEMPERATURE_LUT_FILENAME PARAM_VALUE.TEMPERATURE_LUT_FILENAME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEMPERATURE_LUT_FILENAME}] ${MODELPARAM_VALUE.TEMPERATURE_LUT_FILENAME}
}

proc update_MODELPARAM_VALUE.GRAPH_WIDTH { MODELPARAM_VALUE.GRAPH_WIDTH PARAM_VALUE.GRAPH_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GRAPH_WIDTH}] ${MODELPARAM_VALUE.GRAPH_WIDTH}
}

proc update_MODELPARAM_VALUE.UNITS { MODELPARAM_VALUE.UNITS PARAM_VALUE.UNITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UNITS}] ${MODELPARAM_VALUE.UNITS}
}

proc update_MODELPARAM_VALUE.UNIT_WIDTH { MODELPARAM_VALUE.UNIT_WIDTH PARAM_VALUE.UNIT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UNIT_WIDTH}] ${MODELPARAM_VALUE.UNIT_WIDTH}
}

proc update_MODELPARAM_VALUE.NEURONS_PER_UNIT { MODELPARAM_VALUE.NEURONS_PER_UNIT PARAM_VALUE.NEURONS_PER_UNIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NEURONS_PER_UNIT}] ${MODELPARAM_VALUE.NEURONS_PER_UNIT}
}

proc update_MODELPARAM_VALUE.NEURON_NUM_WIDTH { MODELPARAM_VALUE.NEURON_NUM_WIDTH PARAM_VALUE.NEURON_NUM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NEURON_NUM_WIDTH}] ${MODELPARAM_VALUE.NEURON_NUM_WIDTH}
}

proc update_MODELPARAM_VALUE.TEMPERATURE_LUT_WIDTH { MODELPARAM_VALUE.TEMPERATURE_LUT_WIDTH PARAM_VALUE.TEMPERATURE_LUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEMPERATURE_LUT_WIDTH}] ${MODELPARAM_VALUE.TEMPERATURE_LUT_WIDTH}
}

proc update_MODELPARAM_VALUE.PIPELINED_ROMs { MODELPARAM_VALUE.PIPELINED_ROMs PARAM_VALUE.PIPELINED_ROMs } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PIPELINED_ROMs}] ${MODELPARAM_VALUE.PIPELINED_ROMs}
}

proc update_MODELPARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE { MODELPARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE PARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE}] ${MODELPARAM_VALUE.PIPELINED_ENSEMBLE_STORAGE}
}

proc update_MODELPARAM_VALUE.IDX_THAT_FIRED_WIDTH { MODELPARAM_VALUE.IDX_THAT_FIRED_WIDTH PARAM_VALUE.IDX_THAT_FIRED_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDX_THAT_FIRED_WIDTH}] ${MODELPARAM_VALUE.IDX_THAT_FIRED_WIDTH}
}

proc update_MODELPARAM_VALUE.USE_TRANSMIT_WITH_BUFF { MODELPARAM_VALUE.USE_TRANSMIT_WITH_BUFF PARAM_VALUE.USE_TRANSMIT_WITH_BUFF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_TRANSMIT_WITH_BUFF}] ${MODELPARAM_VALUE.USE_TRANSMIT_WITH_BUFF}
}

proc update_MODELPARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE { MODELPARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE PARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE}] ${MODELPARAM_VALUE.NO_OF_CLK_CYCLES_TO_PROPAGATE}
}

proc update_MODELPARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE { MODELPARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE PARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE}] ${MODELPARAM_VALUE.NO_OF_CLK_CYCLES_TO_UPDATE_MEMBRANE}
}

