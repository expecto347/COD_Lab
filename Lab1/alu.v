`timescale 1ns / 1ps
module alu #(parameter WIDTH = 6)
(
    input [WIDTH-1:0] a, b, 
    input [3:0] func,
    output [WIDTH-1:0]y, 
    output of
);
    reg [WIDTH - 1:0] y_reg;
    reg of_reg;
    assign y = y_reg[WIDTH-1:0];
    assign of = of_reg;
    
    always @(*) begin
        case(func)
            4'b0000: 
            begin
                y_reg = a + b;
                of_reg = (a[WIDTH - 1] == 1'b1 && b[WIDTH - 1] == 1'b1 && y_reg[WIDTH - 1] == 1'b0)||
                         (a[WIDTH - 1] == 1'b0 && b[WIDTH - 1] == 1'b0 && y_reg[WIDTH - 1] == 1'b1);
            end
            4'b0001: 
            begin
                y_reg = a - b;
                of_reg = (a[WIDTH - 1] == 1'b1 && b[WIDTH - 1] == 1'b0 && y_reg[WIDTH - 1] == 1'b0)||
                         (a[WIDTH - 1] == 1'b0 && b[WIDTH - 1] == 1'b1 && y_reg[WIDTH - 1] == 1'b1);
            end
            4'b0010: 
            begin
                y_reg = (a == b) ? 1 : 0;
                of_reg = 0;
            end
            4'b0011: 
            begin
                y_reg = (a < b) ? 1 : 0;
                of_reg = 0;
            end
            4'b0100: 
            begin
                if (a[WIDTH-1] == 1'b1 && b[WIDTH-1] == 1'b0)
                    y_reg = 1;
                else if (a[WIDTH-1] == 1'b0 && b[WIDTH-1] == 1'b1)
                    y_reg = 0;
                else
                    y_reg = (a < b) ? 1 : 0;
                of_reg = 0;
            end
            4'b0101: 
            begin
                y_reg = a & b;
                of_reg = 0;
            end
            4'b0110: 
            begin
                y_reg = a | b;
                of_reg = 0;
            end
            4'b0111: 
            begin
                y_reg = a ^ b;
                of_reg = 0;
            end
            4'b1000: 
            begin
                y_reg = a << b;
                of_reg = 0;
            end
            4'b1001: 
            begin
                y_reg = a >> b;
                of_reg = 0;
            end
            default:
            begin
                y_reg = 0;
                of_reg = 0;
            end
        endcase
    end
endmodule