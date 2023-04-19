`timescale 1ns / 1ps

module edge_taker
( input clk,
input a,
output p
);
reg st,pt,s;

always@(posedge clk)
    st <= a;

always@(posedge clk)
    s <= st;

always@(posedge clk)
    pt <= s;

assign p = ~pt & s;
endmodule
