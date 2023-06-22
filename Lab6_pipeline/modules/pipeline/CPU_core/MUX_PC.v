module MUX_PC(
    input jal, jalr, br,

    input [31:0] pc_add4,
    input [31:0] pc_jal_br,
    input [31:0] pc_jalr,

    output reg [31:0] pc_next
);
    always@(*) begin
        if(jal == 1 || br == 1) begin
            pc_next = pc_jal_br;
        end
        else if(jalr == 1) begin
            pc_next = pc_jalr;
        end
        else pc_next = pc_add4;
    end
endmodule