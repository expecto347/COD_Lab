`timescale 1ns / 1ps

module Shift_reg(
    input rst,
    input clk,          // Work at 100MHz clock

    input [31:0] din,   // Data input  
    input [3:0] hex,    // Hexadecimal code for the switches
    input add,          // Add signal
    input del,          // Delete signal
    input set,          // Set signal
    
    output reg [31:0] dout  // Data output
);

always @(posedge clk) begin
    if (rst)
        dout <= 32'b0;
    else if(set)
        dout <= din;
    else if(add) begin
        dout[31:4] <= dout[27:0];
        dout[3:0] <= hex;
    end
    else if(del)
        dout <= dout >> 4;
    else
        dout <= dout;    
end
endmodule

