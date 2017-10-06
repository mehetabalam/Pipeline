onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+CPU -L secureip -L xil_defaultlib -O5 xil_defaultlib.CPU

do {wave.do}

view wave
view structure
view signals

do {CPU.udo}

run -all

endsim

quit -force
