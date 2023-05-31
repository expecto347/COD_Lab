module IMM(
    input [31:0] inst,
    output reg [31:0] imm
);

localparam R_type = 7'b0110011;
localparam I_type = 7'b0010011;
localparam S_type = 7'b0100011;
localparam B_type = 7'b1100011;
localparam class_load = 7'b0000011;
localparam U_type_lui = 7'b0110111;
localparam U_type_auipc = 7'b0010111;
localparam J_type = 7'b1101111;
localparam JALR = 7'b1100111;

always@(*) begin
    case(inst[6:0])
        I_type:         imm = {{20{inst[31]}}, inst[31:20]};
        S_type:         imm = {{20{inst[31]}}, inst[31:25], inst[11:7]};
        B_type:         imm = {{19{inst[31]}}, inst[31], inst[7], inst[30:25], inst[11:8], 1'b0};
        class_load:     imm = {{20{inst[31]}}, inst[31:20]};
        U_type_lui:     imm = {inst[31:12], 12'b0};
        U_type_auipc:   imm = {inst[31:12], 12'b0};
        J_type:         imm = {{12{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0};
        JALR:           imm = {{20{inst[31]}}, inst[31:20]};
        default:        imm = 32'b0;
    endcase
end
endmodule