module PC_pre(
    input [31:0]    inst_id,
    input [31:0]    pc_cur_id,
    input [31:0]    imm_id,
    input [31:0]    rf_rd0_id,

    output reg [31:0]   pc_jal_br_id,
    output reg [31:0]   pc_jalr_id
);
    localparam B_type       = 7'b1100011;
    localparam J_type       = 7'b1101111;
    localparam JALR         = 7'b1100111;
    
    always @(*) begin
        case(inst_id[6:0])
            B_type: pc_jal_br_id = pc_cur_id + imm_id;
            J_type: pc_jal_br_id = pc_cur_id + imm_id;
            JALR:   pc_jalr_id = (rf_rd0_id + imm_id) & 32'hFFFFFFFE;
            default: begin
                pc_jal_br_id = 0;
                pc_jalr_id = 0;
            end
        endcase
    end
endmodule