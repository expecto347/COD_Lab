module MUX_RFwrite(
    input [1:0] sel,

    input [31:0] alu_res,
    input [31:0] pc_add4,
    input [31:0] mem_rd,
    input [31:0] imm,

    output reg [31:0] wb_data
);
    localparam ALU_RES = 2'b00;
    localparam PC_ADD4 = 2'b01;
    localparam MEM_RD = 2'b10;
    localparam IMM = 2'b11;

    always@(*) begin
        case(sel)
            ALU_RES:    wb_data = alu_res;
            PC_ADD4:    wb_data = pc_add4;
            MEM_RD:     wb_data = mem_rd;
            IMM:        wb_data = imm;
        endcase
    end
endmodule