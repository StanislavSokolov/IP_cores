vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_2
vlib riviera/xlconcat_v2_1_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3

vcom -work xil_defaultlib -93 \
"../../../bd/TransistorKeys/ipshared/aef2/src/CalculatingDeadtime_ver_1_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_CalculatingDeadtime_0_0/sim/TransistorKeys_CalculatingDeadtime_0_0.vhd" \
"../../../bd/TransistorKeys/ipshared/eb44/src/FrequencyDividerWithReset_ver_1_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_FrequencyDividerWith_0_0/sim/TransistorKeys_FrequencyDividerWith_0_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_FrequencyDividerWith_2_0/sim/TransistorKeys_FrequencyDividerWith_2_0.vhd" \
"../../../bd/TransistorKeys/ipshared/6862/src/CalculatingMintime_ver_1_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_CalculatingMintime_v_0_0/sim/TransistorKeys_CalculatingMintime_v_0_0.vhd" \
"../../../bd/TransistorKeys/ipshared/2d89/src/AcknowledgeChecker_ver_1_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_AcknowledgeChecker_v_0_0/sim/TransistorKeys_AcknowledgeChecker_v_0_0.vhd" \
"../../../bd/TransistorKeys/ipshared/932f/src/SignalChangeControl_ver_1_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_SignalChangeControl_0_0/sim/TransistorKeys_SignalChangeControl_0_0.vhd" \
"../../../bd/TransistorKeys/ipshared/4b12/src/KeyControllerP0N_ver_2_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_KeyControllerP0N_ver_0_0/sim/TransistorKeys_KeyControllerP0N_ver_0_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_CalculatingDeadtime_0_1/sim/TransistorKeys_CalculatingDeadtime_0_1.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_FrequencyDividerWith_0_1/sim/TransistorKeys_FrequencyDividerWith_0_1.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_FrequencyDividerWith_2_1/sim/TransistorKeys_FrequencyDividerWith_2_1.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_CalculatingMintime_v_0_1/sim/TransistorKeys_CalculatingMintime_v_0_1.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_AcknowledgeChecker_v_0_1/sim/TransistorKeys_AcknowledgeChecker_v_0_1.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_SignalChangeControl_0_1/sim/TransistorKeys_SignalChangeControl_0_1.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_KeyControllerP0N_ver_0_1/sim/TransistorKeys_KeyControllerP0N_ver_0_1.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../TransistorKeys_ver_1_0.srcs/sources_1/bd/TransistorKeys/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_0_0/sim/TransistorKeys_xlslice_0_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_1_0/sim/TransistorKeys_xlslice_1_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_4_0/sim/TransistorKeys_xlslice_4_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_5_0/sim/TransistorKeys_xlslice_5_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_6_0/sim/TransistorKeys_xlslice_6_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_7_0/sim/TransistorKeys_xlslice_7_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/TransistorKeys/ipshared/ea89/src/OneStageSynchronizerAndDigitalFilterBlock_ver_1_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_OneStageSynchronizer_1_0/sim/TransistorKeys_OneStageSynchronizer_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_8_0/sim/TransistorKeys_xlslice_8_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlslice_9_0/sim/TransistorKeys_xlslice_9_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/TransistorKeys/ip/TransistorKeys_OneStageSynchronizer_0_0/sim/TransistorKeys_OneStageSynchronizer_0_0.vhd" \
"../../../bd/TransistorKeys/ip/TransistorKeys_OneStageSynchronizer_2_0/sim/TransistorKeys_OneStageSynchronizer_2_0.vhd" \

vlog -work xlconcat_v2_1_3  -v2k5 \
"../../../../TransistorKeys_ver_1_0.srcs/sources_1/bd/TransistorKeys/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlconcat_0_0/sim/TransistorKeys_xlconcat_0_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlconcat_1_0/sim/TransistorKeys_xlconcat_1_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlconcat_2_0/sim/TransistorKeys_xlconcat_2_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlconcat_3_0/sim/TransistorKeys_xlconcat_3_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlconcat_4_0/sim/TransistorKeys_xlconcat_4_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlconcat_5_0/sim/TransistorKeys_xlconcat_5_0.v" \
"../../../bd/TransistorKeys/ip/TransistorKeys_xlconcat_6_0/sim/TransistorKeys_xlconcat_6_0.v" \
"../../../bd/TransistorKeys/sim/TransistorKeys.v" \

vlog -work xil_defaultlib \
"glbl.v"

