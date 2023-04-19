onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+blk_default -L blk_mem_gen_v8_4_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.blk_default xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {blk_default.udo}

run -all

endsim

quit -force
