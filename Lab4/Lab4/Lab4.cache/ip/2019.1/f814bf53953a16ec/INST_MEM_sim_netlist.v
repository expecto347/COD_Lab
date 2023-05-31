// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed May 10 18:17:49 2023
// Host        : VM5818-Ubuntu running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ INST_MEM_sim_netlist.v
// Design      : INST_MEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "INST_MEM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [7:0]a;
  output [31:0]spo;

  wire [7:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "INST_MEM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "INST_MEM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31:2] = \^spo [31:2];
  assign spo[1] = \^spo [0];
  assign spo[0] = \^spo [0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31:2],\^spo [0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [30:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [30:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [30:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [30:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_4_n_0 ;
  wire \spo[15]_INST_0_i_5_n_0 ;
  wire \spo[15]_INST_0_i_6_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[16]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_4_n_0 ;
  wire \spo[16]_INST_0_i_5_n_0 ;
  wire \spo[16]_INST_0_i_6_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[17]_INST_0_i_4_n_0 ;
  wire \spo[17]_INST_0_i_5_n_0 ;
  wire \spo[17]_INST_0_i_6_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_4_n_0 ;
  wire \spo[18]_INST_0_i_5_n_0 ;
  wire \spo[18]_INST_0_i_6_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_4_n_0 ;
  wire \spo[20]_INST_0_i_5_n_0 ;
  wire \spo[20]_INST_0_i_6_n_0 ;
  wire \spo[21]_INST_0_i_1_n_0 ;
  wire \spo[21]_INST_0_i_2_n_0 ;
  wire \spo[21]_INST_0_i_3_n_0 ;
  wire \spo[21]_INST_0_i_4_n_0 ;
  wire \spo[21]_INST_0_i_5_n_0 ;
  wire \spo[21]_INST_0_i_6_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_4_n_0 ;
  wire \spo[22]_INST_0_i_5_n_0 ;
  wire \spo[22]_INST_0_i_6_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_4_n_0 ;
  wire \spo[23]_INST_0_i_5_n_0 ;
  wire \spo[23]_INST_0_i_6_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[24]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_4_n_0 ;
  wire \spo[24]_INST_0_i_5_n_0 ;
  wire \spo[24]_INST_0_i_6_n_0 ;
  wire \spo[25]_INST_0_i_1_n_0 ;
  wire \spo[25]_INST_0_i_2_n_0 ;
  wire \spo[25]_INST_0_i_3_n_0 ;
  wire \spo[25]_INST_0_i_4_n_0 ;
  wire \spo[25]_INST_0_i_5_n_0 ;
  wire \spo[25]_INST_0_i_6_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[26]_INST_0_i_4_n_0 ;
  wire \spo[26]_INST_0_i_5_n_0 ;
  wire \spo[26]_INST_0_i_6_n_0 ;
  wire \spo[27]_INST_0_i_1_n_0 ;
  wire \spo[27]_INST_0_i_2_n_0 ;
  wire \spo[27]_INST_0_i_3_n_0 ;
  wire \spo[27]_INST_0_i_4_n_0 ;
  wire \spo[27]_INST_0_i_5_n_0 ;
  wire \spo[27]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;

  LUT3 #(
    .INIT(8'h74)) 
    \spo[0]_INST_0 
       (.I0(a[7]),
        .I1(a[6]),
        .I2(\spo[0]_INST_0_i_1_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h05FF15FF55FF55FF)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  MUXF8 \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .O(spo[9]),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_3_n_0 ),
        .I1(\spo[10]_INST_0_i_4_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_5_n_0 ),
        .I1(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h23F55CCA05E05CC0)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000059555088)) 
    \spo[10]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000007673F554)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041195E44)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  MUXF8 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h00000300C8042800)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \spo[11]_INST_0_i_4 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02010D0D04000402)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[7]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0040000F00400052)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8883333B8880000)) 
    \spo[12]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_1_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(\spo[12]_INST_0_i_2_n_0 ),
        .O(spo[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000C2)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200402400000000)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[7]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[13]_INST_0_i_1_n_0 ),
        .I2(a[6]),
        .I3(\spo[13]_INST_0_i_2_n_0 ),
        .I4(a[5]),
        .I5(\spo[13]_INST_0_i_3_n_0 ),
        .O(spo[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800020C0000)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0088240008244300)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(\spo[14]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[14]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .I5(\spo[14]_INST_0_i_4_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003007000000080)) 
    \spo[14]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000300000000)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800300002800020)) 
    \spo[14]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[14]_INST_0_i_4_n_0 ));
  MUXF8 \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(\spo[15]_INST_0_i_2_n_0 ),
        .O(spo[14]),
        .S(a[6]));
  MUXF7 \spo[15]_INST_0_i_1 
       (.I0(\spo[15]_INST_0_i_3_n_0 ),
        .I1(\spo[15]_INST_0_i_4_n_0 ),
        .O(\spo[15]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[15]_INST_0_i_2 
       (.I0(\spo[15]_INST_0_i_5_n_0 ),
        .I1(\spo[15]_INST_0_i_6_n_0 ),
        .O(\spo[15]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h183915468104149E)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040150716)) 
    \spo[15]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00180001004000C0)) 
    \spo[15]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000480200000182)) 
    \spo[15]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[15]_INST_0_i_6_n_0 ));
  MUXF8 \spo[16]_INST_0 
       (.I0(\spo[16]_INST_0_i_1_n_0 ),
        .I1(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[15]),
        .S(a[6]));
  MUXF7 \spo[16]_INST_0_i_1 
       (.I0(\spo[16]_INST_0_i_3_n_0 ),
        .I1(\spo[16]_INST_0_i_4_n_0 ),
        .O(\spo[16]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[16]_INST_0_i_2 
       (.I0(\spo[16]_INST_0_i_5_n_0 ),
        .I1(\spo[16]_INST_0_i_6_n_0 ),
        .O(\spo[16]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h112C880634DF124C)) 
    \spo[16]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300440004)) 
    \spo[16]_INST_0_i_4 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0011001000480000)) 
    \spo[16]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A60000000108)) 
    \spo[16]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[16]_INST_0_i_6_n_0 ));
  MUXF8 \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(\spo[17]_INST_0_i_2_n_0 ),
        .O(spo[16]),
        .S(a[6]));
  MUXF7 \spo[17]_INST_0_i_1 
       (.I0(\spo[17]_INST_0_i_3_n_0 ),
        .I1(\spo[17]_INST_0_i_4_n_0 ),
        .O(\spo[17]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[17]_INST_0_i_2 
       (.I0(\spo[17]_INST_0_i_5_n_0 ),
        .I1(\spo[17]_INST_0_i_6_n_0 ),
        .O(\spo[17]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h1801395B8116143E)) 
    \spo[17]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040152716)) 
    \spo[17]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0005006000800080)) 
    \spo[17]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E0000800E1001A)) 
    \spo[17]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[17]_INST_0_i_6_n_0 ));
  MUXF8 \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(\spo[18]_INST_0_i_2_n_0 ),
        .O(spo[17]),
        .S(a[6]));
  MUXF7 \spo[18]_INST_0_i_1 
       (.I0(\spo[18]_INST_0_i_3_n_0 ),
        .I1(\spo[18]_INST_0_i_4_n_0 ),
        .O(\spo[18]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[18]_INST_0_i_2 
       (.I0(\spo[18]_INST_0_i_5_n_0 ),
        .I1(\spo[18]_INST_0_i_6_n_0 ),
        .O(\spo[18]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h000580B0B8F20200)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202000100000000)) 
    \spo[18]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400003004)) 
    \spo[18]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000104)) 
    \spo[18]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8333300B80000)) 
    \spo[19]_INST_0 
       (.I0(\spo[19]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[19]_INST_0_i_2_n_0 ),
        .I3(a[1]),
        .I4(a[5]),
        .I5(\spo[19]_INST_0_i_3_n_0 ),
        .O(spo[18]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00200010)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C80040000003400)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  MUXF8 \spo[20]_INST_0 
       (.I0(\spo[20]_INST_0_i_1_n_0 ),
        .I1(\spo[20]_INST_0_i_2_n_0 ),
        .O(spo[19]),
        .S(a[6]));
  MUXF7 \spo[20]_INST_0_i_1 
       (.I0(\spo[20]_INST_0_i_3_n_0 ),
        .I1(\spo[20]_INST_0_i_4_n_0 ),
        .O(\spo[20]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[20]_INST_0_i_2 
       (.I0(\spo[20]_INST_0_i_5_n_0 ),
        .I1(\spo[20]_INST_0_i_6_n_0 ),
        .O(\spo[20]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h2808E01B09075802)) 
    \spo[20]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00280052005900D6)) 
    \spo[20]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000C005B00D800E0)) 
    \spo[20]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000084000000300)) 
    \spo[20]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[20]_INST_0_i_6_n_0 ));
  MUXF8 \spo[21]_INST_0 
       (.I0(\spo[21]_INST_0_i_1_n_0 ),
        .I1(\spo[21]_INST_0_i_2_n_0 ),
        .O(spo[20]),
        .S(a[6]));
  MUXF7 \spo[21]_INST_0_i_1 
       (.I0(\spo[21]_INST_0_i_3_n_0 ),
        .I1(\spo[21]_INST_0_i_4_n_0 ),
        .O(\spo[21]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[21]_INST_0_i_2 
       (.I0(\spo[21]_INST_0_i_5_n_0 ),
        .I1(\spo[21]_INST_0_i_6_n_0 ),
        .O(\spo[21]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0A081014C93341B0)) 
    \spo[21]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000068F18746)) 
    \spo[21]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000114A275)) 
    \spo[21]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0084004800000000)) 
    \spo[21]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[21]_INST_0_i_6_n_0 ));
  MUXF8 \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(\spo[22]_INST_0_i_2_n_0 ),
        .O(spo[21]),
        .S(a[6]));
  MUXF7 \spo[22]_INST_0_i_1 
       (.I0(\spo[22]_INST_0_i_3_n_0 ),
        .I1(\spo[22]_INST_0_i_4_n_0 ),
        .O(\spo[22]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[22]_INST_0_i_2 
       (.I0(\spo[22]_INST_0_i_5_n_0 ),
        .I1(\spo[22]_INST_0_i_6_n_0 ),
        .O(\spo[22]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h08098113100B5022)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[7]),
        .I5(a[2]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040EF7792)) 
    \spo[22]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000002049F360)) 
    \spo[22]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2123000200000000)) 
    \spo[22]_INST_0_i_6 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[22]_INST_0_i_6_n_0 ));
  MUXF8 \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(\spo[23]_INST_0_i_2_n_0 ),
        .O(spo[22]),
        .S(a[6]));
  MUXF7 \spo[23]_INST_0_i_1 
       (.I0(\spo[23]_INST_0_i_3_n_0 ),
        .I1(\spo[23]_INST_0_i_4_n_0 ),
        .O(\spo[23]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[23]_INST_0_i_2 
       (.I0(\spo[23]_INST_0_i_5_n_0 ),
        .I1(\spo[23]_INST_0_i_6_n_0 ),
        .O(\spo[23]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0AA010020D044E82)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000842100000484)) 
    \spo[23]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000018112A0C)) 
    \spo[23]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0046004000010018)) 
    \spo[23]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_6_n_0 ));
  MUXF8 \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(\spo[24]_INST_0_i_2_n_0 ),
        .O(spo[23]),
        .S(a[6]));
  MUXF7 \spo[24]_INST_0_i_1 
       (.I0(\spo[24]_INST_0_i_3_n_0 ),
        .I1(\spo[24]_INST_0_i_4_n_0 ),
        .O(\spo[24]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[24]_INST_0_i_2 
       (.I0(\spo[24]_INST_0_i_5_n_0 ),
        .I1(\spo[24]_INST_0_i_6_n_0 ),
        .O(\spo[24]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0080106088000002)) 
    \spo[24]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010000900000000)) 
    \spo[24]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004010400000000)) 
    \spo[24]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00000083)) 
    \spo[24]_INST_0_i_6 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[24]_INST_0_i_6_n_0 ));
  MUXF8 \spo[25]_INST_0 
       (.I0(\spo[25]_INST_0_i_1_n_0 ),
        .I1(\spo[25]_INST_0_i_2_n_0 ),
        .O(spo[24]),
        .S(a[6]));
  MUXF7 \spo[25]_INST_0_i_1 
       (.I0(\spo[25]_INST_0_i_3_n_0 ),
        .I1(\spo[25]_INST_0_i_4_n_0 ),
        .O(\spo[25]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[25]_INST_0_i_2 
       (.I0(\spo[25]_INST_0_i_5_n_0 ),
        .I1(\spo[25]_INST_0_i_6_n_0 ),
        .O(\spo[25]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h008440420C431202)) 
    \spo[25]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000044520000C084)) 
    \spo[25]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00430024000A0000)) 
    \spo[25]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C0000850C)) 
    \spo[25]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[25]_INST_0_i_6_n_0 ));
  MUXF8 \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(\spo[26]_INST_0_i_2_n_0 ),
        .O(spo[25]),
        .S(a[6]));
  MUXF7 \spo[26]_INST_0_i_1 
       (.I0(\spo[26]_INST_0_i_3_n_0 ),
        .I1(\spo[26]_INST_0_i_4_n_0 ),
        .O(\spo[26]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[26]_INST_0_i_2 
       (.I0(\spo[26]_INST_0_i_5_n_0 ),
        .I1(\spo[26]_INST_0_i_6_n_0 ),
        .O(\spo[26]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h009440420C012202)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010212000)) 
    \spo[26]_INST_0_i_4 
       (.I0(a[4]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0007000200100080)) 
    \spo[26]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000800300015008C)) 
    \spo[26]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[26]_INST_0_i_6_n_0 ));
  MUXF8 \spo[27]_INST_0 
       (.I0(\spo[27]_INST_0_i_1_n_0 ),
        .I1(\spo[27]_INST_0_i_2_n_0 ),
        .O(spo[26]),
        .S(a[6]));
  MUXF7 \spo[27]_INST_0_i_1 
       (.I0(\spo[27]_INST_0_i_3_n_0 ),
        .I1(\spo[27]_INST_0_i_4_n_0 ),
        .O(\spo[27]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[27]_INST_0_i_2 
       (.I0(\spo[27]_INST_0_i_5_n_0 ),
        .I1(\spo[27]_INST_0_i_6_n_0 ),
        .O(\spo[27]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h009440420C412202)) 
    \spo[27]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004010108)) 
    \spo[27]_INST_0_i_4 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0047003200100080)) 
    \spo[27]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200001130)) 
    \spo[27]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[3]),
        .O(\spo[27]_INST_0_i_6_n_0 ));
  MUXF8 \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .O(spo[27]),
        .S(a[6]));
  MUXF7 \spo[28]_INST_0_i_1 
       (.I0(\spo[28]_INST_0_i_3_n_0 ),
        .I1(\spo[28]_INST_0_i_4_n_0 ),
        .O(\spo[28]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(\spo[28]_INST_0_i_6_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h109440463C41320E)) 
    \spo[28]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h005D004800400014)) 
    \spo[28]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004000500000000)) 
    \spo[28]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000100)) 
    \spo[28]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[29]_INST_0_i_1_n_0 ),
        .I4(a[5]),
        .I5(\spo[29]_INST_0_i_2_n_0 ),
        .O(spo[28]));
  LUT6 #(
    .INIT(64'h000000000E090908)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h111C420294414606)) 
    \spo[29]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[29]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[5]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0000302400000391)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000302000000)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[7]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020880049022000)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[30]_INST_0_i_1_n_0 ),
        .I4(a[5]),
        .I5(\spo[30]_INST_0_i_2_n_0 ),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'h0000000055404095)) 
    \spo[30]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h119442441C402206)) 
    \spo[30]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[6]),
        .I3(\spo[31]_INST_0_i_3_n_0 ),
        .I4(a[5]),
        .I5(\spo[31]_INST_0_i_4_n_0 ),
        .O(spo[30]));
  LUT6 #(
    .INIT(64'h000000000915334C)) 
    \spo[31]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0047003200100082)) 
    \spo[31]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E080908)) 
    \spo[31]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h019442400C402202)) 
    \spo[31]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888888800003000)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(a[1]),
        .I3(\spo[3]_INST_0_i_2_n_0 ),
        .I4(a[3]),
        .I5(a[5]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h0000000800080003)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[0]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  MUXF8 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h3E293A1CEA7FA9FF)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000026AA8FFF)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000BE8A000092FD)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[7]),
        .I5(a[0]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00009EC800004248)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  MUXF8 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(\spo[5]_INST_0_i_4_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0B720D6F9790D6E0)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000759557A2)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041556D02)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E397BBD7)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF8 \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_3_n_0 ),
        .I1(\spo[6]_INST_0_i_4_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h0105522215528000)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054440444)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00500015004800C6)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000006317BBD7)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[7]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  MUXF8 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[6]),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h17633C365E25E95D)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F2AE713)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00D8001E00A800EB)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FF314E4)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[7]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  MUXF8 \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_3_n_0 ),
        .I1(\spo[8]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h1268C724312E2A9F)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[7]),
        .I5(a[0]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000062200000A67)) 
    \spo[8]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000080400000348)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00009E4000004048)) 
    \spo[8]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[7]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  MUXF8 \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_3_n_0 ),
        .I1(\spo[9]_INST_0_i_4_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ),
        .S(a[5]));
  MUXF7 \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ),
        .S(a[5]));
  LUT6 #(
    .INIT(64'h1C3C256A8AC1353E)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000024A0A377)) 
    \spo[9]_INST_0_i_4 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[7]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AD00C8001C00F2)) 
    \spo[9]_INST_0_i_5 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F70092001A0070)) 
    \spo[9]_INST_0_i_6 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[7]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[9]_INST_0_i_6_n_0 ));
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
