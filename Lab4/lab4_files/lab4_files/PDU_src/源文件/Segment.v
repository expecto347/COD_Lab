`timescale 1ns / 1ps

/* 
 *   Author: wintermelon
 *   Last update: 2023.04.02
 */

module Segment(
    input clk,
    input rst,

    input [31:0] data,      // The data ready to output
    output reg [2:0] seg_an,    // Connecting segments display
    output reg [3:0] seg_data    // Connecting segments display
);

    reg [25:0] cnt_2ms;
    localparam TIME_2MS = 200000;
    localparam SEG_NUM = 8;

    initial begin   // Used in simulation
        seg_an <= 0;
        cnt_2ms <= 0;
    end

    always @(posedge clk) begin
        if (rst) begin
            cnt_2ms <= 0;
        end
        else begin
            if (cnt_2ms > TIME_2MS - 1) 
                cnt_2ms = 0;
            else 
                cnt_2ms <= cnt_2ms + 1;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            seg_an <= 0;
        end
        else begin
            if (cnt_2ms == TIME_2MS - 1) begin
                if (seg_an == SEG_NUM - 1)
                    seg_an <= 0;
                else
                    seg_an <= seg_an + 1;    
            end
        end
    end
    
    always @(*) begin
        case (seg_an)
            'd0: begin seg_data = data[3:0]; end
            'd1: begin seg_data = data[7:4]; end
            'd2: begin seg_data = data[11:8]; end
            'd3: begin seg_data = data[15:12]; end
            'd4: begin seg_data = data[19:16]; end
            'd5: begin seg_data = data[23:20]; end
            'd6: begin seg_data = data[27:24]; end
            'd7: begin seg_data = data[31:28]; end
        endcase   
    end


endmodule
