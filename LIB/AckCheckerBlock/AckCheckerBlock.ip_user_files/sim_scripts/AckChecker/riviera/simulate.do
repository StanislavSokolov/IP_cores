onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+AckChecker -L xil_defaultlib -L secureip -O5 xil_defaultlib.AckChecker

do {wave.do}

view wave
view structure

do {AckChecker.udo}

run -all

endsim

quit -force
