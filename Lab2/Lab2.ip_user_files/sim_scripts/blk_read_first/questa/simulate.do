onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib blk_read_first_opt

do {wave.do}

view wave
view structure
view signals

do {blk_read_first.udo}

run -all

quit -force
