module Hazard(
    input [4:0]     rf_ra0_id,
    input [4:0]     rf_ra1_id,
    input           rf_re0_id,
    input           rf_re1_id,

    input           rf_we_ex,
    input [4:0]     rf_wa_ex,
    input [1:0]     rf_wd_sel_ex,
    input [31:0]    alu_ans_ex,
    input [31:0]    pc_add4_ex,
    input [31:0]    imm_ex,

    input           rf_we_mem,
    input [4:0]     rf_wa_mem,
    input [1:0]     rf_wd_sel_mem,
    input [31:0]    alu_ans_mem,
    input [31:0]    pc_add4_mem,
    input [31:0]    imm_mem,
    input [31:0]    dm_dout,

    input           jal_id, jalr_id, br_id,

    output              rf_rd0_fe,
    output              rf_rd1_fe,
    output reg [31:0]   rf_rd0_fd,
    output reg [31:0]   rf_rd1_fd,

    output              stall_if1,
    output              stall_if2,
    output              stall_id,

    output              flush_if2,
    output              flush_id,
    output              flush_ex //
);

    localparam ALU_RES = 2'b00;
    localparam PC_ADD4 = 2'b01;
    localparam MEM_RD = 2'b10;
    localparam IMM = 2'b11;
    
    wire data_hzd_ex;

    always@(*) begin
        //Data Hazard
        //forwarding
        if(rf_we_ex || rf_we_mem) begin
            if(rf_wa_mem != 0) begin
                case(rf_wd_sel_mem)
                    ALU_RES: begin
                        rf_rd0_fd = (rf_re0_id && rf_wa_mem == rf_ra0_id)? alu_ans_mem: 0;
                        rf_rd1_fd = (rf_re1_id && rf_wa_mem == rf_ra1_id)? alu_ans_mem: 0;
                    end
                    PC_ADD4: begin
                        rf_rd0_fd = (rf_re0_id && rf_wa_mem == rf_ra0_id)? pc_add4_mem: 0;
                        rf_rd1_fd = (rf_re1_id && rf_wa_mem == rf_ra1_id)? pc_add4_mem: 0;
                    end
                    IMM: begin
                        rf_rd0_fd = (rf_re0_id && rf_wa_mem == rf_ra0_id)? imm_mem: 0;
                        rf_rd1_fd = (rf_re1_id && rf_wa_mem == rf_ra1_id)? imm_mem: 0;
                    end
                    MEM_RD: begin
                        rf_rd0_fd = (rf_re0_id && rf_wa_mem == rf_ra0_id)? dm_dout: 0;
                        rf_rd1_fd = (rf_re1_id && rf_wa_mem == rf_ra1_id)? dm_dout: 0;
                    end
                endcase
                end
            //override
            if(rf_wa_ex != 0) begin
                case(rf_wd_sel_ex)
                    ALU_RES: begin
                        rf_rd0_fd = (rf_re0_id && rf_wa_ex == rf_ra0_id)? alu_ans_ex: rf_rd0_fd;
                        rf_rd1_fd = (rf_re1_id && rf_wa_ex == rf_ra1_id)? alu_ans_ex: rf_rd1_fd;
                    end
                    PC_ADD4: begin
                        rf_rd0_fd = (rf_re0_id && rf_wa_ex == rf_ra0_id)? pc_add4_ex: rf_rd0_fd;
                        rf_rd1_fd = (rf_re1_id && rf_wa_ex == rf_ra1_id)? pc_add4_ex: rf_rd1_fd;
                    end
                    IMM: begin
                        rf_rd0_fd = (rf_re0_id && rf_wa_ex == rf_ra0_id)? imm_ex: rf_rd0_fd;
                        rf_rd1_fd = (rf_re1_id && rf_wa_ex == rf_ra1_id)? imm_ex: rf_rd1_fd;
                    end
                endcase
            end
        end
        else begin
            rf_rd0_fd = 0;
            rf_rd1_fd = 0;
        end
        //note that RF has a write first feature
    end
    
    //forwarding enable
    assign rf_rd0_fe = rf_re0_id && ((rf_we_ex && rf_wa_ex != 0 && rf_wa_ex == rf_ra0_id) || (rf_we_mem && rf_wa_mem != 0 && rf_wa_mem == rf_ra0_id));
    assign rf_rd1_fe = rf_re1_id && ((rf_we_ex && rf_wa_ex != 0 && rf_wa_ex == rf_ra1_id) || (rf_we_mem && rf_wa_mem != 0 && rf_wa_mem == rf_ra1_id));
    
    //Data Hazard: bubbling
    assign data_hzd_ex  = rf_we_ex && rf_wa_ex != 0 && ((rf_re0_id && rf_wa_ex == rf_ra0_id) || (rf_re1_id && rf_wa_ex == rf_ra1_id));
    assign stall_if1    = (data_hzd_ex && rf_wd_sel_ex == MEM_RD);
    assign stall_if2    = (data_hzd_ex && rf_wd_sel_ex == MEM_RD);
    assign stall_id     = (data_hzd_ex && rf_wd_sel_ex == MEM_RD);
    assign flush_ex     = (data_hzd_ex && rf_wd_sel_ex == MEM_RD);

    //Control Hazard
    assign flush_if2    = (jal_id || br_id || jalr_id);
    assign flush_id     = (jal_id || br_id || jalr_id);
endmodule