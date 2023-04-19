`timescale 1ns / 1ps

module alu_test
(
input clk,
input en,
input [1:0]sel,
input [5:0] x,
output [5:0] y,
output of
);
reg [5:0] a, b;
reg [3:0] func;
reg enf, ena, enb;
wire [5:0] y_wire;
wire of_wire;
reg [5:0] y_reg;
reg of_reg;

assign y = y_reg;
assign of = of_reg;

always@(posedge clk)
begin
    y_reg <= y_wire;
    of_reg <= of_wire;
end

alu alu_inst
(
    .a(a),
    .b(b),
    .func(func),
    .y(y_wire),
    .of(of_wire)
);

always@(posedge clk)
begin
    if(enf)
        func <= x[3:0];
    else
        func <= func;
end

always@(posedge clk)
begin
    if(ena)
        a <= x[5:0];
    else
        a <= a;
end

always@(posedge clk)
begin
    if(enb)
        b <= x[5:0];
    else
        b <= b;
end

always@(*)
begin
    if(en)
        case(sel)
            2'b00: 
            begin
                enf = 0;
                ena = 1;
                enb = 0;
            end
            2'b01: 
            begin
                enf = 0;
                ena = 0;
                enb = 1;
            end
            2'b10: 
            begin
                enf = 1;
                ena = 0;
                enb = 0;
            end
            2'b11: 
            begin
                enf = 0;
                ena = 0;
                enb = 0;
            end
        endcase
    else
        begin
            enf = 0;
            ena = 0;
            enb = 0;
        end
end
endmodule