`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.05.03
 */

// This is a simple 4-1 Mux.
/* Ports
    Mux4 #(32) my_mux (
        .mux_sr1(),
        .mux_sr2(),
        .mux_sr3(),
        .mux_sr4(),
        .mux_ctrl(),

        .mux_out()
    );
*/

module Mux2 #(WIDTH = 32) (
    input [WIDTH-1: 0]          mux_sr1,
    input [WIDTH-1: 0]          mux_sr2,
    input [WIDTH-1: 0]          mux_sr3,
    input [WIDTH-1: 0]          mux_sr4,
    input [1:0]                 mux_ctrl,

    output reg [WIDTH-1: 0]     mux_out
);  

    always @(*) begin
        case (mux_ctrl)
            2'b00: mux_out = mux_sr1;
            2'b01: mux_out = mux_sr2;
            2'b10: mux_out = mux_sr3;
            2'b11: mux_out = mux_sr4;
        endcase // We don't need default here
    end

endmodule