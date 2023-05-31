`timescale 1ns / 1ps

/* 
 *   Author: wintermelon
 *   Last update: 2023.04.02
 */

module Ded(
    input clk,
    input rst,

    input [7:0] sw,            // The switches 
    output reg [3:0] hex,      // The code
    output reg add,            // When any switches change, there will be a high-level pulse for one clock cycle.
    output reg del
);

    reg [7:0] sw_change;
    reg [7:0] sw_1, sw_2, sw_3;
    wire [1:0] sw_status;

    assign sw_status = sw[6:5];

    always @(posedge clk) begin
        if (rst) begin
            sw_1 <= 0;
            sw_2 <= 0;
            sw_3 <= 0;
        end
        else begin
            sw_1 <= sw;
            sw_2 <= sw_1;
            sw_3 <= sw_2;
        end
    end

    always @(*) begin
        sw_change[0] = (sw_3[0] ^ sw_2[0]);
        sw_change[1] = (sw_3[1] ^ sw_2[1]);
        sw_change[2] = (sw_3[2] ^ sw_2[2]);
        sw_change[3] = (sw_3[3] ^ sw_2[3]);
        sw_change[4] = (sw_3[4] ^ sw_2[4]);
        sw_change[5] = (sw_3[5] ^ sw_2[5]);
        sw_change[6] = (sw_3[6] ^ sw_2[6]);
        sw_change[7] = (sw_3[7] ^ sw_2[7]);
    end

    always @(*) begin
        hex = 0;
        case (sw_status)
            2'b00: begin 
                if (sw_change[0] == 1)
                    hex = 4'h0;
                else if (sw_change[1] == 1)
                    hex = 4'h1;
                else if (sw_change[2] == 1)
                    hex = 4'h2;
                else if (sw_change[3] == 1)
                    hex = 4'h3;
                else if (sw_change[4] == 1)
                    hex = 4'h4;
            end
            2'b01: begin 
                if (sw_change[0] == 1)
                    hex = 4'h5;
                else if (sw_change[1] == 1)
                    hex = 4'h6;
                else if (sw_change[2] == 1)
                    hex = 4'h7;
                else if (sw_change[3] == 1)
                    hex = 4'h8;
                else if (sw_change[4] == 1)
                    hex = 4'h9;
            end
            2'b10: begin
                if (sw_change[0] == 1)
                    hex = 4'ha;
                else if (sw_change[1] == 1)
                    hex = 4'hb;
                else if (sw_change[2] == 1)
                    hex = 4'hc;
                else if (sw_change[3] == 1)
                    hex = 4'hd;
                else if (sw_change[4] == 1)
                    hex = 4'he;
            end
            2'b11: begin
                if (sw_change[0] == 1)
                    hex = 4'hf;
                else
                    hex = 4'h0;
            end
        endcase
    end

    always @(*) begin
        add = sw_change[0] || sw_change[1] || sw_change[2] || sw_change[3] || sw_change[4];
        del = sw_change[7];
    end

endmodule
