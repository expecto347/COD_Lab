module ALU #(parameter WIDTH = 32)
(
    input [WIDTH-1:0] alu_op1, alu_op2, 
    input [3:0] alu_ctrl,
    output [WIDTH-1:0] alu_res, 
    output of
);
reg [WIDTH - 1:0] y_reg;
reg of_reg;
assign alu_res = y_reg[WIDTH-1:0];
assign of = of_reg;

always @(*) begin
    case(alu_ctrl)
        4'b0000: 
        begin
            y_reg = alu_op1 + alu_op2;
            of_reg = (alu_op1[WIDTH - 1] == 1'b1 && alu_op2[WIDTH - 1] == 1'b1 && y_reg[WIDTH - 1] == 1'b0)||
                        (alu_op1[WIDTH - 1] == 1'b0 && alu_op2[WIDTH - 1] == 1'b0 && y_reg[WIDTH - 1] == 1'b1);
        end
        4'b0001: 
        begin
            y_reg = alu_op1 - alu_op2;
            of_reg = (alu_op1[WIDTH - 1] == 1'b1 && alu_op2[WIDTH - 1] == 1'b0 && y_reg[WIDTH - 1] == 1'b0)||
                        (alu_op1[WIDTH - 1] == 1'b0 && alu_op2[WIDTH - 1] == 1'b1 && y_reg[WIDTH - 1] == 1'b1);
        end
        4'b0010: 
        begin
            y_reg = (alu_op1 == alu_op2) ? 1 : 0;
            of_reg = 0;
        end
        4'b0011: 
        begin
            y_reg = (alu_op1 < alu_op2) ? 1 : 0;
            of_reg = 0;
        end
        4'b0100: 
        begin
            if (alu_op1[WIDTH-1] == 1'b1 && alu_op2[WIDTH-1] == 1'b0)
                y_reg = 1;
            else if (alu_op1[WIDTH-1] == 1'b0 && alu_op2[WIDTH-1] == 1'b1)
                y_reg = 0;
            else
                y_reg = (alu_op1 < alu_op2) ? 1 : 0;
            of_reg = 0;
        end
        4'b0101: 
        begin
            y_reg = alu_op1 & alu_op2;
            of_reg = 0;
        end
        4'b0110: 
        begin
            y_reg = alu_op1 | alu_op2;
            of_reg = 0;
        end
        4'b0111: 
        begin
            y_reg = alu_op1 ^ alu_op2;
            of_reg = 0;
        end
        4'b1000: 
        begin
            y_reg = alu_op1 << alu_op2;
            of_reg = 0;
        end
        4'b1001: 
        begin
            y_reg = alu_op1 >> alu_op2;
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