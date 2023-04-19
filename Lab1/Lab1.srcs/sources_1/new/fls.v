`timescale 1ns / 1ps

module fls
(
input clk, rst,
input en,
input [6:0] d,
output [6:0] f
);
reg [2:0] state, next_state;
reg [6:0] d_1, d_2, d_3;
reg [6:0] c_1, c_2;
wire [6:0] c_3;
wire of;
reg [6:0] f_reg;
parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101;
initial next_state = S0; 
reg [3:0] func;
wire en1;
Sig Sig(clk,en,en1);

alu alu1(
    .a(c_1),
    .b(c_2),
    .func(func),
    .y(c_3),
    .of(of)
);

// 第一段
always@(posedge clk)
    if(rst) 
        state <= S0;
    else
        state <= next_state;

// 第二段
always@(*) 
if(rst)
    next_state = S0;
else if(en1)
    case(state)
        S0: next_state = S1;
        S1: next_state = S2;
        S2: next_state = S3;
        S3: next_state = S4;
        S4: next_state = S5;
        S5: next_state = S3;
        default: next_state = S0;
    endcase
else
    next_state = state;

// 第三段
always@(posedge clk)
case(state)
    S0: 
    begin
        func <= d[3:0];
        f_reg <= 7'b0;
    end
    S1: 
    begin
        d_1 <= d;  
        f_reg <= d_1;
    end
    S2:
    begin
        d_2 <= d;
        f_reg <= d_2;
    end
    S3:
    begin
        c_1 <= d_1;
        c_2 <= d_2;
        d_3 <= c_3;
        f_reg <= c_3;
    end
    S4:
    begin
        c_1 <= d_2;
        c_2 <= d_3;
        d_1 <= c_3;
        f_reg <= c_3;
    end
    S5:
    begin
        c_1 <= d_3;
        c_2 <= d_1;
        d_2 <= c_3;
        f_reg <= c_3;
    end
    default: f_reg <= 7'b0;
endcase

assign f = f_reg;
endmodule
