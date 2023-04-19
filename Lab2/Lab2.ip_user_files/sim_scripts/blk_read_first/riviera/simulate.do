onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+blk_read_first -L blk_mem_gen_v8_4_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.blk_read_first xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {blk_read_first.udo}

run -all

endsim

quit -force
