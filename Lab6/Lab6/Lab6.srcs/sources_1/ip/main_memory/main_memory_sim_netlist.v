// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Jun 21 16:07:54 2023
// Host        : VM5818-Ubuntu running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /root/COD_Lab/Lab6/Lab6/Lab6.srcs/sources_1/ip/main_memory/main_memory_sim_netlist.v
// Design      : main_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_memory,blk_mem_gen_v8_4_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module main_memory
   (rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  output rsta_busy;
  output rstb_busy;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF AXI_SLAVE_S_AXI:AXILite_SLAVE_S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_SLAVE_S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BID" *) output [3:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARID" *) input [3:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RID" *) output [3:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RREADY" *) input s_axi_rready;

  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.96515 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "1" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "main_memory.mem" *) 
  (* C_INIT_FILE_NAME = "main_memory.mif" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  main_memory_blk_mem_gen_v8_4_3 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(1'b0),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea({1'b0,1'b0,1'b0,1'b0}),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_axi_read_fsm" *) 
module main_memory_blk_mem_axi_read_fsm
   (s_axi_arready,
    SR,
    \gaxi_full_sm.r_valid_r_reg_0 ,
    s_axi_rlast,
    s_aresetn_0,
    \gaxi_full_sm.r_valid_r_reg_1 ,
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ,
    s_axi_arvalid_0,
    \gaxi_full_sm.arlen_cntr_reg[7] ,
    s_axi_arlen_1_sp_1,
    s_axi_arlen_2_sp_1,
    D,
    \s_axi_arlen[7] ,
    \gaxi_full_sm.arlen_cntr_reg[4] ,
    \s_axi_arid[3] ,
    ENB_I,
    E,
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_1 ,
    s_axi_arvalid_1,
    \s_axi_arburst[1] ,
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] ,
    ADDRBWRADDR,
    s_aclk,
    s_aresetn,
    s_axi_arlen,
    s_axi_rready,
    Q,
    s_axi_araddr,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ,
    \gaxi_full_sm.arlen_cntr_reg[6] ,
    \gaxi_full_sm.arlen_cntr_reg[7]_0 ,
    s_axi_arvalid,
    \gaxi_full_sm.arlen_cntr_reg[3] ,
    \gaxi_full_sm.arlen_cntr_reg[4]_0 ,
    \gaxi_full_sm.arlen_cntr_reg[4]_1 ,
    \gaxi_full_sm.arlen_cntr_reg[5] ,
    \gaxi_full_sm.arlen_cntr_reg[7]_1 ,
    \gaxi_full_sm.arlen_cntr_reg[7]_2 ,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ,
    s_axi_arid,
    \grid.S_AXI_RID_reg[3] ,
    ENB_dly_D,
    \gaxi_full_sm.arlen_cntr_reg[0] ,
    s_axi_arburst,
    addr_cnt_enb_r,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0 ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] ,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] ,
    incr_en_r);
  output s_axi_arready;
  output [0:0]SR;
  output \gaxi_full_sm.r_valid_r_reg_0 ;
  output s_axi_rlast;
  output [0:0]s_aresetn_0;
  output \gaxi_full_sm.r_valid_r_reg_1 ;
  output \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  output s_axi_arvalid_0;
  output \gaxi_full_sm.arlen_cntr_reg[7] ;
  output s_axi_arlen_1_sp_1;
  output s_axi_arlen_2_sp_1;
  output [2:0]D;
  output [7:0]\s_axi_arlen[7] ;
  output \gaxi_full_sm.arlen_cntr_reg[4] ;
  output [3:0]\s_axi_arid[3] ;
  output ENB_I;
  output [0:0]E;
  output [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_1 ;
  output [0:0]s_axi_arvalid_1;
  output [0:0]\s_axi_arburst[1] ;
  output [9:0]\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] ;
  output [9:0]ADDRBWRADDR;
  input s_aclk;
  input s_aresetn;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input [2:0]Q;
  input [11:0]s_axi_araddr;
  input [2:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ;
  input \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ;
  input \gaxi_full_sm.arlen_cntr_reg[6] ;
  input [7:0]\gaxi_full_sm.arlen_cntr_reg[7]_0 ;
  input s_axi_arvalid;
  input \gaxi_full_sm.arlen_cntr_reg[3] ;
  input \gaxi_full_sm.arlen_cntr_reg[4]_0 ;
  input \gaxi_full_sm.arlen_cntr_reg[4]_1 ;
  input \gaxi_full_sm.arlen_cntr_reg[5] ;
  input \gaxi_full_sm.arlen_cntr_reg[7]_1 ;
  input \gaxi_full_sm.arlen_cntr_reg[7]_2 ;
  input [0:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ;
  input \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ;
  input [3:0]s_axi_arid;
  input [3:0]\grid.S_AXI_RID_reg[3] ;
  input ENB_dly_D;
  input \gaxi_full_sm.arlen_cntr_reg[0] ;
  input [1:0]s_axi_arburst;
  input [6:0]addr_cnt_enb_r;
  input [9:0]\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0 ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] ;
  input \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] ;
  input incr_en_r;

  wire [9:0]ADDRBWRADDR;
  wire [2:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_dly_D;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_1 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [6:0]addr_cnt_enb_r;
  wire ar_ready_c;
  wire \gaxi_full_sm.S_AXI_RLAST_i_1_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_2_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_3_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_4_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_5_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[0] ;
  wire \gaxi_full_sm.arlen_cntr_reg[3] ;
  wire \gaxi_full_sm.arlen_cntr_reg[4] ;
  wire \gaxi_full_sm.arlen_cntr_reg[4]_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[4]_1 ;
  wire \gaxi_full_sm.arlen_cntr_reg[5] ;
  wire \gaxi_full_sm.arlen_cntr_reg[6] ;
  wire \gaxi_full_sm.arlen_cntr_reg[7] ;
  wire [7:0]\gaxi_full_sm.arlen_cntr_reg[7]_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[7]_1 ;
  wire \gaxi_full_sm.arlen_cntr_reg[7]_2 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0 ;
  wire [9:0]\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] ;
  wire [9:0]\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0 ;
  wire [0:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ;
  wire [2:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ;
  wire \gaxi_full_sm.outstanding_read_r_i_1_n_0 ;
  wire \gaxi_full_sm.r_valid_r_i_1_n_0 ;
  wire \gaxi_full_sm.r_valid_r_reg_0 ;
  wire \gaxi_full_sm.r_valid_r_reg_1 ;
  wire [3:0]\grid.S_AXI_RID_reg[3] ;
  wire incr_en_r;
  wire [1:0]next_state;
  wire outstanding_read_r;
  wire [1:0]present_state;
  wire s_aclk;
  wire s_aresetn;
  wire [0:0]s_aresetn_0;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [0:0]\s_axi_arburst[1] ;
  wire [3:0]s_axi_arid;
  wire [3:0]\s_axi_arid[3] ;
  wire [7:0]s_axi_arlen;
  wire [7:0]\s_axi_arlen[7] ;
  wire s_axi_arlen_1_sn_1;
  wire s_axi_arlen_2_sn_1;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire [0:0]s_axi_arvalid_1;
  wire s_axi_rlast;
  wire s_axi_rready;

  assign s_axi_arlen_1_sp_1 = s_axi_arlen_1_sn_1;
  assign s_axi_arlen_2_sp_1 = s_axi_arlen_2_sn_1;
  LUT6 #(
    .INIT(64'hEA45EF40EF40EF40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_14 
       (.I0(addr_cnt_enb_r[6]),
        .I1(s_axi_araddr[11]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [9]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [8]),
        .O(ADDRBWRADDR[9]));
  LUT5 #(
    .INIT(32'hEA45EF40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_15 
       (.I0(addr_cnt_enb_r[6]),
        .I1(s_axi_araddr[10]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [8]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] ),
        .O(ADDRBWRADDR[8]));
  LUT5 #(
    .INIT(32'hEA45EF40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_16 
       (.I0(addr_cnt_enb_r[6]),
        .I1(s_axi_araddr[9]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [7]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] ),
        .O(ADDRBWRADDR[7]));
  LUT6 #(
    .INIT(64'hEA45EF40EF40EF40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_17 
       (.I0(addr_cnt_enb_r[6]),
        .I1(s_axi_araddr[8]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [6]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [5]),
        .O(ADDRBWRADDR[6]));
  LUT6 #(
    .INIT(64'hEF40EA45EF40EF40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_18 
       (.I0(addr_cnt_enb_r[6]),
        .I1(s_axi_araddr[7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [5]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [4]),
        .O(ADDRBWRADDR[5]));
  LUT5 #(
    .INIT(32'hEFEA4045)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_19 
       (.I0(addr_cnt_enb_r[5]),
        .I1(s_axi_araddr[6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [4]),
        .O(ADDRBWRADDR[4]));
  LUT6 #(
    .INIT(64'hAAAEFFEEAAAEAFEE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(ENB_dly_D),
        .I1(s_axi_arvalid),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0 ),
        .I5(outstanding_read_r),
        .O(ENB_I));
  LUT5 #(
    .INIT(32'hEF40EA45)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_20 
       (.I0(addr_cnt_enb_r[4]),
        .I1(s_axi_araddr[5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [3]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] ),
        .O(ADDRBWRADDR[3]));
  LUT5 #(
    .INIT(32'hEF40EA45)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_21 
       (.I0(addr_cnt_enb_r[3]),
        .I1(s_axi_araddr[4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [2]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] ),
        .O(ADDRBWRADDR[2]));
  LUT5 #(
    .INIT(32'hEF40EA45)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22 
       (.I0(addr_cnt_enb_r[2]),
        .I1(s_axi_araddr[3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [1]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] ),
        .O(ADDRBWRADDR[1]));
  LUT6 #(
    .INIT(64'hEA45EF40EF40EF40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23 
       (.I0(addr_cnt_enb_r[1]),
        .I1(s_axi_araddr[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [0]),
        .I4(incr_en_r),
        .I5(Q[2]),
        .O(ADDRBWRADDR[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi_rready),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4500FFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29 
       (.I0(outstanding_read_r),
        .I1(s_axi_rready),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h5151515100005100)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_1__0 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[7] ),
        .I1(\gaxi_full_sm.ar_ready_r_i_5_n_0 ),
        .I2(\gaxi_full_sm.ar_ready_r_i_4_n_0 ),
        .I3(s_axi_arvalid),
        .I4(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I5(\gaxi_full_sm.ar_ready_r_i_2_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0D8D)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_1__0 
       (.I0(s_axi_arvalid),
        .I1(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0 ),
        .I3(\FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ),
        .I4(\FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7] ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDDDDFFDF)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(s_axi_rready),
        .I4(s_axi_arvalid),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_3 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF2000000)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_4 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi_rready),
        .I2(outstanding_read_r),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(present_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(present_state[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFE00FE)) 
    \gaxi_full_sm.S_AXI_RLAST_i_1 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[7] ),
        .I1(s_axi_arlen_1_sn_1),
        .I2(\gaxi_full_sm.r_valid_r_reg_1 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0 ),
        .I4(s_axi_rlast),
        .O(\gaxi_full_sm.S_AXI_RLAST_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gaxi_full_sm.S_AXI_RLAST_i_2 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[2]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0 ),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arvalid_0),
        .O(s_axi_arlen_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD0000000)) 
    \gaxi_full_sm.S_AXI_RLAST_i_3 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi_rready),
        .I2(outstanding_read_r),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .O(\gaxi_full_sm.r_valid_r_reg_1 ));
  FDRE \gaxi_full_sm.S_AXI_RLAST_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.S_AXI_RLAST_i_1_n_0 ),
        .Q(s_axi_rlast),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF45FF4545)) 
    \gaxi_full_sm.ar_ready_r_i_1 
       (.I0(\gaxi_full_sm.ar_ready_r_i_2_n_0 ),
        .I1(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\gaxi_full_sm.ar_ready_r_i_4_n_0 ),
        .I4(\gaxi_full_sm.ar_ready_r_i_5_n_0 ),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7] ),
        .O(ar_ready_c));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCCCCFECE)) 
    \gaxi_full_sm.ar_ready_r_i_2 
       (.I0(s_axi_arvalid),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(s_axi_rready),
        .O(\gaxi_full_sm.ar_ready_r_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.ar_ready_r_i_3 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[6]),
        .I5(s_axi_arlen_2_sn_1),
        .O(\gaxi_full_sm.ar_ready_r_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gaxi_full_sm.ar_ready_r_i_4 
       (.I0(outstanding_read_r),
        .I1(s_axi_rready),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .O(\gaxi_full_sm.ar_ready_r_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gaxi_full_sm.ar_ready_r_i_5 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .O(\gaxi_full_sm.ar_ready_r_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \gaxi_full_sm.ar_ready_r_i_6 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[7]_0 [7]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[7]_0 [6]),
        .I2(\gaxi_full_sm.arlen_cntr_reg[4] ),
        .I3(s_axi_rready),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(\gaxi_full_sm.arlen_cntr_reg[7] ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.ar_ready_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ar_ready_c),
        .Q(s_axi_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FF2F0D)) 
    \gaxi_full_sm.arlen_cntr[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(present_state[0]),
        .I2(\gaxi_full_sm.arlen_cntr_reg[7]_0 [0]),
        .I3(s_axi_arlen[0]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .O(\s_axi_arlen[7] [0]));
  LUT6 #(
    .INIT(64'hB4B7B484B484B4B7)) 
    \gaxi_full_sm.arlen_cntr[1]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7]_0 [1]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7]_0 [0]),
        .O(\s_axi_arlen[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \gaxi_full_sm.arlen_cntr[2]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[2]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I4(\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ),
        .O(\s_axi_arlen[7] [2]));
  LUT6 #(
    .INIT(64'hFB08FB08FB0808FB)) 
    \gaxi_full_sm.arlen_cntr[2]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.arlen_cntr_reg[7]_0 [2]),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7]_0 [0]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7]_0 [1]),
        .O(\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB484B4B7B4B7B484)) 
    \gaxi_full_sm.arlen_cntr[3]_i_1 
       (.I0(s_axi_arlen_2_sn_1),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7]_0 [3]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[3] ),
        .O(\s_axi_arlen[7] [3]));
  LUT6 #(
    .INIT(64'h7848787B787B7848)) 
    \gaxi_full_sm.arlen_cntr[4]_i_1 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[4]_0 ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7]_0 [4]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[4]_1 ),
        .O(\s_axi_arlen[7] [4]));
  LUT6 #(
    .INIT(64'hBF40BF4FBF40B040)) 
    \gaxi_full_sm.arlen_cntr[5]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[4]_0 ),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arvalid_0),
        .I5(\gaxi_full_sm.arlen_cntr_reg[5] ),
        .O(\s_axi_arlen[7] [5]));
  LUT6 #(
    .INIT(64'h7848787B787B7848)) 
    \gaxi_full_sm.arlen_cntr[6]_i_1 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[6] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7]_0 [6]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[4] ),
        .O(\s_axi_arlen[7] [6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.arlen_cntr[6]_i_3 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[7]_0 [4]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[7]_0 [2]),
        .I2(\gaxi_full_sm.arlen_cntr_reg[7]_0 [1]),
        .I3(\gaxi_full_sm.arlen_cntr_reg[7]_0 [0]),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7]_0 [3]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7]_0 [5]),
        .O(\gaxi_full_sm.arlen_cntr_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFF7737FFFF4404)) 
    \gaxi_full_sm.arlen_cntr[7]_i_1 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(s_axi_rready),
        .I4(\gaxi_full_sm.arlen_cntr_reg[0] ),
        .I5(s_axi_arvalid),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hB080B0B3B0B3B080)) 
    \gaxi_full_sm.arlen_cntr[7]_i_2 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[7]_1 ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7]_0 [7]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7]_2 ),
        .O(\s_axi_arlen[7] [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_full_sm.aw_ready_r_i_1 
       (.I0(s_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFBAAAFFFFFFFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_1 
       (.I0(\gaxi_full_sm.r_valid_r_reg_1 ),
        .I1(\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ),
        .I2(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] ),
        .I5(s_aresetn),
        .O(s_aresetn_0));
  LUT6 #(
    .INIT(64'h2020202020202000)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arvalid_0),
        .I3(s_axi_arlen_2_sn_1),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0 ),
        .I5(s_axi_arlen[7]),
        .O(\s_axi_arburst[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4 
       (.I0(present_state[1]),
        .I1(s_axi_rready),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .O(s_axi_arlen_2_sn_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[6]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4E4B0B1F4F5B0A0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[10]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[10]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [8]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [8]));
  LUT6 #(
    .INIT(64'h0000AAAA3033AAAA)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\gaxi_full_sm.arlen_cntr_reg[0] ),
        .I2(s_axi_rready),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(s_axi_arvalid_1));
  LUT6 #(
    .INIT(64'hF4E4B0B1F4F5B0A0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_2 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[11]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [9]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0 ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [0]));
  LUT6 #(
    .INIT(64'hF4F5B0A0F4E4B0B1)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[3]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[2]),
        .I2(s_axi_araddr[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [1]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [1]));
  LUT6 #(
    .INIT(64'hF4F5B0A0F4E4B0B1)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[4]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[3]),
        .I2(s_axi_araddr[4]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [2]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [2]));
  LUT6 #(
    .INIT(64'hF4F5B0A0F4E4B0B1)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[5]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[4]),
        .I2(s_axi_araddr[5]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [3]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [3]));
  LUT6 #(
    .INIT(64'hF4F5F4E4B0A0B0B1)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[6]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[5]),
        .I2(s_axi_araddr[6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [4]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [4]));
  LUT6 #(
    .INIT(64'hF4E4B0B1F4F5B0A0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[7]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[7]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [5]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [5]));
  LUT6 #(
    .INIT(64'hF4E4B0B1F4F5B0A0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[8]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [6]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [6]));
  LUT6 #(
    .INIT(64'hF4E4B0B1F4F5B0A0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[9]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[9]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] [7]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] [7]));
  LUT6 #(
    .INIT(64'h787B78487848787B)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [0]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I2(Q[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB4B7B484B484B4B7)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0 ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0 ),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[2]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0 ),
        .I5(s_axi_arlen[7]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5655A6AA)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [1]),
        .I1(s_axi_araddr[1]),
        .I2(addr_cnt_enb_r[0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I4(Q[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABEEEBBBE)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2_n_0 ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [2]),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [1]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0 ),
        .I5(s_axi_arvalid_0),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2 
       (.I0(s_axi_arlen[7]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_6_n_0 ),
        .I2(s_axi_arlen_2_sn_1),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAEA2)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3 
       (.I0(Q[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I2(addr_cnt_enb_r[0]),
        .I3(s_axi_araddr[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1DFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4 
       (.I0(Q[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I2(s_axi_araddr[0]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h44044444)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5 
       (.I0(present_state[0]),
        .I1(s_axi_arvalid),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(s_axi_rready),
        .I4(present_state[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF000000080800000)) 
    \gaxi_full_sm.outstanding_read_r_i_1 
       (.I0(s_axi_arvalid),
        .I1(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24_n_0 ),
        .I3(outstanding_read_r),
        .I4(present_state[1]),
        .I5(present_state[0]),
        .O(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.outstanding_read_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ),
        .Q(outstanding_read_r),
        .R(SR));
  LUT6 #(
    .INIT(64'hAEAAFFFFAEAAAEAA)) 
    \gaxi_full_sm.r_valid_r_i_1 
       (.I0(E),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I4(s_axi_rready),
        .I5(\gaxi_full_sm.r_valid_r_reg_0 ),
        .O(\gaxi_full_sm.r_valid_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.r_valid_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.r_valid_r_i_1_n_0 ),
        .Q(\gaxi_full_sm.r_valid_r_reg_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBFBBBBB88088888)) 
    \grid.S_AXI_RID[0]_i_1 
       (.I0(s_axi_arid[0]),
        .I1(s_axi_arvalid_0),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(s_axi_rready),
        .I4(present_state[1]),
        .I5(\grid.S_AXI_RID_reg[3] [0]),
        .O(\s_axi_arid[3] [0]));
  LUT6 #(
    .INIT(64'hBBFBBBBB88088888)) 
    \grid.S_AXI_RID[1]_i_1 
       (.I0(s_axi_arid[1]),
        .I1(s_axi_arvalid_0),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(s_axi_rready),
        .I4(present_state[1]),
        .I5(\grid.S_AXI_RID_reg[3] [1]),
        .O(\s_axi_arid[3] [1]));
  LUT6 #(
    .INIT(64'hBBFBBBBB88088888)) 
    \grid.S_AXI_RID[2]_i_1 
       (.I0(s_axi_arid[2]),
        .I1(s_axi_arvalid_0),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(s_axi_rready),
        .I4(present_state[1]),
        .I5(\grid.S_AXI_RID_reg[3] [2]),
        .O(\s_axi_arid[3] [2]));
  LUT6 #(
    .INIT(64'h8ACFCFFF8A00CF00)) 
    \grid.S_AXI_RID[3]_i_1 
       (.I0(outstanding_read_r),
        .I1(s_axi_rready),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .I5(s_axi_arvalid),
        .O(E));
  LUT6 #(
    .INIT(64'hBBFBBBBB88088888)) 
    \grid.S_AXI_RID[3]_i_2 
       (.I0(s_axi_arid[3]),
        .I1(s_axi_arvalid_0),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(s_axi_rready),
        .I4(present_state[1]),
        .I5(\grid.S_AXI_RID_reg[3] [3]),
        .O(\s_axi_arid[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \grid.ar_id_r[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(present_state[0]),
        .O(s_axi_arvalid_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_axi_read_wrapper" *) 
module main_memory_blk_mem_axi_read_wrapper
   (s_axi_arready,
    SS,
    \gaxi_full_sm.r_valid_r_reg ,
    s_axi_rlast,
    ENB_I,
    ADDRBWRADDR,
    s_axi_rid,
    s_aclk,
    s_aresetn,
    s_axi_arlen,
    s_axi_rready,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_arvalid,
    s_axi_arid,
    ENB_dly_D,
    s_axi_arburst);
  output s_axi_arready;
  output [0:0]SS;
  output \gaxi_full_sm.r_valid_r_reg ;
  output s_axi_rlast;
  output ENB_I;
  output [9:0]ADDRBWRADDR;
  output [3:0]s_axi_rid;
  input s_aclk;
  input s_aresetn;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input [11:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input s_axi_arvalid;
  input [3:0]s_axi_arid;
  input ENB_dly_D;
  input [1:0]s_axi_arburst;

  wire [9:0]ADDRBWRADDR;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0 ;
  wire ENB_I;
  wire ENB_dly_D;
  wire [0:0]SS;
  wire [11:1]addr_cnt_enb_r;
  wire [3:0]ar_id_r;
  wire [7:0]arlen_cntr;
  wire axi_read_fsm_n_10;
  wire axi_read_fsm_n_11;
  wire axi_read_fsm_n_12;
  wire axi_read_fsm_n_13;
  wire axi_read_fsm_n_14;
  wire axi_read_fsm_n_15;
  wire axi_read_fsm_n_16;
  wire axi_read_fsm_n_17;
  wire axi_read_fsm_n_18;
  wire axi_read_fsm_n_19;
  wire axi_read_fsm_n_20;
  wire axi_read_fsm_n_21;
  wire axi_read_fsm_n_22;
  wire axi_read_fsm_n_23;
  wire axi_read_fsm_n_24;
  wire axi_read_fsm_n_25;
  wire axi_read_fsm_n_26;
  wire axi_read_fsm_n_28;
  wire axi_read_fsm_n_29;
  wire axi_read_fsm_n_30;
  wire axi_read_fsm_n_32;
  wire axi_read_fsm_n_33;
  wire axi_read_fsm_n_34;
  wire axi_read_fsm_n_35;
  wire axi_read_fsm_n_36;
  wire axi_read_fsm_n_37;
  wire axi_read_fsm_n_38;
  wire axi_read_fsm_n_39;
  wire axi_read_fsm_n_4;
  wire axi_read_fsm_n_40;
  wire axi_read_fsm_n_41;
  wire axi_read_fsm_n_5;
  wire axi_read_fsm_n_6;
  wire axi_read_fsm_n_7;
  wire axi_read_fsm_n_8;
  wire axi_read_fsm_n_9;
  wire \gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[7]_i_4_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2] ;
  wire \gaxi_full_sm.r_valid_r_reg ;
  wire incr_en_r;
  wire p_0_in3_in;
  wire p_2_out;
  wire s_aclk;
  wire s_aresetn;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ),
        .I2(incr_en_r),
        .I3(p_0_in3_in),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ),
        .I1(p_0_in3_in),
        .I2(incr_en_r),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ),
        .I1(incr_en_r),
        .I2(p_0_in3_in),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36 
       (.I0(p_0_in3_in),
        .I1(incr_en_r),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0 ));
  main_memory_blk_mem_axi_read_fsm axi_read_fsm
       (.ADDRBWRADDR(ADDRBWRADDR),
        .D({axi_read_fsm_n_11,axi_read_fsm_n_12,axi_read_fsm_n_13}),
        .E(axi_read_fsm_n_28),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 (axi_read_fsm_n_6),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[1]_1 (axi_read_fsm_n_29),
        .Q({p_0_in3_in,\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1] ,\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0] }),
        .SR(SS),
        .addr_cnt_enb_r({addr_cnt_enb_r[11],addr_cnt_enb_r[6:1]}),
        .\gaxi_full_sm.arlen_cntr_reg[0] (\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[3] (\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[4] (axi_read_fsm_n_22),
        .\gaxi_full_sm.arlen_cntr_reg[4]_0 (\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[4]_1 (\gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[5] (\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[6] (\gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[7] (axi_read_fsm_n_8),
        .\gaxi_full_sm.arlen_cntr_reg[7]_0 (arlen_cntr),
        .\gaxi_full_sm.arlen_cntr_reg[7]_1 (\gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[7]_2 (\gaxi_full_sm.arlen_cntr[7]_i_4_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] ({axi_read_fsm_n_32,axi_read_fsm_n_33,axi_read_fsm_n_34,axi_read_fsm_n_35,axi_read_fsm_n_36,axi_read_fsm_n_37,axi_read_fsm_n_38,axi_read_fsm_n_39,axi_read_fsm_n_40,axi_read_fsm_n_41}),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] ({\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] }),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11]_0 (\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] (\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] (\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] (\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ({\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2] ,\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1] ,\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0] }),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 (\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0 ),
        .\gaxi_full_sm.r_valid_r_reg_0 (\gaxi_full_sm.r_valid_r_reg ),
        .\gaxi_full_sm.r_valid_r_reg_1 (axi_read_fsm_n_5),
        .\grid.S_AXI_RID_reg[3] (ar_id_r),
        .incr_en_r(incr_en_r),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_aresetn_0(axi_read_fsm_n_4),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .\s_axi_arburst[1] (p_2_out),
        .s_axi_arid(s_axi_arid),
        .\s_axi_arid[3] ({axi_read_fsm_n_23,axi_read_fsm_n_24,axi_read_fsm_n_25,axi_read_fsm_n_26}),
        .s_axi_arlen(s_axi_arlen),
        .\s_axi_arlen[7] ({axi_read_fsm_n_14,axi_read_fsm_n_15,axi_read_fsm_n_16,axi_read_fsm_n_17,axi_read_fsm_n_18,axi_read_fsm_n_19,axi_read_fsm_n_20,axi_read_fsm_n_21}),
        .s_axi_arlen_1_sp_1(axi_read_fsm_n_9),
        .s_axi_arlen_2_sp_1(axi_read_fsm_n_10),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(axi_read_fsm_n_7),
        .s_axi_arvalid_1(axi_read_fsm_n_30),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gaxi_full_sm.arlen_cntr[3]_i_2 
       (.I0(arlen_cntr[0]),
        .I1(arlen_cntr[1]),
        .I2(arlen_cntr[2]),
        .O(\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gaxi_full_sm.arlen_cntr[4]_i_2 
       (.I0(arlen_cntr[2]),
        .I1(arlen_cntr[1]),
        .I2(arlen_cntr[0]),
        .I3(arlen_cntr[3]),
        .O(\gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gaxi_full_sm.arlen_cntr[5]_i_2 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[2]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \gaxi_full_sm.arlen_cntr[5]_i_3 
       (.I0(arlen_cntr[5]),
        .I1(arlen_cntr[4]),
        .I2(arlen_cntr[2]),
        .I3(arlen_cntr[1]),
        .I4(arlen_cntr[0]),
        .I5(arlen_cntr[3]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.arlen_cntr[6]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[4]),
        .I5(s_axi_arlen[5]),
        .O(\gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[7]_i_3 
       (.I0(axi_read_fsm_n_10),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arlen[4]),
        .O(\gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.arlen_cntr[7]_i_4 
       (.I0(axi_read_fsm_n_22),
        .I1(arlen_cntr[6]),
        .O(\gaxi_full_sm.arlen_cntr[7]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gaxi_full_sm.arlen_cntr_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_21),
        .Q(arlen_cntr[0]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_20),
        .Q(arlen_cntr[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_19),
        .Q(arlen_cntr[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[3] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_18),
        .Q(arlen_cntr[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[4] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_17),
        .Q(arlen_cntr[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[5] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_16),
        .Q(arlen_cntr[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[6] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_15),
        .Q(arlen_cntr[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[7] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_29),
        .D(axi_read_fsm_n_14),
        .Q(arlen_cntr[7]),
        .R(SS));
  LUT6 #(
    .INIT(64'hAAAABABBAAAAAAAA)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1 
       (.I0(p_2_out),
        .I1(axi_read_fsm_n_5),
        .I2(axi_read_fsm_n_6),
        .I3(axi_read_fsm_n_9),
        .I4(axi_read_fsm_n_8),
        .I5(addr_cnt_enb_r[11]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arsize[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[2]),
        .I5(s_axi_arsize[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000010003000B)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[2]),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arsize[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00101111001F113F)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arlen[1]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[2]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F000F020FFFFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[2]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515FFFF151515FF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[2]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ),
        .I5(s_axi_arlen[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arlen[7]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[11] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[11]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[11]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[1]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[2]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[3]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[4]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[5]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0 ),
        .Q(addr_cnt_enb_r[6]),
        .R(axi_read_fsm_n_4));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3 
       (.I0(s_axi_rready),
        .I1(axi_read_fsm_n_22),
        .I2(arlen_cntr[6]),
        .I3(arlen_cntr[7]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_33),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_32),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_41),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_40),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_39),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_38),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_37),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_36),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_35),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_34),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ),
        .R(SS));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0 ),
        .Q(incr_en_r),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFCFD)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFF0FF57)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_13),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_12),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_30),
        .D(axi_read_fsm_n_11),
        .Q(p_0_in3_in),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0 ),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1_n_0 ),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_28),
        .D(axi_read_fsm_n_26),
        .Q(s_axi_rid[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_28),
        .D(axi_read_fsm_n_25),
        .Q(s_axi_rid[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_28),
        .D(axi_read_fsm_n_24),
        .Q(s_axi_rid[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[3] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_28),
        .D(axi_read_fsm_n_23),
        .Q(s_axi_rid[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(s_axi_arid[0]),
        .Q(ar_id_r[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(s_axi_arid[1]),
        .Q(ar_id_r[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(s_axi_arid[2]),
        .Q(ar_id_r[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[3] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_7),
        .D(s_axi_arid[3]),
        .Q(ar_id_r[3]),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "blk_mem_axi_write_fsm" *) 
module main_memory_blk_mem_axi_write_fsm
   (s_axi_awready,
    s_axi_wready,
    SR,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ,
    \bvalid_count_r_reg[0] ,
    s_axi_wvalid_0,
    Q,
    bvalid_c,
    E,
    D,
    \gaxif_wlast_gen.awlen_cntr_r_reg[5] ,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_1 ,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_2 ,
    \s_axi_awaddr[11] ,
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ,
    I17,
    ENA_I,
    s_axi_wvalid_1,
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ,
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ,
    SS,
    s_aclk,
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[2] ,
    s_aresetn,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_awlen,
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] ,
    \gaxi_bvalid_id_r.bvalid_d1_c_reg ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[5]_0 ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[4] ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[3] ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[2] ,
    s_axi_awburst,
    \gaxif_ms_addr_gen.next_address_r_reg[2] ,
    s_axi_awaddr,
    \gaxif_ms_addr_gen.next_address_r_reg[1] ,
    \gaxif_ms_addr_gen.next_address_r_reg[0] ,
    \gaxif_ms_addr_gen.next_address_r_reg[0]_0 ,
    \gaxif_ms_addr_gen.bmg_address_r_reg[11] ,
    \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0 ,
    ADDRARDADDR,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_3 ,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_4 ,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_5 ,
    ENA_dly_D,
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] );
  output s_axi_awready;
  output s_axi_wready;
  output [0:0]SR;
  output \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ;
  output \bvalid_count_r_reg[0] ;
  output s_axi_wvalid_0;
  output [0:0]Q;
  output bvalid_c;
  output [0:0]E;
  output [7:0]D;
  output \gaxif_wlast_gen.awlen_cntr_r_reg[5] ;
  output [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_1 ;
  output [2:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_2 ;
  output [9:0]\s_axi_awaddr[11] ;
  output [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  output I17;
  output ENA_I;
  output [0:0]s_axi_wvalid_1;
  output \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ;
  output \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ;
  input [0:0]SS;
  input s_aclk;
  input \gaxif_ms_addr_gen.addr_cnt_enb_reg[2] ;
  input s_aresetn;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_awvalid;
  input [7:0]s_axi_awlen;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  input [7:0]\gaxi_bvalid_id_r.bvalid_d1_c_reg ;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[5]_0 ;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[4] ;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[3] ;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[2] ;
  input [1:0]s_axi_awburst;
  input \gaxif_ms_addr_gen.next_address_r_reg[2] ;
  input [11:0]s_axi_awaddr;
  input \gaxif_ms_addr_gen.next_address_r_reg[1] ;
  input [0:0]\gaxif_ms_addr_gen.next_address_r_reg[0] ;
  input [0:0]\gaxif_ms_addr_gen.next_address_r_reg[0]_0 ;
  input [1:0]\gaxif_ms_addr_gen.bmg_address_r_reg[11] ;
  input \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0 ;
  input [8:0]ADDRARDADDR;
  input \FSM_sequential_gaxi_full_sm.present_state_reg[0]_3 ;
  input \FSM_sequential_gaxi_full_sm.present_state_reg[0]_4 ;
  input \FSM_sequential_gaxi_full_sm.present_state_reg[0]_5 ;
  input ENA_dly_D;
  input [1:0]\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ;

  wire [8:0]ADDRARDADDR;
  wire [7:0]D;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_1 ;
  wire [2:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_2 ;
  wire \FSM_sequential_gaxi_full_sm.present_state_reg[0]_3 ;
  wire \FSM_sequential_gaxi_full_sm.present_state_reg[0]_4 ;
  wire \FSM_sequential_gaxi_full_sm.present_state_reg[0]_5 ;
  wire [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  wire I17;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire aw_ready_c;
  wire bvalid_c;
  wire \bvalid_count_r_reg[0] ;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ;
  wire [1:0]\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ;
  wire [7:0]\gaxi_bvalid_id_r.bvalid_d1_c_reg ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg[2] ;
  wire \gaxif_ms_addr_gen.bmg_address_r[11]_i_2_n_0 ;
  wire [1:0]\gaxif_ms_addr_gen.bmg_address_r_reg[11] ;
  wire \gaxif_ms_addr_gen.bmg_address_r_reg[11]_0 ;
  wire [0:0]\gaxif_ms_addr_gen.next_address_r_reg[0] ;
  wire [0:0]\gaxif_ms_addr_gen.next_address_r_reg[0]_0 ;
  wire \gaxif_ms_addr_gen.next_address_r_reg[1] ;
  wire \gaxif_ms_addr_gen.next_address_r_reg[2] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[2] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[3] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[4] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[5] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[5]_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  wire [1:0]next_state;
  wire [0:0]present_state;
  wire s_aclk;
  wire s_aresetn;
  wire [11:0]s_axi_awaddr;
  wire [9:0]\s_axi_awaddr[11] ;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axi_wvalid_0;
  wire [0:0]s_axi_wvalid_1;
  wire w_ready_c;

  LUT4 #(
    .INIT(16'hAEEA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ENA_dly_D),
        .I1(s_axi_wvalid),
        .I2(Q),
        .I3(present_state),
        .O(ENA_I));
  LUT6 #(
    .INIT(64'hAAAABAAABFAFAAAA)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ),
        .I2(s_axi_wvalid),
        .I3(\bvalid_count_r_reg[0] ),
        .I4(present_state),
        .I5(Q),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h55000030)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(present_state),
        .I4(Q),
        .O(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_3 
       (.I0(\gaxi_bvalid_id_r.bvalid_d1_c_reg [7]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I2(\gaxi_bvalid_id_r.bvalid_d1_c_reg [6]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0022F3A0FF22F3A0)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_1 
       (.I0(s_axi_wvalid),
        .I1(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I2(s_axi_awvalid),
        .I3(Q),
        .I4(present_state),
        .I5(s_axi_bready),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_2 
       (.I0(\gaxi_bvalid_id_r.bvalid_d1_c_reg [7]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I2(\gaxi_bvalid_id_r.bvalid_d1_c_reg [6]),
        .I3(s_axi_wvalid),
        .I4(\bvalid_count_r_reg[0] ),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(present_state),
        .R(SS));
  (* FSM_ENCODED_STATES = "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(Q),
        .R(SS));
  LUT2 #(
    .INIT(4'h8)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_i_1 
       (.I0(s_axi_awready),
        .I1(s_axi_awvalid),
        .O(I17));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 
       (.I0(bvalid_c),
        .I1(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] [0]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 
       (.I0(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] [0]),
        .I1(bvalid_c),
        .I2(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] [1]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000028)) 
    \gaxi_bvalid_id_r.bvalid_d1_c_i_1 
       (.I0(s_axi_wvalid),
        .I1(Q),
        .I2(present_state),
        .I3(\gaxi_bvalid_id_r.bvalid_d1_c_reg [6]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I5(\gaxi_bvalid_id_r.bvalid_d1_c_reg [7]),
        .O(bvalid_c));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxi_bvalid_id_r.bvalid_d1_c_i_2 
       (.I0(\gaxi_bvalid_id_r.bvalid_d1_c_reg [5]),
        .I1(\gaxi_bvalid_id_r.bvalid_d1_c_reg [3]),
        .I2(\gaxi_bvalid_id_r.bvalid_d1_c_reg [1]),
        .I3(\gaxi_bvalid_id_r.bvalid_d1_c_reg [0]),
        .I4(\gaxi_bvalid_id_r.bvalid_d1_c_reg [2]),
        .I5(\gaxi_bvalid_id_r.bvalid_d1_c_reg [4]),
        .O(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ));
  LUT6 #(
    .INIT(64'hF4444444F44444FF)) 
    \gaxi_full_sm.aw_ready_r_i_2 
       (.I0(\bvalid_count_r_reg[0] ),
        .I1(bvalid_c),
        .I2(s_axi_bready),
        .I3(present_state),
        .I4(Q),
        .I5(s_axi_awvalid),
        .O(aw_ready_c));
  LUT3 #(
    .INIT(8'h02)) 
    \gaxi_full_sm.aw_ready_r_i_3 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_3 ),
        .I1(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_4 ),
        .I2(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_5 ),
        .O(\bvalid_count_r_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.aw_ready_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(aw_ready_c),
        .Q(s_axi_awready),
        .R(SS));
  LUT5 #(
    .INIT(32'h000F2FAA)) 
    \gaxi_full_sm.w_ready_r_i_1 
       (.I0(s_axi_awvalid),
        .I1(\bvalid_count_r_reg[0] ),
        .I2(s_axi_wvalid_0),
        .I3(Q),
        .I4(present_state),
        .O(w_ready_c));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gaxi_full_sm.w_ready_r_i_2 
       (.I0(s_axi_wvalid),
        .I1(\gaxi_bvalid_id_r.bvalid_d1_c_reg [6]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I3(\gaxi_bvalid_id_r.bvalid_d1_c_reg [7]),
        .O(s_axi_wvalid_0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.w_ready_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(w_ready_c),
        .Q(s_axi_wready),
        .R(SS));
  LUT6 #(
    .INIT(64'hF0F0E0A0FFFFFFFF)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ),
        .I1(\bvalid_count_r_reg[0] ),
        .I2(s_axi_wvalid_0),
        .I3(Q),
        .I4(\gaxif_ms_addr_gen.addr_cnt_enb_reg[2] ),
        .I5(s_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000000040440000)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2 
       (.I0(present_state),
        .I1(s_axi_awvalid),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(Q),
        .I4(s_axi_awburst[1]),
        .I5(s_axi_awburst[0]),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4 
       (.I0(present_state),
        .I1(s_axi_awvalid),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[10]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[8]),
        .O(\s_axi_awaddr[11] [8]));
  LUT6 #(
    .INIT(64'h08FBFB08FB08FB08)) 
    \gaxif_ms_addr_gen.bmg_address_r[11]_i_1 
       (.I0(s_axi_awaddr[11]),
        .I1(\gaxif_ms_addr_gen.bmg_address_r[11]_i_2_n_0 ),
        .I2(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[11] [1]),
        .I4(\gaxif_ms_addr_gen.bmg_address_r_reg[11]_0 ),
        .I5(\gaxif_ms_addr_gen.bmg_address_r_reg[11] [0]),
        .O(\s_axi_awaddr[11] [9]));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
    \gaxif_ms_addr_gen.bmg_address_r[11]_i_2 
       (.I0(\bvalid_count_r_reg[0] ),
        .I1(s_axi_wvalid),
        .I2(\gaxi_bvalid_id_r.bvalid_d1_c_reg [6]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I4(\gaxi_bvalid_id_r.bvalid_d1_c_reg [7]),
        .I5(Q),
        .O(\gaxif_ms_addr_gen.bmg_address_r[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[0]),
        .O(\s_axi_awaddr[11] [0]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[1]),
        .O(\s_axi_awaddr[11] [1]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[2]),
        .O(\s_axi_awaddr[11] [2]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[3]),
        .O(\s_axi_awaddr[11] [3]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[6]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[4]),
        .O(\s_axi_awaddr[11] [4]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[7]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[5]),
        .O(\s_axi_awaddr[11] [5]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[8]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[6]),
        .O(\s_axi_awaddr[11] [6]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.bmg_address_r[9]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(ADDRARDADDR[7]),
        .O(\s_axi_awaddr[11] [7]));
  LUT6 #(
    .INIT(64'h00A2FFAEFFAE00A2)) 
    \gaxif_ms_addr_gen.next_address_r[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ),
        .I4(\gaxif_ms_addr_gen.next_address_r_reg[0] ),
        .I5(\gaxif_ms_addr_gen.next_address_r_reg[0]_0 ),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_2 [0]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_ms_addr_gen.next_address_r[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(\gaxif_ms_addr_gen.next_address_r_reg[1] ),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_2 [1]));
  LUT6 #(
    .INIT(64'h0FFA002A000A000A)) 
    \gaxif_ms_addr_gen.next_address_r[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(\bvalid_count_r_reg[0] ),
        .I2(Q),
        .I3(present_state),
        .I4(\FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ),
        .I5(s_axi_wvalid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h8AAA8A8A)) 
    \gaxif_ms_addr_gen.next_address_r[2]_i_2 
       (.I0(\gaxif_ms_addr_gen.next_address_r_reg[2] ),
        .I1(present_state),
        .I2(s_axi_awvalid),
        .I3(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I4(Q),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I2(s_axi_awvalid),
        .I3(present_state),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000A200FFFFAEFF)) 
    \gaxif_wlast_gen.awlen_cntr_r[0]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(\gaxi_bvalid_id_r.bvalid_d1_c_reg [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFAE00A200A2FFAE)) 
    \gaxif_wlast_gen.awlen_cntr_r[1]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ),
        .I4(\gaxi_bvalid_id_r.bvalid_d1_c_reg [1]),
        .I5(\gaxi_bvalid_id_r.bvalid_d1_c_reg [0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_wlast_gen.awlen_cntr_r[2]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_wlast_gen.awlen_cntr_r[3]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_wlast_gen.awlen_cntr_r[4]_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_wlast_gen.awlen_cntr_r[5]_i_1 
       (.I0(s_axi_awlen[5]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[5]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFAE00A200A2FFAE)) 
    \gaxif_wlast_gen.awlen_cntr_r[6]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I5(\gaxi_bvalid_id_r.bvalid_d1_c_reg [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h2AAF2AA2)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_1 
       (.I0(s_axi_wvalid),
        .I1(\FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ),
        .I2(present_state),
        .I3(Q),
        .I4(s_axi_awvalid),
        .O(s_axi_wvalid_1));
  LUT6 #(
    .INIT(64'hFFFFAEFF0000A200)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_2 
       (.I0(s_axi_awlen[7]),
        .I1(Q),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I3(s_axi_awvalid),
        .I4(present_state),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[7] ),
        .O(D[7]));
endmodule

(* ORIG_REF_NAME = "blk_mem_axi_write_wrapper" *) 
module main_memory_blk_mem_axi_write_wrapper
   (s_axi_awready,
    s_axi_wready,
    \gaxi_bvalid_id_r.bvalid_r_reg_0 ,
    ADDRARDADDR,
    ENA_I,
    s_axi_bid,
    SS,
    s_aclk,
    s_aresetn,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_awburst,
    s_axi_awaddr,
    ENA_dly_D,
    s_axi_awid);
  output s_axi_awready;
  output s_axi_wready;
  output \gaxi_bvalid_id_r.bvalid_r_reg_0 ;
  output [9:0]ADDRARDADDR;
  output ENA_I;
  output [3:0]s_axi_bid;
  input [0:0]SS;
  input s_aclk;
  input s_aresetn;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input [11:0]s_axi_awaddr;
  input ENA_dly_D;
  input [3:0]s_axi_awid;

  wire [9:0]ADDRARDADDR;
  wire [1:0]CONV_INTEGER;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0 ;
  wire ENA_I;
  wire ENA_dly_D;
  wire [0:0]SS;
  wire addr_en_c;
  wire axi_wr_fsm_n_17;
  wire axi_wr_fsm_n_2;
  wire axi_wr_fsm_n_22;
  wire axi_wr_fsm_n_23;
  wire axi_wr_fsm_n_24;
  wire axi_wr_fsm_n_25;
  wire axi_wr_fsm_n_26;
  wire axi_wr_fsm_n_27;
  wire axi_wr_fsm_n_28;
  wire axi_wr_fsm_n_29;
  wire axi_wr_fsm_n_3;
  wire axi_wr_fsm_n_30;
  wire axi_wr_fsm_n_31;
  wire axi_wr_fsm_n_33;
  wire axi_wr_fsm_n_35;
  wire axi_wr_fsm_n_36;
  wire axi_wr_fsm_n_37;
  wire axi_wr_fsm_n_4;
  wire axi_wr_fsm_n_5;
  wire axi_wr_fsm_n_8;
  wire [11:2]bmg_address_r;
  wire bvalid_c;
  wire \bvalid_count_r[0]_i_1_n_0 ;
  wire \bvalid_count_r[1]_i_1_n_0 ;
  wire \bvalid_count_r[2]_i_1_n_0 ;
  wire \bvalid_count_r_reg_n_0_[0] ;
  wire \bvalid_count_r_reg_n_0_[1] ;
  wire \bvalid_count_r_reg_n_0_[2] ;
  wire bvalid_d1_c;
  wire [1:0]bvalid_rd_cnt_r;
  wire [1:0]bvalid_wr_cnt_r;
  wire \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_0 ;
  wire \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_1 ;
  wire \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_2 ;
  wire \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_3 ;
  wire \gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ;
  wire \gaxi_bvalid_id_r.bvalid_r_reg_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6] ;
  wire \gaxif_ms_addr_gen.next_address_r[1]_i_2_n_0 ;
  wire \gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0 ;
  wire \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] ;
  wire \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1] ;
  wire \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2] ;
  wire \gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0 ;
  wire [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg ;
  wire incr_en_r;
  wire [2:0]next_address_r;
  wire [2:0]num_of_bytes_c;
  wire [7:0]p_0_in;
  wire p_0_in5_in;
  wire p_0_out;
  wire [1:0]p_1_in;
  wire p_4_out;
  wire [1:1]present_state;
  wire s_aclk;
  wire s_aresetn;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [1:0]\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOD_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hA9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_10 
       (.I0(bmg_address_r[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0 ),
        .I2(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5] ),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_11 
       (.I0(bmg_address_r[4]),
        .I1(bmg_address_r[2]),
        .I2(incr_en_r),
        .I3(p_0_in5_in),
        .I4(bmg_address_r[3]),
        .I5(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4] ),
        .O(ADDRARDADDR[2]));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_12 
       (.I0(bmg_address_r[3]),
        .I1(p_0_in5_in),
        .I2(incr_en_r),
        .I3(bmg_address_r[2]),
        .I4(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3] ),
        .O(ADDRARDADDR[1]));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_13 
       (.I0(bmg_address_r[2]),
        .I1(incr_en_r),
        .I2(p_0_in5_in),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2] ),
        .O(ADDRARDADDR[0]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25 
       (.I0(bmg_address_r[9]),
        .I1(bmg_address_r[8]),
        .I2(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ),
        .I3(bmg_address_r[6]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ),
        .I5(bmg_address_r[7]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26 
       (.I0(bmg_address_r[4]),
        .I1(bmg_address_r[2]),
        .I2(incr_en_r),
        .I3(p_0_in5_in),
        .I4(bmg_address_r[3]),
        .I5(bmg_address_r[5]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27 
       (.I0(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ),
        .I1(bmg_address_r[6]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28 
       (.I0(bmg_address_r[3]),
        .I1(p_0_in5_in),
        .I2(incr_en_r),
        .I3(bmg_address_r[2]),
        .I4(bmg_address_r[4]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_4 
       (.I0(bmg_address_r[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0 ),
        .I2(bmg_address_r[10]),
        .O(ADDRARDADDR[9]));
  LUT6 #(
    .INIT(64'hAAA6AAAAAAAAAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_5 
       (.I0(bmg_address_r[10]),
        .I1(bmg_address_r[7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27_n_0 ),
        .I4(bmg_address_r[8]),
        .I5(bmg_address_r[9]),
        .O(ADDRARDADDR[8]));
  LUT6 #(
    .INIT(64'hFFDFFFFF00200000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_6 
       (.I0(bmg_address_r[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ),
        .I2(bmg_address_r[6]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ),
        .I4(bmg_address_r[8]),
        .I5(bmg_address_r[9]),
        .O(ADDRARDADDR[7]));
  LUT5 #(
    .INIT(32'hAA9AAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_7 
       (.I0(bmg_address_r[8]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ),
        .I2(bmg_address_r[6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ),
        .I4(bmg_address_r[7]),
        .O(ADDRARDADDR[6]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_8 
       (.I0(bmg_address_r[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ),
        .I2(bmg_address_r[6]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'hA9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_9 
       (.I0(bmg_address_r[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26_n_0 ),
        .I2(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6] ),
        .O(ADDRARDADDR[4]));
  main_memory_blk_mem_axi_write_fsm axi_wr_fsm
       (.ADDRARDADDR(ADDRARDADDR[8:0]),
        .D(p_0_in),
        .E(axi_wr_fsm_n_8),
        .ENA_I(ENA_I),
        .ENA_dly_D(ENA_dly_D),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 (axi_wr_fsm_n_3),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_1 (p_4_out),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_2 (next_address_r),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_3 (\bvalid_count_r_reg_n_0_[0] ),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_4 (\bvalid_count_r_reg_n_0_[2] ),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_5 (\bvalid_count_r_reg_n_0_[1] ),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 (addr_en_c),
        .I17(axi_wr_fsm_n_33),
        .Q(present_state),
        .SR(axi_wr_fsm_n_2),
        .SS(SS),
        .bvalid_c(bvalid_c),
        .\bvalid_count_r_reg[0] (axi_wr_fsm_n_4),
        .\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] (axi_wr_fsm_n_36),
        .\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 (axi_wr_fsm_n_37),
        .\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] (bvalid_wr_cnt_r),
        .\gaxi_bvalid_id_r.bvalid_d1_c_reg (\gaxif_wlast_gen.awlen_cntr_r_reg ),
        .\gaxif_ms_addr_gen.addr_cnt_enb_reg[2] (\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0 ),
        .\gaxif_ms_addr_gen.bmg_address_r_reg[11] (bmg_address_r[11:10]),
        .\gaxif_ms_addr_gen.bmg_address_r_reg[11]_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25_n_0 ),
        .\gaxif_ms_addr_gen.next_address_r_reg[0] (p_1_in[0]),
        .\gaxif_ms_addr_gen.next_address_r_reg[0]_0 (\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] ),
        .\gaxif_ms_addr_gen.next_address_r_reg[1] (\gaxif_ms_addr_gen.next_address_r[1]_i_2_n_0 ),
        .\gaxif_ms_addr_gen.next_address_r_reg[2] (\gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[2] (\gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[3] (\gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[4] (\gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[5] (axi_wr_fsm_n_17),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[5]_0 (\gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[7] (\gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0 ),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[11] ({axi_wr_fsm_n_22,axi_wr_fsm_n_23,axi_wr_fsm_n_24,axi_wr_fsm_n_25,axi_wr_fsm_n_26,axi_wr_fsm_n_27,axi_wr_fsm_n_28,axi_wr_fsm_n_29,axi_wr_fsm_n_30,axi_wr_fsm_n_31}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(axi_wr_fsm_n_5),
        .s_axi_wvalid_1(axi_wr_fsm_n_35));
  LUT6 #(
    .INIT(64'h959595956A6A6A2A)) 
    \bvalid_count_r[0]_i_1 
       (.I0(bvalid_c),
        .I1(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I2(s_axi_bready),
        .I3(\bvalid_count_r_reg_n_0_[2] ),
        .I4(\bvalid_count_r_reg_n_0_[1] ),
        .I5(\bvalid_count_r_reg_n_0_[0] ),
        .O(\bvalid_count_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA5A5A5AA4AAAAAA)) 
    \bvalid_count_r[1]_i_1 
       (.I0(\bvalid_count_r_reg_n_0_[1] ),
        .I1(\bvalid_count_r_reg_n_0_[2] ),
        .I2(\bvalid_count_r_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I5(bvalid_c),
        .O(\bvalid_count_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC6C6C6CC8CCCCCC)) 
    \bvalid_count_r[2]_i_1 
       (.I0(\bvalid_count_r_reg_n_0_[1] ),
        .I1(\bvalid_count_r_reg_n_0_[2] ),
        .I2(\bvalid_count_r_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I5(bvalid_c),
        .O(\bvalid_count_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\bvalid_count_r[0]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\bvalid_count_r[1]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[1] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\bvalid_count_r[2]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[2] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[0] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_1 ),
        .Q(s_axi_bid[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[1] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_0 ),
        .Q(s_axi_bid[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[2] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_3 ),
        .Q(s_axi_bid[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[3] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_2 ),
        .Q(s_axi_bid[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "inst_blk_mem_gen/gnbram.gaxibmg.axi_wr_fsm/gaxi_bid_gen.axi_bid_array" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3 
       (.ADDRA({1'b0,1'b0,1'b0,CONV_INTEGER}),
        .ADDRB({1'b0,1'b0,1'b0,CONV_INTEGER}),
        .ADDRC({1'b0,1'b0,1'b0,CONV_INTEGER}),
        .ADDRD({1'b0,1'b0,1'b0,bvalid_wr_cnt_r}),
        .DIA(s_axi_awid[1:0]),
        .DIB(s_axi_awid[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_0 ,\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_1 }),
        .DOB({\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_2 ,\gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_n_3 }),
        .DOC(\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOD_UNCONNECTED [1:0]),
        .WCLK(s_aclk),
        .WE(axi_wr_fsm_n_33));
  LUT3 #(
    .INIT(8'h6A)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1 
       (.I0(bvalid_rd_cnt_r[0]),
        .I1(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I2(s_axi_bready),
        .O(CONV_INTEGER[0]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1 
       (.I0(bvalid_rd_cnt_r[1]),
        .I1(s_axi_bready),
        .I2(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I3(bvalid_rd_cnt_r[0]),
        .O(CONV_INTEGER[1]));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(CONV_INTEGER[0]),
        .Q(bvalid_rd_cnt_r[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(CONV_INTEGER[1]),
        .Q(bvalid_rd_cnt_r[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(axi_wr_fsm_n_37),
        .Q(bvalid_wr_cnt_r[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(axi_wr_fsm_n_36),
        .Q(bvalid_wr_cnt_r[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_d1_c_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(bvalid_c),
        .Q(bvalid_d1_c),
        .R(SS));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \gaxi_bvalid_id_r.bvalid_r_i_1 
       (.I0(bvalid_d1_c),
        .I1(\bvalid_count_r_reg_n_0_[1] ),
        .I2(\bvalid_count_r_reg_n_0_[2] ),
        .I3(s_axi_bready),
        .I4(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .O(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ),
        .Q(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .R(SS));
  LUT6 #(
    .INIT(64'h0F0F1F5F00001151)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1 
       (.I0(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0 ),
        .I1(present_state),
        .I2(axi_wr_fsm_n_5),
        .I3(axi_wr_fsm_n_4),
        .I4(axi_wr_fsm_n_3),
        .I5(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0 ),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000110013)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0 ),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awlen[2]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0005000501053F37)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[0]),
        .I2(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0 ),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00553377005533F7)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[1]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0 ),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awsize[0]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F533F700F5FFFF)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[1]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0 ),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awsize[0]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5 
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awlen[0]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[11] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[11]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[11] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[2] 
       (.C(s_aclk),
        .CE(p_4_out),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[3] 
       (.C(s_aclk),
        .CE(p_4_out),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[4] 
       (.C(s_aclk),
        .CE(p_4_out),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[5] 
       (.C(s_aclk),
        .CE(p_4_out),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[6] 
       (.C(s_aclk),
        .CE(p_4_out),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[10] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_23),
        .Q(bmg_address_r[10]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[11] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_22),
        .Q(bmg_address_r[11]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_31),
        .Q(bmg_address_r[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[3] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_30),
        .Q(bmg_address_r[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[4] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_29),
        .Q(bmg_address_r[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[5] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_28),
        .Q(bmg_address_r[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[6] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_27),
        .Q(bmg_address_r[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[7] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_26),
        .Q(bmg_address_r[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[8] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_25),
        .Q(bmg_address_r[8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[9] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(axi_wr_fsm_n_24),
        .Q(bmg_address_r[9]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gaxif_ms_addr_gen.incr_en_r_i_1 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(p_0_out));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.incr_en_r_reg 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(p_0_out),
        .Q(incr_en_r),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \gaxif_ms_addr_gen.next_address_r[1]_i_2 
       (.I0(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] ),
        .I1(p_1_in[0]),
        .I2(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1] ),
        .I3(p_1_in[1]),
        .O(\gaxif_ms_addr_gen.next_address_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h566A6A6A)) 
    \gaxif_ms_addr_gen.next_address_r[2]_i_3 
       (.I0(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2] ),
        .I1(p_1_in[1]),
        .I2(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1] ),
        .I3(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] ),
        .I4(p_1_in[0]),
        .O(\gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.next_address_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(next_address_r[0]),
        .Q(p_1_in[0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.next_address_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(next_address_r[1]),
        .Q(p_1_in[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.next_address_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_8),
        .D(next_address_r[2]),
        .Q(p_0_in5_in),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(num_of_bytes_c[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(num_of_bytes_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[2]));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.num_of_bytes_r_reg[0] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(num_of_bytes_c[0]),
        .Q(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.num_of_bytes_r_reg[1] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(num_of_bytes_c[1]),
        .Q(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.num_of_bytes_r_reg[2] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(num_of_bytes_c[2]),
        .Q(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2] ),
        .R(SS));
  LUT3 #(
    .INIT(8'hE1)) 
    \gaxif_wlast_gen.awlen_cntr_r[2]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg [1]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg [0]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg [2]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \gaxif_wlast_gen.awlen_cntr_r[3]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg [2]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg [0]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg [1]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg [3]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \gaxif_wlast_gen.awlen_cntr_r[4]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg [3]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg [1]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg [2]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg [4]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \gaxif_wlast_gen.awlen_cntr_r[5]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg [4]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg [2]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg [1]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg [3]),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg [5]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_3 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg [6]),
        .I1(axi_wr_fsm_n_17),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg [7]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[0]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[1]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [1]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[2]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[3] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[3]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[4] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[4]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [4]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[5] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[5]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [5]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[6] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[6]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [6]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_35),
        .D(p_0_in[7]),
        .Q(\gaxif_wlast_gen.awlen_cntr_r_reg [7]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module main_memory_blk_mem_gen_generic_cstr
   (s_axi_rdata,
    ENA_dly_D,
    rsta_busy,
    ENB_dly_D,
    rstb_busy,
    s_aclk,
    ENA_I,
    ENB_I,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    s_aresetn);
  output [31:0]s_axi_rdata;
  output ENA_dly_D;
  output rsta_busy;
  output ENB_dly_D;
  output rstb_busy;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_aresetn;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly_D;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;

  main_memory_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .ENA_I(ENA_I),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module main_memory_blk_mem_gen_prim_width
   (s_axi_rdata,
    ENA_dly_D,
    rsta_busy,
    ENB_dly_D,
    rstb_busy,
    s_aclk,
    ENA_I,
    ENB_I,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    s_aresetn);
  output [31:0]s_axi_rdata;
  output ENA_dly_D;
  output rsta_busy;
  output ENB_dly_D;
  output rstb_busy;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_aresetn;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire ENA_I;
  wire ENA_dly;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly;
  wire ENB_dly_D;
  wire POR_A;
  wire [4:0]RSTA_SHFT_REG;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire p_3_out;
  wire ram_rstram_a_busy;
  wire ram_rstram_b;
  wire ram_rstram_b_busy;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENA_dly),
        .Q(ENA_dly_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_A),
        .Q(ENA_dly),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_rstram_b),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_A_i_1 
       (.I0(RSTA_SHFT_REG[0]),
        .I1(RSTA_SHFT_REG[4]),
        .O(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_A_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(POR_A),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \SAFETY_CKT_GEN.RSTA_BUSY_NO_REG.RSTA_BUSY_i_1 
       (.I0(ENA_dly),
        .I1(ENA_dly_D),
        .I2(POR_A),
        .O(ram_rstram_a_busy));
  FDRE \SAFETY_CKT_GEN.RSTA_BUSY_NO_REG.RSTA_BUSY_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_rstram_a_busy),
        .Q(rsta_busy),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTA_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "U0/\inst_blk_mem_gen/gnbram.gaxibmg.axi_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "U0/\inst_blk_mem_gen/gnbram.gaxibmg.axi_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(RSTA_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTA_SHFT_REG[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \SAFETY_CKT_GEN.nSPRAM_RST_BUSY.RSTB_BUSY_NO_REG.RSTB_BUSY_i_1 
       (.I0(s_aresetn),
        .I1(POR_A),
        .I2(ENB_dly),
        .I3(ENB_dly_D),
        .O(ram_rstram_b_busy));
  FDRE \SAFETY_CKT_GEN.nSPRAM_RST_BUSY.RSTB_BUSY_NO_REG.RSTB_BUSY_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_rstram_b_busy),
        .Q(rstb_busy),
        .R(1'b0));
  main_memory_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module main_memory_blk_mem_gen_prim_wrapper_init
   (s_axi_rdata,
    ram_rstram_b,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    s_aresetn);
  output [31:0]s_axi_rdata;
  output ram_rstram_b;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_aresetn;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000700000006000000050000000400000003000000020000000100000000),
    .INIT_01(256'h0000000F0000000E0000000D0000000C0000000B0000000A0000000900000008),
    .INIT_02(256'h0000001700000016000000150000001400000013000000120000001100000010),
    .INIT_03(256'h0000001F0000001E0000001D0000001C0000001B0000001A0000001900000018),
    .INIT_04(256'h0000002700000026000000250000002400000023000000220000002100000020),
    .INIT_05(256'h0000002F0000002E0000002D0000002C0000002B0000002A0000002900000028),
    .INIT_06(256'h0000003700000036000000350000003400000033000000320000003100000030),
    .INIT_07(256'h0000003F0000003E0000003D0000003C0000003B0000003A0000003900000038),
    .INIT_08(256'h0000004700000046000000450000004400000043000000420000004100000040),
    .INIT_09(256'h0000004F0000004E0000004D0000004C0000004B0000004A0000004900000048),
    .INIT_0A(256'h0000005700000056000000550000005400000053000000520000005100000050),
    .INIT_0B(256'h0000005F0000005E0000005D0000005C0000005B0000005A0000005900000058),
    .INIT_0C(256'h0000006700000066000000650000006400000063000000620000006100000060),
    .INIT_0D(256'h0000006F0000006E0000006D0000006C0000006B0000006A0000006900000068),
    .INIT_0E(256'h0000007700000076000000750000007400000073000000720000007100000070),
    .INIT_0F(256'h0000007F0000007E0000007D0000007C0000007B0000007A0000007900000078),
    .INIT_10(256'h0000008700000086000000850000008400000083000000820000008100000080),
    .INIT_11(256'h0000008F0000008E0000008D0000008C0000008B0000008A0000008900000088),
    .INIT_12(256'h0000009700000096000000950000009400000093000000920000009100000090),
    .INIT_13(256'h0000009F0000009E0000009D0000009C0000009B0000009A0000009900000098),
    .INIT_14(256'h000000A7000000A6000000A5000000A4000000A3000000A2000000A1000000A0),
    .INIT_15(256'h000000AF000000AE000000AD000000AC000000AB000000AA000000A9000000A8),
    .INIT_16(256'h000000B7000000B6000000B5000000B4000000B3000000B2000000B1000000B0),
    .INIT_17(256'h000000BF000000BE000000BD000000BC000000BB000000BA000000B9000000B8),
    .INIT_18(256'h000000C7000000C6000000C5000000C4000000C3000000C2000000C1000000C0),
    .INIT_19(256'h000000CF000000CE000000CD000000CC000000CB000000CA000000C9000000C8),
    .INIT_1A(256'h000000D7000000D6000000D5000000D4000000D3000000D2000000D1000000D0),
    .INIT_1B(256'h000000DF000000DE000000DD000000DC000000DB000000DA000000D9000000D8),
    .INIT_1C(256'h000000E7000000E6000000E5000000E4000000E3000000E2000000E1000000E0),
    .INIT_1D(256'h000000EF000000EE000000ED000000EC000000EB000000EA000000E9000000E8),
    .INIT_1E(256'h000000F7000000F6000000F5000000F4000000F3000000F2000000F1000000F0),
    .INIT_1F(256'h000000FF000000FE000000FD000000FC000000FB000000FA000000F9000000F8),
    .INIT_20(256'h0000010700000106000001050000010400000103000001020000010100000100),
    .INIT_21(256'h0000010F0000010E0000010D0000010C0000010B0000010A0000010900000108),
    .INIT_22(256'h0000011700000116000001150000011400000113000001120000011100000110),
    .INIT_23(256'h0000011F0000011E0000011D0000011C0000011B0000011A0000011900000118),
    .INIT_24(256'h0000012700000126000001250000012400000123000001220000012100000120),
    .INIT_25(256'h0000012F0000012E0000012D0000012C0000012B0000012A0000012900000128),
    .INIT_26(256'h0000013700000136000001350000013400000133000001320000013100000130),
    .INIT_27(256'h0000013F0000013E0000013D0000013C0000013B0000013A0000013900000138),
    .INIT_28(256'h0000014700000146000001450000014400000143000001420000014100000140),
    .INIT_29(256'h0000014F0000014E0000014D0000014C0000014B0000014A0000014900000148),
    .INIT_2A(256'h0000015700000156000001550000015400000153000001520000015100000150),
    .INIT_2B(256'h0000015F0000015E0000015D0000015C0000015B0000015A0000015900000158),
    .INIT_2C(256'h0000016700000166000001650000016400000163000001620000016100000160),
    .INIT_2D(256'h0000016F0000016E0000016D0000016C0000016B0000016A0000016900000168),
    .INIT_2E(256'h0000017700000176000001750000017400000173000001720000017100000170),
    .INIT_2F(256'h0000017F0000017E0000017D0000017C0000017B0000017A0000017900000178),
    .INIT_30(256'h0000018700000186000001850000018400000183000001820000018100000180),
    .INIT_31(256'h0000018F0000018E0000018D0000018C0000018B0000018A0000018900000188),
    .INIT_32(256'h0000019700000196000001950000019400000193000001920000019100000190),
    .INIT_33(256'h0000019F0000019E0000019D0000019C0000019B0000019A0000019900000198),
    .INIT_34(256'h000001A7000001A6000001A5000001A4000001A3000001A2000001A1000001A0),
    .INIT_35(256'h000001AF000001AE000001AD000001AC000001AB000001AA000001A9000001A8),
    .INIT_36(256'h000001B7000001B6000001B5000001B4000001B3000001B2000001B1000001B0),
    .INIT_37(256'h000001BF000001BE000001BD000001BC000001BB000001BA000001B9000001B8),
    .INIT_38(256'h000001C7000001C6000001C5000001C4000001C3000001C2000001C1000001C0),
    .INIT_39(256'h000001CF000001CE000001CD000001CC000001CB000001CA000001C9000001C8),
    .INIT_3A(256'h000001D7000001D6000001D5000001D4000001D3000001D2000001D1000001D0),
    .INIT_3B(256'h000001DF000001DE000001DD000001DC000001DB000001DA000001D9000001D8),
    .INIT_3C(256'h000001E7000001E6000001E5000001E4000001E3000001E2000001E1000001E0),
    .INIT_3D(256'h000001EF000001EE000001ED000001EC000001EB000001EA000001E9000001E8),
    .INIT_3E(256'h000001F7000001F6000001F5000001F4000001F3000001F2000001F1000001F0),
    .INIT_3F(256'h000001FF000001FE000001FD000001FC000001FB000001FA000001F9000001F8),
    .INIT_40(256'h0000020700000206000002050000020400000203000002020000020100000200),
    .INIT_41(256'h0000020F0000020E0000020D0000020C0000020B0000020A0000020900000208),
    .INIT_42(256'h0000021700000216000002150000021400000213000002120000021100000210),
    .INIT_43(256'h0000021F0000021E0000021D0000021C0000021B0000021A0000021900000218),
    .INIT_44(256'h0000022700000226000002250000022400000223000002220000022100000220),
    .INIT_45(256'h0000022F0000022E0000022D0000022C0000022B0000022A0000022900000228),
    .INIT_46(256'h0000023700000236000002350000023400000233000002320000023100000230),
    .INIT_47(256'h0000023F0000023E0000023D0000023C0000023B0000023A0000023900000238),
    .INIT_48(256'h0000024700000246000002450000024400000243000002420000024100000240),
    .INIT_49(256'h0000024F0000024E0000024D0000024C0000024B0000024A0000024900000248),
    .INIT_4A(256'h0000025700000256000002550000025400000253000002520000025100000250),
    .INIT_4B(256'h0000025F0000025E0000025D0000025C0000025B0000025A0000025900000258),
    .INIT_4C(256'h0000026700000266000002650000026400000263000002620000026100000260),
    .INIT_4D(256'h0000026F0000026E0000026D0000026C0000026B0000026A0000026900000268),
    .INIT_4E(256'h0000027700000276000002750000027400000273000002720000027100000270),
    .INIT_4F(256'h0000027F0000027E0000027D0000027C0000027B0000027A0000027900000278),
    .INIT_50(256'h0000028700000286000002850000028400000283000002820000028100000280),
    .INIT_51(256'h0000028F0000028E0000028D0000028C0000028B0000028A0000028900000288),
    .INIT_52(256'h0000029700000296000002950000029400000293000002920000029100000290),
    .INIT_53(256'h0000029F0000029E0000029D0000029C0000029B0000029A0000029900000298),
    .INIT_54(256'h000002A7000002A6000002A5000002A4000002A3000002A2000002A1000002A0),
    .INIT_55(256'h000002AF000002AE000002AD000002AC000002AB000002AA000002A9000002A8),
    .INIT_56(256'h000002B7000002B6000002B5000002B4000002B3000002B2000002B1000002B0),
    .INIT_57(256'h000002BF000002BE000002BD000002BC000002BB000002BA000002B9000002B8),
    .INIT_58(256'h000002C7000002C6000002C5000002C4000002C3000002C2000002C1000002C0),
    .INIT_59(256'h000002CF000002CE000002CD000002CC000002CB000002CA000002C9000002C8),
    .INIT_5A(256'h000002D7000002D6000002D5000002D4000002D3000002D2000002D1000002D0),
    .INIT_5B(256'h000002DF000002DE000002DD000002DC000002DB000002DA000002D9000002D8),
    .INIT_5C(256'h000002E7000002E6000002E5000002E4000002E3000002E2000002E1000002E0),
    .INIT_5D(256'h000002EF000002EE000002ED000002EC000002EB000002EA000002E9000002E8),
    .INIT_5E(256'h000002F7000002F6000002F5000002F4000002F3000002F2000002F1000002F0),
    .INIT_5F(256'h000002FF000002FE000002FD000002FC000002FB000002FA000002F9000002F8),
    .INIT_60(256'h0000030700000306000003050000030400000303000003020000030100000300),
    .INIT_61(256'h0000030F0000030E0000030D0000030C0000030B0000030A0000030900000308),
    .INIT_62(256'h0000031700000316000003150000031400000313000003120000031100000310),
    .INIT_63(256'h0000031F0000031E0000031D0000031C0000031B0000031A0000031900000318),
    .INIT_64(256'h0000032700000326000003250000032400000323000003220000032100000320),
    .INIT_65(256'h0000032F0000032E0000032D0000032C0000032B0000032A0000032900000328),
    .INIT_66(256'h0000033700000336000003350000033400000333000003320000033100000330),
    .INIT_67(256'h0000033F0000033E0000033D0000033C0000033B0000033A0000033900000338),
    .INIT_68(256'h0000034700000346000003450000034400000343000003420000034100000340),
    .INIT_69(256'h0000034F0000034E0000034D0000034C0000034B0000034A0000034900000348),
    .INIT_6A(256'h0000035700000356000003550000035400000353000003520000035100000350),
    .INIT_6B(256'h0000035F0000035E0000035D0000035C0000035B0000035A0000035900000358),
    .INIT_6C(256'h0000036700000366000003650000036400000363000003620000036100000360),
    .INIT_6D(256'h0000036F0000036E0000036D0000036C0000036B0000036A0000036900000368),
    .INIT_6E(256'h0000037700000376000003750000037400000373000003720000037100000370),
    .INIT_6F(256'h0000037F0000037E0000037D0000037C0000037B0000037A0000037900000378),
    .INIT_70(256'h0000038700000386000003850000038400000383000003820000038100000380),
    .INIT_71(256'h0000038F0000038E0000038D0000038C0000038B0000038A0000038900000388),
    .INIT_72(256'h0000039700000396000003950000039400000393000003920000039100000390),
    .INIT_73(256'h0000039F0000039E0000039D0000039C0000039B0000039A0000039900000398),
    .INIT_74(256'h000003A7000003A6000003A5000003A4000003A3000003A2000003A1000003A0),
    .INIT_75(256'h000003AF000003AE000003AD000003AC000003AB000003AA000003A9000003A8),
    .INIT_76(256'h000003B7000003B6000003B5000003B4000003B3000003B2000003B1000003B0),
    .INIT_77(256'h000003BF000003BE000003BD000003BC000003BB000003BA000003B9000003B8),
    .INIT_78(256'h000003C7000003C6000003C5000003C4000003C3000003C2000003C1000003C0),
    .INIT_79(256'h000003CF000003CE000003CD000003CC000003CB000003CA000003C9000003C8),
    .INIT_7A(256'h000003D7000003D6000003D5000003D4000003D3000003D2000003D1000003D0),
    .INIT_7B(256'h000003DF000003DE000003DD000003DC000003DB000003DA000003D9000003D8),
    .INIT_7C(256'h000003E7000003E6000003E5000003E4000003E3000003E2000003E1000003E0),
    .INIT_7D(256'h000003EF000003EE000003ED000003EC000003EB000003EA000003E9000003E8),
    .INIT_7E(256'h000003F7000003F6000003F5000003F4000003F3000003F2000003F1000003F0),
    .INIT_7F(256'h000003FF000003FE000003FD000003FC000003FB000003FA000003F9000003F8),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(s_axi_wdata),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO(s_axi_rdata),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA(s_axi_wstrb),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3 
       (.I0(POR_A),
        .I1(s_aresetn),
        .O(ram_rstram_b));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module main_memory_blk_mem_gen_top
   (s_axi_rdata,
    ENA_dly_D,
    rsta_busy,
    ENB_dly_D,
    rstb_busy,
    s_aclk,
    ENA_I,
    ENB_I,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    s_aresetn);
  output [31:0]s_axi_rdata;
  output ENA_dly_D;
  output rsta_busy;
  output ENB_dly_D;
  output rstb_busy;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input [9:0]ADDRARDADDR;
  input [9:0]ADDRBWRADDR;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_aresetn;

  wire [9:0]ADDRARDADDR;
  wire [9:0]ADDRBWRADDR;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly_D;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;

  main_memory_blk_mem_gen_generic_cstr \valid.cstr 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .ENA_I(ENA_I),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "1" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.96515 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "1" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "1" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "main_memory.mem" *) 
(* C_INIT_FILE_NAME = "main_memory.mif" *) (* C_INTERFACE_TYPE = "1" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "4" *) (* C_WEB_WIDTH = "4" *) (* C_WRITE_DEPTH_A = "1024" *) 
(* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "READ_FIRST" *) (* C_WRITE_MODE_B = "READ_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module main_memory_blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [3:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [3:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign dbiterr = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  main_memory_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.\gaxi_bvalid_id_r.bvalid_r_reg (s_axi_bvalid),
        .\gaxi_full_sm.r_valid_r_reg (s_axi_rvalid),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr[11:0]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[11:0]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module main_memory_blk_mem_gen_v8_4_3_synth
   (\gaxi_full_sm.r_valid_r_reg ,
    s_axi_rdata,
    s_axi_awready,
    s_axi_wready,
    \gaxi_bvalid_id_r.bvalid_r_reg ,
    rsta_busy,
    rstb_busy,
    s_axi_arready,
    s_axi_rid,
    s_axi_bid,
    s_axi_rlast,
    s_aclk,
    s_aresetn,
    s_axi_arlen,
    s_axi_rready,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_bready,
    s_axi_arid,
    s_axi_awid,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_awburst,
    s_axi_awaddr,
    s_axi_arvalid,
    s_axi_arburst);
  output \gaxi_full_sm.r_valid_r_reg ;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_wready;
  output \gaxi_bvalid_id_r.bvalid_r_reg ;
  output rsta_busy;
  output rstb_busy;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [3:0]s_axi_bid;
  output s_axi_rlast;
  input s_aclk;
  input s_aresetn;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input [11:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [3:0]s_axi_awid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input [11:0]s_axi_awaddr;
  input s_axi_arvalid;
  input [1:0]s_axi_arburst;

  wire \gaxi_bvalid_id_r.bvalid_r_reg ;
  wire \gaxi_full_sm.r_valid_r_reg ;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire s_aresetn_a_c;
  wire [11:0]s_axi_araddr;
  wire [9:0]s_axi_araddr_out_c;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [9:0]s_axi_awaddr_out_c;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \valid.cstr/ramloop[0].ram.r/ENA_I ;
  wire \valid.cstr/ramloop[0].ram.r/ENA_dly_D ;
  wire \valid.cstr/ramloop[0].ram.r/ENB_I ;
  wire \valid.cstr/ramloop[0].ram.r/ENB_dly_D ;

  main_memory_blk_mem_gen_top \gnbram.gaxibmg.axi_blk_mem_gen 
       (.ADDRARDADDR(s_axi_awaddr_out_c),
        .ADDRBWRADDR(s_axi_araddr_out_c),
        .ENA_I(\valid.cstr/ramloop[0].ram.r/ENA_I ),
        .ENA_dly_D(\valid.cstr/ramloop[0].ram.r/ENA_dly_D ),
        .ENB_I(\valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_dly_D(\valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
  main_memory_blk_mem_axi_read_wrapper \gnbram.gaxibmg.axi_rd_sm 
       (.ADDRBWRADDR(s_axi_araddr_out_c),
        .ENB_I(\valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_dly_D(\valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .SS(s_aresetn_a_c),
        .\gaxi_full_sm.r_valid_r_reg (\gaxi_full_sm.r_valid_r_reg ),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready));
  main_memory_blk_mem_axi_write_wrapper \gnbram.gaxibmg.axi_wr_fsm 
       (.ADDRARDADDR(s_axi_awaddr_out_c),
        .ENA_I(\valid.cstr/ramloop[0].ram.r/ENA_I ),
        .ENA_dly_D(\valid.cstr/ramloop[0].ram.r/ENA_dly_D ),
        .SS(s_aresetn_a_c),
        .\gaxi_bvalid_id_r.bvalid_r_reg_0 (\gaxi_bvalid_id_r.bvalid_r_reg ),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
