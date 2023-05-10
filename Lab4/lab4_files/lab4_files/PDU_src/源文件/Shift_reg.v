`timescale 1ns / 1ps

/* 
 *   Author: wintermelon
 *   Last update: 2023.04.02
 */


// Lab3's answer is here~
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

    localparam TIME_100MS = 10000000;
    reg [25:0] cnt_100ms;
    reg enable_flag;

    initial begin   
        enable_flag <= 1;
        cnt_100ms <= 0;
        dout <= 0;
    end


    always @(posedge clk) begin
        if (rst)
            dout <= 0;   
        else if (enable_flag) begin
            if (set) 
                dout <= din;
            else if (add)        
                dout <= {{dout[27:0]}, {hex}};
            else if (del)          
                dout <= {{4'b0}, {dout[31:4]}};          
        end
    end

    // 100ms Refractory period
    always @(posedge clk) begin
        if (rst)
            enable_flag <= 1;
        else begin
            if (set || add || del)
                enable_flag <= 0;
            else if (cnt_100ms == TIME_100MS - 1) 
                enable_flag <= 1;
        end
    end

    always @(posedge clk) begin
        if (rst)
            cnt_100ms <= 0;
        else begin
            if (enable_flag == 1)
                cnt_100ms <= 0;
            else if (cnt_100ms > TIME_100MS - 1) 
                cnt_100ms <= 0;
            else
                cnt_100ms <= cnt_100ms + 1;

        end
    end

endmodule

