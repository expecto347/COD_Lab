module ALU
    #(parameter WIDTH = 32)
    (
        input [WIDTH-1:0] alu_op1, alu_op2,
        input [3:0] alu_ctrl,
        output reg [WIDTH-1:0] alu_res,
        output reg OF
    );
    always @(*) 
    begin
        case(alu_ctrl)
            4'b0000: begin
                alu_res = alu_op1 + alu_op2;
                OF = (~alu_op1[WIDTH-1]&~alu_op2[WIDTH-1]&alu_res[WIDTH-1] | alu_op1[WIDTH-1]&alu_op2[WIDTH-1]&~alu_res[WIDTH-1]);
            end
            4'b0001: begin
                alu_res = alu_op1 - alu_op2;
                OF = (~alu_op1[WIDTH-1]&alu_op2[WIDTH-1]&alu_res[WIDTH-1] | alu_op1[WIDTH-1]&~alu_op2[WIDTH-1]&~alu_res[WIDTH-1]);
            end
            4'b0101: begin
                alu_res = alu_op1 & alu_op2;
                OF = 0;
            end
            4'b0110: begin
                alu_res = alu_op1 | alu_op2;
                OF = 0;
            end
            4'b0111: begin
                alu_res = alu_op1 ^ alu_op2;
                OF = 0;
            end
            4'b1000: begin
                alu_res = alu_op1 >> alu_op2;
                OF = 0;
            end
            4'b1001: begin
                alu_res = alu_op1 << alu_op2;
                OF = 0;
            end
            4'b1010: begin
                alu_res = ($signed(alu_op1) < $signed(alu_op2))? 1: 0;
            end
            default: begin
                alu_res = 0;
                OF = 0;
            end
        endcase
    end
endmodule

