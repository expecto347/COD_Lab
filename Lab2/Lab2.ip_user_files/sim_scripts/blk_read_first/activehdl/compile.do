vlib work
vlib activehdl

vlib activehdl/blk_mem_gen_v8_4_3
vlib activehdl/xil_defaultlib

vmap blk_mem_gen_v8_4_3 activehdl/blk_mem_gen_v8_4_3
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work blk_mem_gen_v8_4_3  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab2.srcs/sources_1/ip/blk_read_first/sim/blk_read_first.v" \


vlog -work xil_defaultlib \
"glbl.v"

