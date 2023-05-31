`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.05.03
 */

// This is a simple 2-1 Mux.
/* Ports
    Mux2 #(32) my_mux (
        .mux_sr1(),
        .mux_sr2(),
        .mux_ctrl(),

        .mux_out()
    );
*/

module Mux2 #(WIDTH = 32) (
    input [WIDTH-1: 0]          mux_sr1,
    input [WIDTH-1: 0]          mux_sr2,
    input                       mux_ctrl,

    output reg [WIDTH-1: 0]     mux_out
);  

    always @(*) begin
        case (mux_ctrl)
            1'b0: mux_out = mux_sr1;
            1'b1: mux_out = mux_sr2;
        endcase // We don't need default here
    end

endmodule