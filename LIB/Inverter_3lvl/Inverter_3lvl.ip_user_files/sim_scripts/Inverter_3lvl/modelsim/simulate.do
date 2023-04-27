onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Inverter_3lvl

do {wave.do}

view wave
view structure
view signals

do {Inverter_3lvl.udo}

run -all

quit -force
