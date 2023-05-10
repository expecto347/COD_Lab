`timescale 1ns / 1ps
/* 
 *   Adapted: wintermelon
 *   Last update: 2023.04.13
 */


module Send(
    input clk, 
    input rst,

    output reg dout,

    input dout_vld,
    input [7:0] dout_data
);

    localparam DIV_CNT   = 10'd867;
    localparam HDIV_CNT  = 10'd433;
    localparam TX_CNT    = 4'h9;
    localparam C_IDLE    = 1'b0;
    localparam C_TX      = 1'b1;    

    reg current_state;
    reg next_state;    
    
    reg [9:0]   div_cnt;
    reg [4:0]   tx_cnt;
    reg [7:0]   tx_reg;


    always@(posedge clk) begin
        if(rst)
            current_state <= C_IDLE;
        else
            current_state <= next_state;
    end    

    always@(*) begin
        case(current_state)
            C_IDLE:
                if(dout_vld == 1'b1)
                    next_state = C_TX;
                else
                    next_state = C_IDLE;
            C_TX:
                if((div_cnt == DIV_CNT) && (tx_cnt >= TX_CNT))
                    next_state = C_IDLE;
                else
                    next_state = C_TX;
        endcase
    end

    always@(posedge clk) begin
        if(rst)
            div_cnt <= 10'h0;
        else if(current_state == C_TX) begin
            if(div_cnt >= DIV_CNT)
                div_cnt <= 10'h0;
            else
                div_cnt <= div_cnt + 10'h1;
        end
        else
            div_cnt <= 10'h0;
    end

    always@(posedge clk) begin
        if(rst)
            tx_cnt  <= 4'h0;
        else if(current_state == C_TX) begin
            if(div_cnt == DIV_CNT)
                tx_cnt <= tx_cnt + 1'b1;
        end
        else
            tx_cnt <= 4'h0;
    end

    always@(posedge clk) begin
        if(rst)
            tx_reg <= 8'b0;
        else if((current_state == C_IDLE) && (dout_vld ==1'b1))
            tx_reg <= dout_data;
    end


    always@(posedge clk) begin
        if(rst)
            dout <= 1'b1;
        else if(current_state == C_IDLE)
            dout <= 1'b1;
        else if(div_cnt == 10'h0) begin
            case(tx_cnt)
                4'h0: dout <= 1'b0;
                4'h1: dout <= tx_reg[0];
                4'h2: dout <= tx_reg[1];
                4'h3: dout <= tx_reg[2];
                4'h4: dout <= tx_reg[3];
                4'h5: dout <= tx_reg[4];
                4'h6: dout <= tx_reg[5];
                4'h7: dout <= tx_reg[6];
                4'h8: dout <= tx_reg[7];
                4'h9: dout <= 1'b1;
            endcase
        end
    end
endmodule

