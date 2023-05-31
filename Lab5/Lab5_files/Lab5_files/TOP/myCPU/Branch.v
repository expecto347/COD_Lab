module Branch(
    input [31:0] op1, op2,
    input [2:0] br_type,

    output reg br
);
    localparam NONE_BR = 3'b000;
    localparam BEQ = 3'b001;
    localparam BLT = 3'b010;
    localparam BNE = 3'b011;
    localparam BGE = 3'b100;
    localparam BLTU = 3'b101;

    always@(*) begin
        case(br_type)
            NONE_BR: br = 0;
            BEQ: begin
                if(op1 == op2)
                    br = 1;
                else br = 0;
            end
            BLT: begin
                if($signed(op1) < $signed(op2))
                    br = 1;
                else br = 0;
            end
            BNE: begin
                if(op1 != op2)
                    br = 1;
                else br = 0;
            end
            BGE: begin
                if($signed(op1) >= $signed(op2))
                    br = 1;
                else br = 0;
            end
            BLTU: begin
                if(op1 < op2)
                    br = 1;
                else br = 0;
            end
            default: br = 0;
        endcase
    end
endmodule