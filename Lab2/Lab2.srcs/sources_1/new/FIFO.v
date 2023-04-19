`timescale 1ns / 1ps

module FIFO(
    input clk, rst,
    input enq,
    input [3:0] in,
    input deq,
    output [3:0] out,
    output full,empty,
    output [2:0] an,
    output [3:0] seg
);
wire [7:0] valid;
wire [2:0] RP,WP;
wire [2:0] ra0, ra1;
wire [3:0] rd0, rd1;
wire [2:0] wa;
wire we;
wire [3:0] wd;
wire enq_edge, deq_edge;

edge_taker enq_edge_taker(
    .clk(clk),
    .a(enq),
    .p(enq_edge)
);

edge_taker deq_edge_taker(
    .clk(clk),
    .a(deq),
    .p(deq_edge)
);

LCU LCU0(
    .clk(clk),
    .rst(rst),
    .in(in),
    .enq(enq_edge),
    .deq(deq_edge),
    .rd0(rd0),
    .ra0(ra0),
    .out(out),
    .full(full),
    .empty(empty),
    .valid(valid),
    .wa(wa),
    .wd(wd),
    .we(we),
    .RP(RP),
    .WP(WP)
);

SDU SDU0(
    .clk(clk),
    .rd1(rd1),
    .valid(valid),
    .RP(RP),
    .WP(WP),
    .ra1(ra1),
    .an(an),
    .seg(seg),
    .rst(rst)
);

register_file_8x4 register_file_8x4_0(
    .clk(clk),
    .ra0(ra0),
    .rd0(rd0),
    .ra1(ra1),
    .rd1(rd1),
    .wa(wa),
    .we(we),
    .wd(wd)
);
endmodule
