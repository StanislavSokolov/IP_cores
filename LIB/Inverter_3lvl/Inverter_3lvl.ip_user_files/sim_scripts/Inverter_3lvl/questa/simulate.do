onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Inverter_3lvl_opt

do {wave.do}

view wave
view structure
view signals

do {Inverter_3lvl.udo}

run -all

quit -force
