module CPU_DATA_CHECK(
    input [31:0] check_addr,

    input [31:0] pc_in, pc_out,
    input [31:0] inst,
    input [4:0] rf_ra0, rf_ra1,
    input [31:0] rf_rd0, rf_rd1,
    input [4:0] rf_wa,
    input [31:0] rf_wd,
    input rf_we,
    input [31:0] imm,
    input [31:0] alu_sr1, alu_sr2,
    input [3:0] alu_func,
    input [31:0] alu_ans,
    input [31:0] pc_jalr,
    input [31:0] dm_addr,
    input [31:0] dm_din,
    input [31:0] dm_dout,
    input dm_we,
    
    output reg [31:0] check_data
);
always@(*) begin
    case(check_addr[7:0])
        8'h01: check_data = pc_in;
        8'h02: check_data = pc_out;
        8'h03: check_data = inst;
        8'h04: check_data = rf_ra0;
        8'h05: check_data = rf_ra1;
        8'h06: check_data = rf_rd0;
        8'h07: check_data = rf_rd1;
        8'h08: check_data = rf_wa;
        8'h09: check_data = rf_we;
        8'h0a: check_data = imm;
        8'h0b: check_data = alu_sr1;
        8'h0c: check_data = alu_sr2;
        8'h0d: check_data = alu_func;
        8'h0e: check_data = alu_ans;
        8'h0f: check_data = pc_jalr;
        8'h10: check_data = dm_addr;
        8'h11: check_data = dm_din;
        8'h12: check_data = dm_dout;
        8'h13: check_data = dm_we;
        default: check_data =0;
    endcase
end
endmodule