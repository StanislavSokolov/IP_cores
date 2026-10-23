onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib TransistorKeys_opt

do {wave.do}

view wave
view structure
view signals

do {TransistorKeys.udo}

run -all

quit -force
