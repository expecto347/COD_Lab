`timescale 1ns / 1ps

/* 
 *   Adapted: wintermelon
 *   Last update: 2023.04.02
 */


module Receive(
    input clk,
    input rst,

    input din,
    output reg din_vld,  // Received data valid (high-level pulse for one clock cycle)
    output reg [7:0] din_data    // Received data
);

    localparam DIV_CNT  = 10'd867;
    localparam HDIV_CNT = 10'd433;
    localparam RX_CNT   = 4'h8;
    localparam C_IDLE   = 1'b0;
    localparam C_RX     = 1'b1;   

    reg current_state;
    reg next_state;
    reg [9:0] div_cnt;
    reg [3:0] din_cnt;
    reg din_reg_0, din_reg_1, din_reg_2, din_reg_3, din_reg_4, din_reg_5, din_reg_6, din_reg_7;
    wire din_pulse;


    always @(posedge clk) begin
        if (rst)
            current_state <= C_IDLE;
        else
            current_state <= next_state;
    end    

    always @(*) begin
        case(current_state)
            C_IDLE:
                if (div_cnt == HDIV_CNT)
                    next_state = C_RX;
                else
                    next_state = C_IDLE;
            C_RX:
                if ((div_cnt == DIV_CNT) && (din_cnt >= RX_CNT))
                    next_state = C_IDLE;
                else
                    next_state = C_RX;
        endcase
    end

    always @(posedge clk) begin
        if (rst)
            div_cnt <= 10'h0;
        else if (current_state == C_IDLE) begin
            if (din == 1'b1)
                div_cnt <= 10'h0;
            else if (div_cnt < HDIV_CNT)
                div_cnt <= div_cnt + 10'h1;
            else
                div_cnt <= 10'h0;    
        end
        else if (current_state == C_RX) begin
            if (div_cnt >= DIV_CNT)
                div_cnt <= 10'h0;
            else
                div_cnt <= div_cnt + 10'h1;
        end
    end

    always @(posedge clk) begin
        if (rst)
            din_cnt <= 4'h0;
        else if (current_state == C_IDLE)
            din_cnt <= 4'h0;
        else if (div_cnt == DIV_CNT)
            din_cnt <= din_cnt + 1'b1;      
    end

    assign din_pulse = (current_state == C_RX) && (div_cnt == DIV_CNT);

    always @(posedge clk) begin
        if (din_pulse) begin
            case(din_cnt)
                4'h0: din_reg_0 <= din;
                4'h1: din_reg_1 <= din;
                4'h2: din_reg_2 <= din;
                4'h3: din_reg_3 <= din;
                4'h4: din_reg_4 <= din;
                4'h5: din_reg_5 <= din;
                4'h6: din_reg_6 <= din;
                4'h7: din_reg_7 <= din;
            endcase
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            din_vld <= 1'b0;
            din_data <= 8'h55;
        end    
        else if ((current_state == C_RX) && (next_state == C_IDLE)) begin
            din_vld <= 1'b1;
            din_data <= {din_reg_7, din_reg_6, din_reg_5, din_reg_4, din_reg_3, din_reg_2, din_reg_1, din_reg_0};
        end
        else
            din_vld <= 1'b0;
    end

endmodule