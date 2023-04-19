// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Apr 12 20:16:10 2023
// Host        : expecto running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/expecto/Desktop/COD_Lab/Lab2/Lab2.sim/sim_1/synth/timing/xsim/sim_FIFO_time_synth.v
// Design      : FIFO
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module FIFO
   (clk,
    rst,
    enq,
    in,
    deq,
    out,
    full,
    empty,
    an,
    seg);
  input clk;
  input rst;
  input enq;
  input [3:0]in;
  input deq;
  output [3:0]out;
  output full;
  output empty;
  output [2:0]an;
  output [3:0]seg;

  wire LCU0_n_10;
  wire LCU0_n_11;
  wire LCU0_n_12;
  wire LCU0_n_13;
  wire LCU0_n_2;
  wire LCU0_n_3;
  wire LCU0_n_7;
  wire LCU0_n_8;
  wire LCU0_n_9;
  wire [2:0]an;
  wire [2:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cnt;
  wire deq;
  wire deq_IBUF;
  wire empty;
  wire empty_OBUF;
  wire enq;
  wire enq_IBUF;
  wire full;
  wire [3:0]in;
  wire [3:0]in_IBUF;
  wire [3:0]out;
  wire pt;
  wire pt_0;
  wire [2:0]ra1;
  wire register_file_8x4_0_n_0;
  wire register_file_8x4_0_n_1;
  wire register_file_8x4_0_n_2;
  wire register_file_8x4_0_n_3;
  wire rst;
  wire rst_IBUF;
  wire s;
  wire s_1;
  wire [3:0]seg;
  wire [3:0]seg_OBUF;
  wire sel;
  wire [2:0]wa;
  wire [3:0]wd;

initial begin
 $sdf_annotate("sim_FIFO_time_synth.sdf",,,,"tool_control");
end
  LCU LCU0
       (.D(in_IBUF),
        .E(LCU0_n_3),
        .Q(wd),
        .\WP_reg[2]_0 (LCU0_n_2),
        .an_OBUF(an_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cnt(cnt),
        .empty_OBUF(empty_OBUF),
        .pt(pt),
        .pt_0(pt_0),
        .rst_IBUF(rst_IBUF),
        .s(s),
        .s_1(s_1),
        .sel(sel),
        .wa(wa),
        .\wa_reg[0]_0 (LCU0_n_13),
        .we_reg_0(LCU0_n_7),
        .we_reg_1(LCU0_n_8),
        .we_reg_2(LCU0_n_9),
        .we_reg_3(LCU0_n_10),
        .we_reg_4(LCU0_n_11),
        .we_reg_5(LCU0_n_12));
  SDU SDU0
       (.D({register_file_8x4_0_n_0,register_file_8x4_0_n_1,register_file_8x4_0_n_2,register_file_8x4_0_n_3}),
        .Q(seg_OBUF),
        .an_OBUF(an_OBUF),
        .\an_reg[2]_0 (LCU0_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cnt(cnt),
        .ra1(ra1),
        .sel(sel));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF deq_IBUF_inst
       (.I(deq),
        .O(deq_IBUF));
  edge_taker deq_edge_taker
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .deq_IBUF(deq_IBUF),
        .pt(pt),
        .s(s));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  IBUF enq_IBUF_inst
       (.I(enq),
        .O(enq_IBUF));
  edge_taker_0 enq_edge_taker
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .enq_IBUF(enq_IBUF),
        .pt(pt_0),
        .s(s_1));
  OBUF full_OBUF_inst
       (.I(1'b0),
        .O(full));
  IBUF \in_IBUF[0]_inst 
       (.I(in[0]),
        .O(in_IBUF[0]));
  IBUF \in_IBUF[1]_inst 
       (.I(in[1]),
        .O(in_IBUF[1]));
  IBUF \in_IBUF[2]_inst 
       (.I(in[2]),
        .O(in_IBUF[2]));
  IBUF \in_IBUF[3]_inst 
       (.I(in[3]),
        .O(in_IBUF[3]));
  OBUFT \out_OBUF[0]_inst 
       (.I(1'b0),
        .O(out[0]),
        .T(1'b1));
  OBUFT \out_OBUF[1]_inst 
       (.I(1'b0),
        .O(out[1]),
        .T(1'b1));
  OBUFT \out_OBUF[2]_inst 
       (.I(1'b0),
        .O(out[2]),
        .T(1'b1));
  OBUFT \out_OBUF[3]_inst 
       (.I(1'b0),
        .O(out[3]),
        .T(1'b1));
  register_file_8x4 register_file_8x4_0
       (.D(wd),
        .E(LCU0_n_3),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ra1(ra1),
        .\ra1_reg[2] ({register_file_8x4_0_n_0,register_file_8x4_0_n_1,register_file_8x4_0_n_2,register_file_8x4_0_n_3}),
        .\regfile_reg[0][0]_0 (LCU0_n_13),
        .\regfile_reg[2][3]_0 (LCU0_n_7),
        .\regfile_reg[3][3]_0 (LCU0_n_8),
        .\regfile_reg[4][3]_0 (LCU0_n_9),
        .\regfile_reg[5][3]_0 (LCU0_n_10),
        .\regfile_reg[6][3]_0 (LCU0_n_11),
        .\regfile_reg[7][3]_0 (LCU0_n_12),
        .wa(wa));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
endmodule

module LCU
   (empty_OBUF,
    cnt,
    \WP_reg[2]_0 ,
    E,
    wa,
    we_reg_0,
    we_reg_1,
    we_reg_2,
    we_reg_3,
    we_reg_4,
    we_reg_5,
    \wa_reg[0]_0 ,
    Q,
    rst_IBUF,
    clk_IBUF_BUFG,
    sel,
    an_OBUF,
    s,
    pt,
    pt_0,
    s_1,
    D);
  output empty_OBUF;
  output cnt;
  output \WP_reg[2]_0 ;
  output [0:0]E;
  output [2:0]wa;
  output [0:0]we_reg_0;
  output [0:0]we_reg_1;
  output [0:0]we_reg_2;
  output [0:0]we_reg_3;
  output [0:0]we_reg_4;
  output [0:0]we_reg_5;
  output \wa_reg[0]_0 ;
  output [3:0]Q;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input sel;
  input [2:0]an_OBUF;
  input s;
  input pt;
  input pt_0;
  input s_1;
  input [3:0]D;

  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [2:0]WP;
  wire \WP[0]_i_1_n_0 ;
  wire \WP[1]_i_1_n_0 ;
  wire \WP[2]_i_1_n_0 ;
  wire \WP_reg[2]_0 ;
  wire [2:0]an_OBUF;
  wire clk_IBUF_BUFG;
  wire cnt;
  wire \cnt[0]_i_4_n_0 ;
  wire empty_OBUF;
  wire empty_i_1_n_0;
  wire pt;
  wire pt_0;
  wire rst_IBUF;
  wire s;
  wire s_1;
  wire sel;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [7:0]valid;
  wire \valid[0]_i_1_n_0 ;
  wire \valid[1]_i_1_n_0 ;
  wire \valid[2]_i_1_n_0 ;
  wire \valid[3]_i_1_n_0 ;
  wire \valid[4]_i_1_n_0 ;
  wire \valid[5]_i_1_n_0 ;
  wire \valid[6]_i_1_n_0 ;
  wire \valid[7]_i_1_n_0 ;
  wire [2:0]wa;
  wire \wa[0]_i_1_n_0 ;
  wire \wa[1]_i_1_n_0 ;
  wire \wa[2]_i_1_n_0 ;
  wire \wa_reg[0]_0 ;
  wire \wd[3]_i_1_n_0 ;
  wire we;
  wire we_i_1_n_0;
  wire [0:0]we_reg_0;
  wire [0:0]we_reg_1;
  wire [0:0]we_reg_2;
  wire [0:0]we_reg_3;
  wire [0:0]we_reg_4;
  wire [0:0]we_reg_5;

  LUT3 #(
    .INIT(8'h78)) 
    \WP[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(WP[0]),
        .O(\WP[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \WP[1]_i_1 
       (.I0(WP[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(WP[1]),
        .O(\WP[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \WP[2]_i_1 
       (.I0(WP[1]),
        .I1(WP[0]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(WP[2]),
        .O(\WP[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WP_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\WP[0]_i_1_n_0 ),
        .Q(WP[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \WP_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\WP[1]_i_1_n_0 ),
        .Q(WP[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \WP_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\WP[2]_i_1_n_0 ),
        .Q(WP[2]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'hF7FDFBFEFF7FDFBF)) 
    \an[2]_i_2 
       (.I0(WP[2]),
        .I1(WP[1]),
        .I2(an_OBUF[0]),
        .I3(an_OBUF[1]),
        .I4(an_OBUF[2]),
        .I5(WP[0]),
        .O(\WP_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \cnt[0]_i_1 
       (.I0(\cnt[0]_i_4_n_0 ),
        .I1(valid[1]),
        .I2(valid[3]),
        .I3(valid[4]),
        .I4(valid[6]),
        .I5(sel),
        .O(cnt));
  LUT4 #(
    .INIT(16'h0001)) 
    \cnt[0]_i_4 
       (.I0(valid[5]),
        .I1(valid[7]),
        .I2(valid[0]),
        .I3(valid[2]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    empty_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .O(empty_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(clk_IBUF_BUFG),
        .CE(empty_i_1_n_0),
        .D(1'b0),
        .Q(empty_OBUF),
        .S(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \regfile[0][3]_i_1 
       (.I0(wa[0]),
        .I1(wa[2]),
        .I2(wa[1]),
        .I3(we),
        .O(\wa_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \regfile[1][3]_i_1 
       (.I0(we),
        .I1(wa[1]),
        .I2(wa[2]),
        .I3(wa[0]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \regfile[2][3]_i_1 
       (.I0(we),
        .I1(wa[2]),
        .I2(wa[0]),
        .I3(wa[1]),
        .O(we_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \regfile[3][3]_i_1 
       (.I0(we),
        .I1(wa[1]),
        .I2(wa[0]),
        .I3(wa[2]),
        .O(we_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \regfile[4][3]_i_1 
       (.I0(we),
        .I1(wa[1]),
        .I2(wa[0]),
        .I3(wa[2]),
        .O(we_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \regfile[5][3]_i_1 
       (.I0(we),
        .I1(wa[2]),
        .I2(wa[0]),
        .I3(wa[1]),
        .O(we_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \regfile[6][3]_i_1 
       (.I0(we),
        .I1(wa[1]),
        .I2(wa[2]),
        .I3(wa[0]),
        .O(we_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \regfile[7][3]_i_1 
       (.I0(we),
        .I1(wa[2]),
        .I2(wa[0]),
        .I3(wa[1]),
        .O(we_reg_5));
  LUT6 #(
    .INIT(64'hAA0A7777AA0AAA0A)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(s),
        .I3(pt),
        .I4(pt_0),
        .I5(s_1),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4404777744044404)) 
    \state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(s),
        .I3(pt),
        .I4(pt_0),
        .I5(s_1),
        .O(\state[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000040)) 
    \valid[0]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(WP[0]),
        .I4(WP[1]),
        .I5(valid[0]),
        .O(\valid[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \valid[1]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(WP[0]),
        .I4(WP[1]),
        .I5(valid[1]),
        .O(\valid[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \valid[2]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(WP[1]),
        .I4(WP[0]),
        .I5(valid[2]),
        .O(\valid[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \valid[3]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(WP[0]),
        .I4(WP[1]),
        .I5(valid[3]),
        .O(\valid[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \valid[4]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(WP[0]),
        .I4(WP[1]),
        .I5(valid[4]),
        .O(\valid[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \valid[5]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(WP[0]),
        .I4(WP[1]),
        .I5(valid[5]),
        .O(\valid[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \valid[6]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(WP[1]),
        .I4(WP[0]),
        .I5(valid[6]),
        .O(\valid[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \valid[7]_i_1 
       (.I0(WP[1]),
        .I1(WP[0]),
        .I2(WP[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(valid[7]),
        .O(\valid[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[0]_i_1_n_0 ),
        .Q(valid[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[1]_i_1_n_0 ),
        .Q(valid[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[2]_i_1_n_0 ),
        .Q(valid[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[3]_i_1_n_0 ),
        .Q(valid[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[4]_i_1_n_0 ),
        .Q(valid[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[5]_i_1_n_0 ),
        .Q(valid[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[6]_i_1_n_0 ),
        .Q(valid[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \valid_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\valid[7]_i_1_n_0 ),
        .Q(valid[7]),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \wa[0]_i_1 
       (.I0(WP[0]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(rst_IBUF),
        .I4(wa[0]),
        .O(\wa[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \wa[1]_i_1 
       (.I0(WP[1]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(rst_IBUF),
        .I4(wa[1]),
        .O(\wa[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \wa[2]_i_1 
       (.I0(WP[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(rst_IBUF),
        .I4(wa[2]),
        .O(\wa[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\wa[0]_i_1_n_0 ),
        .Q(wa[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\wa[1]_i_1_n_0 ),
        .Q(wa[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wa_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\wa[2]_i_1_n_0 ),
        .Q(wa[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \wd[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rst_IBUF),
        .O(\wd[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\wd[3]_i_1_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\wd[3]_i_1_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\wd[3]_i_1_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wd_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\wd[3]_i_1_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    we_i_1
       (.I0(we),
        .I1(rst_IBUF),
        .I2(state[1]),
        .I3(state[0]),
        .O(we_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    we_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(we_i_1_n_0),
        .Q(we),
        .R(1'b0));
endmodule

module SDU
   (sel,
    an_OBUF,
    ra1,
    Q,
    cnt,
    clk_IBUF_BUFG,
    \an_reg[2]_0 ,
    D);
  output sel;
  output [2:0]an_OBUF;
  output [2:0]ra1;
  output [3:0]Q;
  input cnt;
  input clk_IBUF_BUFG;
  input \an_reg[2]_0 ;
  input [3:0]D;

  wire [3:0]D;
  wire [3:0]Q;
  wire \an[0]_i_1_n_0 ;
  wire \an[0]_i_2_n_0 ;
  wire \an[0]_i_3_n_0 ;
  wire \an[1]_i_1_n_0 ;
  wire \an[1]_i_2_n_0 ;
  wire \an[1]_i_3_n_0 ;
  wire \an[1]_i_4_n_0 ;
  wire \an[2]_i_1_n_0 ;
  wire \an[2]_i_3_n_0 ;
  wire \an[2]_i_4_n_0 ;
  wire \an[2]_i_5_n_0 ;
  wire \an[2]_i_6_n_0 ;
  wire \an[2]_i_7_n_0 ;
  wire \an[2]_i_8_n_0 ;
  wire [2:0]an_OBUF;
  wire \an_reg[2]_0 ;
  wire clk_IBUF_BUFG;
  wire cnt;
  wire \cnt[0]_i_10_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire \cnt[0]_i_8_n_0 ;
  wire \cnt[0]_i_9_n_0 ;
  wire [31:0]cnt_reg;
  wire \cnt_reg[0]_i_3_n_0 ;
  wire \cnt_reg[0]_i_3_n_1 ;
  wire \cnt_reg[0]_i_3_n_2 ;
  wire \cnt_reg[0]_i_3_n_3 ;
  wire \cnt_reg[0]_i_3_n_4 ;
  wire \cnt_reg[0]_i_3_n_5 ;
  wire \cnt_reg[0]_i_3_n_6 ;
  wire \cnt_reg[0]_i_3_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_0 ;
  wire \cnt_reg[24]_i_1_n_1 ;
  wire \cnt_reg[24]_i_1_n_2 ;
  wire \cnt_reg[24]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_4 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[28]_i_1_n_1 ;
  wire \cnt_reg[28]_i_1_n_2 ;
  wire \cnt_reg[28]_i_1_n_3 ;
  wire \cnt_reg[28]_i_1_n_4 ;
  wire \cnt_reg[28]_i_1_n_5 ;
  wire \cnt_reg[28]_i_1_n_6 ;
  wire \cnt_reg[28]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire [2:0]ra1;
  wire \ra1[0]_i_1_n_0 ;
  wire \ra1[1]_i_1_n_0 ;
  wire \ra1[2]_i_1_n_0 ;
  wire sel;
  wire [3:3]\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA4A)) 
    \an[0]_i_1 
       (.I0(an_OBUF[0]),
        .I1(\an_reg[2]_0 ),
        .I2(\an[2]_i_3_n_0 ),
        .I3(\an[0]_i_2_n_0 ),
        .I4(\an[0]_i_3_n_0 ),
        .I5(\an[1]_i_3_n_0 ),
        .O(\an[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \an[0]_i_2 
       (.I0(cnt_reg[25]),
        .I1(cnt_reg[31]),
        .I2(cnt_reg[27]),
        .I3(cnt_reg[29]),
        .I4(\cnt[0]_i_9_n_0 ),
        .O(\an[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \an[0]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[15]),
        .I2(cnt_reg[8]),
        .I3(cnt_reg[14]),
        .I4(\an[2]_i_8_n_0 ),
        .O(\an[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA60AA)) 
    \an[1]_i_1 
       (.I0(an_OBUF[1]),
        .I1(an_OBUF[0]),
        .I2(\an_reg[2]_0 ),
        .I3(\an[2]_i_3_n_0 ),
        .I4(\an[1]_i_2_n_0 ),
        .I5(\an[1]_i_3_n_0 ),
        .O(\an[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \an[1]_i_2 
       (.I0(\cnt[0]_i_9_n_0 ),
        .I1(\cnt[0]_i_8_n_0 ),
        .I2(\an[1]_i_4_n_0 ),
        .I3(cnt_reg[17]),
        .I4(cnt_reg[1]),
        .I5(\an[2]_i_7_n_0 ),
        .O(\an[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \an[1]_i_3 
       (.I0(cnt_reg[19]),
        .I1(cnt_reg[20]),
        .I2(cnt_reg[18]),
        .I3(cnt_reg[22]),
        .I4(cnt_reg[21]),
        .I5(cnt_reg[23]),
        .O(\an[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[1]_i_4 
       (.I0(cnt_reg[13]),
        .I1(cnt_reg[12]),
        .O(\an[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6A00AAAA)) 
    \an[2]_i_1 
       (.I0(an_OBUF[2]),
        .I1(an_OBUF[1]),
        .I2(an_OBUF[0]),
        .I3(\an_reg[2]_0 ),
        .I4(\an[2]_i_3_n_0 ),
        .I5(\an[2]_i_4_n_0 ),
        .O(\an[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \an[2]_i_3 
       (.I0(\an[2]_i_5_n_0 ),
        .I1(cnt_reg[7]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[16]),
        .I4(cnt_reg[3]),
        .I5(\an[2]_i_6_n_0 ),
        .O(\an[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \an[2]_i_4 
       (.I0(\an[1]_i_3_n_0 ),
        .I1(\an[2]_i_7_n_0 ),
        .I2(\an[2]_i_8_n_0 ),
        .I3(\cnt[0]_i_8_n_0 ),
        .I4(\cnt[0]_i_9_n_0 ),
        .O(\an[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \an[2]_i_5 
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[5]),
        .O(\an[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \an[2]_i_6 
       (.I0(cnt_reg[9]),
        .I1(cnt_reg[11]),
        .I2(cnt_reg[10]),
        .O(\an[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \an[2]_i_7 
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[8]),
        .I2(cnt_reg[15]),
        .I3(cnt_reg[2]),
        .O(\an[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \an[2]_i_8 
       (.I0(cnt_reg[12]),
        .I1(cnt_reg[13]),
        .I2(cnt_reg[17]),
        .I3(cnt_reg[1]),
        .O(\an[2]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\an[0]_i_1_n_0 ),
        .Q(an_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\an[1]_i_1_n_0 ),
        .Q(an_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\an[2]_i_1_n_0 ),
        .Q(an_OBUF[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_10 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F1)) 
    \cnt[0]_i_2 
       (.I0(\cnt[0]_i_5_n_0 ),
        .I1(\cnt[0]_i_6_n_0 ),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(\cnt[0]_i_8_n_0 ),
        .I4(\cnt[0]_i_9_n_0 ),
        .I5(\an[1]_i_3_n_0 ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[7]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[6]),
        .O(\cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[0]_i_6 
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[11]),
        .I2(cnt_reg[9]),
        .I3(cnt_reg[13]),
        .I4(cnt_reg[8]),
        .O(\cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \cnt[0]_i_7 
       (.I0(cnt_reg[12]),
        .I1(cnt_reg[13]),
        .I2(cnt_reg[14]),
        .I3(cnt_reg[16]),
        .I4(cnt_reg[15]),
        .I5(cnt_reg[17]),
        .O(\cnt[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[0]_i_8 
       (.I0(cnt_reg[29]),
        .I1(cnt_reg[27]),
        .I2(cnt_reg[31]),
        .I3(cnt_reg[25]),
        .O(\cnt[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[0]_i_9 
       (.I0(cnt_reg[30]),
        .I1(cnt_reg[28]),
        .I2(cnt_reg[26]),
        .I3(cnt_reg[24]),
        .O(\cnt[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[0]_i_3_n_7 ),
        .Q(cnt_reg[0]),
        .R(cnt));
  CARRY4 \cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_3_n_0 ,\cnt_reg[0]_i_3_n_1 ,\cnt_reg[0]_i_3_n_2 ,\cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_3_n_4 ,\cnt_reg[0]_i_3_n_5 ,\cnt_reg[0]_i_3_n_6 ,\cnt_reg[0]_i_3_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(cnt));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(cnt));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S(cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[0]_i_3_n_6 ),
        .Q(cnt_reg[1]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(cnt_reg[20]),
        .R(cnt));
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S(cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(cnt_reg[22]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(cnt_reg[23]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(cnt_reg[24]),
        .R(cnt));
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO({\cnt_reg[24]_i_1_n_0 ,\cnt_reg[24]_i_1_n_1 ,\cnt_reg[24]_i_1_n_2 ,\cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_1_n_4 ,\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .S(cnt_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_6 ),
        .Q(cnt_reg[25]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_5 ),
        .Q(cnt_reg[26]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_4 ),
        .Q(cnt_reg[27]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[28]_i_1_n_7 ),
        .Q(cnt_reg[28]),
        .R(cnt));
  CARRY4 \cnt_reg[28]_i_1 
       (.CI(\cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_reg[28]_i_1_n_1 ,\cnt_reg[28]_i_1_n_2 ,\cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_1_n_4 ,\cnt_reg[28]_i_1_n_5 ,\cnt_reg[28]_i_1_n_6 ,\cnt_reg[28]_i_1_n_7 }),
        .S(cnt_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[28]_i_1_n_6 ),
        .Q(cnt_reg[29]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[0]_i_3_n_5 ),
        .Q(cnt_reg[2]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[28]_i_1_n_5 ),
        .Q(cnt_reg[30]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[28]_i_1_n_4 ),
        .Q(cnt_reg[31]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[0]_i_3_n_4 ),
        .Q(cnt_reg[3]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(cnt));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_3_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(cnt));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(cnt));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \ra1[0]_i_1 
       (.I0(an_OBUF[0]),
        .I1(\an[2]_i_3_n_0 ),
        .I2(\an[0]_i_2_n_0 ),
        .I3(\an[0]_i_3_n_0 ),
        .I4(\an[1]_i_3_n_0 ),
        .I5(ra1[0]),
        .O(\ra1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \ra1[1]_i_1 
       (.I0(an_OBUF[1]),
        .I1(\an[2]_i_3_n_0 ),
        .I2(\an[0]_i_2_n_0 ),
        .I3(\an[0]_i_3_n_0 ),
        .I4(\an[1]_i_3_n_0 ),
        .I5(ra1[1]),
        .O(\ra1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \ra1[2]_i_1 
       (.I0(an_OBUF[2]),
        .I1(\an[2]_i_3_n_0 ),
        .I2(\an[0]_i_2_n_0 ),
        .I3(\an[0]_i_3_n_0 ),
        .I4(\an[1]_i_3_n_0 ),
        .I5(ra1[2]),
        .O(\ra1[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ra1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ra1[0]_i_1_n_0 ),
        .Q(ra1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ra1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ra1[1]_i_1_n_0 ),
        .Q(ra1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ra1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\ra1[2]_i_1_n_0 ),
        .Q(ra1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module edge_taker
   (s,
    pt,
    deq_IBUF,
    clk_IBUF_BUFG);
  output s;
  output pt;
  input deq_IBUF;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire deq_IBUF;
  wire pt;
  wire s;
  wire st_reg_n_0;

  FDRE #(
    .INIT(1'b0)) 
    pt_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s),
        .Q(pt),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(st_reg_n_0),
        .Q(s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(deq_IBUF),
        .Q(st_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_taker" *) 
module edge_taker_0
   (s,
    pt,
    enq_IBUF,
    clk_IBUF_BUFG);
  output s;
  output pt;
  input enq_IBUF;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire enq_IBUF;
  wire pt;
  wire s;
  wire st;

  FDRE #(
    .INIT(1'b0)) 
    pt_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s),
        .Q(pt),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(st),
        .Q(s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(enq_IBUF),
        .Q(st),
        .R(1'b0));
endmodule

module register_file_8x4
   (\ra1_reg[2] ,
    wa,
    \regfile_reg[0][0]_0 ,
    D,
    clk_IBUF_BUFG,
    E,
    \regfile_reg[2][3]_0 ,
    \regfile_reg[3][3]_0 ,
    \regfile_reg[4][3]_0 ,
    \regfile_reg[5][3]_0 ,
    \regfile_reg[6][3]_0 ,
    \regfile_reg[7][3]_0 ,
    ra1);
  output [3:0]\ra1_reg[2] ;
  input [2:0]wa;
  input \regfile_reg[0][0]_0 ;
  input [3:0]D;
  input clk_IBUF_BUFG;
  input [0:0]E;
  input [0:0]\regfile_reg[2][3]_0 ;
  input [0:0]\regfile_reg[3][3]_0 ;
  input [0:0]\regfile_reg[4][3]_0 ;
  input [0:0]\regfile_reg[5][3]_0 ;
  input [0:0]\regfile_reg[6][3]_0 ;
  input [0:0]\regfile_reg[7][3]_0 ;
  input [2:0]ra1;

  wire [3:0]D;
  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire [2:0]ra1;
  wire [3:0]\ra1_reg[2] ;
  wire regfile;
  wire \regfile_inferred__0/seg[0]_i_2_n_0 ;
  wire \regfile_inferred__0/seg[0]_i_3_n_0 ;
  wire \regfile_inferred__0/seg[1]_i_2_n_0 ;
  wire \regfile_inferred__0/seg[1]_i_3_n_0 ;
  wire \regfile_inferred__0/seg[2]_i_2_n_0 ;
  wire \regfile_inferred__0/seg[2]_i_3_n_0 ;
  wire \regfile_inferred__0/seg[3]_i_2_n_0 ;
  wire \regfile_inferred__0/seg[3]_i_3_n_0 ;
  wire [3:0]\regfile_reg[0] ;
  wire \regfile_reg[0][0]_0 ;
  wire [3:0]\regfile_reg[1] ;
  wire [3:0]\regfile_reg[2] ;
  wire [0:0]\regfile_reg[2][3]_0 ;
  wire [3:0]\regfile_reg[3] ;
  wire [0:0]\regfile_reg[3][3]_0 ;
  wire [3:0]\regfile_reg[4] ;
  wire [0:0]\regfile_reg[4][3]_0 ;
  wire [3:0]\regfile_reg[5] ;
  wire [0:0]\regfile_reg[5][3]_0 ;
  wire [3:0]\regfile_reg[6] ;
  wire [0:0]\regfile_reg[6][3]_0 ;
  wire [3:0]\regfile_reg[7] ;
  wire [0:0]\regfile_reg[7][3]_0 ;
  wire [2:0]wa;

  LUT3 #(
    .INIT(8'h01)) 
    \__0/i_ 
       (.I0(wa[2]),
        .I1(wa[0]),
        .I2(wa[1]),
        .O(regfile));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[0]_i_2 
       (.I0(\regfile_reg[3] [0]),
        .I1(\regfile_reg[2] [0]),
        .I2(ra1[1]),
        .I3(\regfile_reg[1] [0]),
        .I4(ra1[0]),
        .I5(\regfile_reg[0] [0]),
        .O(\regfile_inferred__0/seg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[0]_i_3 
       (.I0(\regfile_reg[7] [0]),
        .I1(\regfile_reg[6] [0]),
        .I2(ra1[1]),
        .I3(\regfile_reg[5] [0]),
        .I4(ra1[0]),
        .I5(\regfile_reg[4] [0]),
        .O(\regfile_inferred__0/seg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[1]_i_2 
       (.I0(\regfile_reg[3] [1]),
        .I1(\regfile_reg[2] [1]),
        .I2(ra1[1]),
        .I3(\regfile_reg[1] [1]),
        .I4(ra1[0]),
        .I5(\regfile_reg[0] [1]),
        .O(\regfile_inferred__0/seg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[1]_i_3 
       (.I0(\regfile_reg[7] [1]),
        .I1(\regfile_reg[6] [1]),
        .I2(ra1[1]),
        .I3(\regfile_reg[5] [1]),
        .I4(ra1[0]),
        .I5(\regfile_reg[4] [1]),
        .O(\regfile_inferred__0/seg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[2]_i_2 
       (.I0(\regfile_reg[3] [2]),
        .I1(\regfile_reg[2] [2]),
        .I2(ra1[1]),
        .I3(\regfile_reg[1] [2]),
        .I4(ra1[0]),
        .I5(\regfile_reg[0] [2]),
        .O(\regfile_inferred__0/seg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[2]_i_3 
       (.I0(\regfile_reg[7] [2]),
        .I1(\regfile_reg[6] [2]),
        .I2(ra1[1]),
        .I3(\regfile_reg[5] [2]),
        .I4(ra1[0]),
        .I5(\regfile_reg[4] [2]),
        .O(\regfile_inferred__0/seg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[3]_i_2 
       (.I0(\regfile_reg[3] [3]),
        .I1(\regfile_reg[2] [3]),
        .I2(ra1[1]),
        .I3(\regfile_reg[1] [3]),
        .I4(ra1[0]),
        .I5(\regfile_reg[0] [3]),
        .O(\regfile_inferred__0/seg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \regfile_inferred__0/seg[3]_i_3 
       (.I0(\regfile_reg[7] [3]),
        .I1(\regfile_reg[6] [3]),
        .I2(ra1[1]),
        .I3(\regfile_reg[5] [3]),
        .I4(ra1[0]),
        .I5(\regfile_reg[4] [3]),
        .O(\regfile_inferred__0/seg[3]_i_3_n_0 ));
  MUXF7 \regfile_inferred__0/seg_reg[0]_i_1 
       (.I0(\regfile_inferred__0/seg[0]_i_2_n_0 ),
        .I1(\regfile_inferred__0/seg[0]_i_3_n_0 ),
        .O(\ra1_reg[2] [0]),
        .S(ra1[2]));
  MUXF7 \regfile_inferred__0/seg_reg[1]_i_1 
       (.I0(\regfile_inferred__0/seg[1]_i_2_n_0 ),
        .I1(\regfile_inferred__0/seg[1]_i_3_n_0 ),
        .O(\ra1_reg[2] [1]),
        .S(ra1[2]));
  MUXF7 \regfile_inferred__0/seg_reg[2]_i_1 
       (.I0(\regfile_inferred__0/seg[2]_i_2_n_0 ),
        .I1(\regfile_inferred__0/seg[2]_i_3_n_0 ),
        .O(\ra1_reg[2] [2]),
        .S(ra1[2]));
  MUXF7 \regfile_inferred__0/seg_reg[3]_i_1 
       (.I0(\regfile_inferred__0/seg[3]_i_2_n_0 ),
        .I1(\regfile_inferred__0/seg[3]_i_3_n_0 ),
        .O(\ra1_reg[2] [3]),
        .S(ra1[2]));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(regfile),
        .D(D[0]),
        .Q(\regfile_reg[0] [0]),
        .R(\regfile_reg[0][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(regfile),
        .D(D[1]),
        .Q(\regfile_reg[0] [1]),
        .R(\regfile_reg[0][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(regfile),
        .D(D[2]),
        .Q(\regfile_reg[0] [2]),
        .R(\regfile_reg[0][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(regfile),
        .D(D[3]),
        .Q(\regfile_reg[0] [3]),
        .R(\regfile_reg[0][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(\regfile_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(\regfile_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(\regfile_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(\regfile_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[2][3]_0 ),
        .D(D[0]),
        .Q(\regfile_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[2][3]_0 ),
        .D(D[1]),
        .Q(\regfile_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[2][3]_0 ),
        .D(D[2]),
        .Q(\regfile_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[2][3]_0 ),
        .D(D[3]),
        .Q(\regfile_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[3][3]_0 ),
        .D(D[0]),
        .Q(\regfile_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[3][3]_0 ),
        .D(D[1]),
        .Q(\regfile_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[3][3]_0 ),
        .D(D[2]),
        .Q(\regfile_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[3][3]_0 ),
        .D(D[3]),
        .Q(\regfile_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[4][3]_0 ),
        .D(D[0]),
        .Q(\regfile_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[4][3]_0 ),
        .D(D[1]),
        .Q(\regfile_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[4][3]_0 ),
        .D(D[2]),
        .Q(\regfile_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[4][3]_0 ),
        .D(D[3]),
        .Q(\regfile_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[5][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[5][3]_0 ),
        .D(D[0]),
        .Q(\regfile_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[5][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[5][3]_0 ),
        .D(D[1]),
        .Q(\regfile_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[5][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[5][3]_0 ),
        .D(D[2]),
        .Q(\regfile_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[5][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[5][3]_0 ),
        .D(D[3]),
        .Q(\regfile_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[6][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[6][3]_0 ),
        .D(D[0]),
        .Q(\regfile_reg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[6][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[6][3]_0 ),
        .D(D[1]),
        .Q(\regfile_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[6][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[6][3]_0 ),
        .D(D[2]),
        .Q(\regfile_reg[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[6][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[6][3]_0 ),
        .D(D[3]),
        .Q(\regfile_reg[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[7][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[7][3]_0 ),
        .D(D[0]),
        .Q(\regfile_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[7][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[7][3]_0 ),
        .D(D[1]),
        .Q(\regfile_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[7][2] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[7][3]_0 ),
        .D(D[2]),
        .Q(\regfile_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[7][3] 
       (.C(clk_IBUF_BUFG),
        .CE(\regfile_reg[7][3]_0 ),
        .D(D[3]),
        .Q(\regfile_reg[7] [3]),
        .R(1'b0));
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
