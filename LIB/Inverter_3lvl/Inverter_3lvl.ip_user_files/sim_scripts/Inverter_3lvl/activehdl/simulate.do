onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Inverter_3lvl -L xil_defaultlib -L secureip -O5 xil_defaultlib.Inverter_3lvl

do {wave.do}

view wave
view structure

do {Inverter_3lvl.udo}

run -all

endsim

quit -force
