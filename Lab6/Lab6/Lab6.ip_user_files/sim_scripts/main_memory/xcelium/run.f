-makelib xcelium_lib/xil_defaultlib -sv \
  "/opt/vlab/vivado/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/vlab/vivado/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Lab6.srcs/sources_1/ip/main_memory/sim/main_memory.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

