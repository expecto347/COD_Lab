`timescale 1ns / 1ps

/* 
 *   Author: YOU
 *   Last update: 2023.04.20
 */

module CPU(
    input clk, 
    input rst,

    // MEM And MMIO Data BUS
    output [31:0] im_addr,      // Instruction address (The same as current PC)
    input [31:0] im_dout,       // Instruction data (Current instruction)
    output [31:0] mem_addr,     // Memory read/write address
    output mem_we,              // Memory writing enable		            
    output [31:0] mem_din,      // Data ready to write to memory
    input [31:0] mem_dout,	    // Data read from memory

    // Debug BUS with PDU
    output [31:0] current_pc, 	        // Current_pc, pc_out
    output [31:0] next_pc,              // Next_pc, pc_in    
    input [31:0] cpu_check_addr,	    // Check current datapath state (code)
    output [31:0] cpu_check_data    // Current datapath state data
);

//  IF wires
wire [31:0] inst;
wire [31:0] dm_dout;

wire [31:0] pc_cur_if;
wire [31:0] pc_add4_if;
wire stall_if;

//  ID wires
wire stall_id;
wire flush_id;
wire [31:0] pc_cur_id;
wire [31:0] inst_id;
wire [4:0] rf_ra0_id;
wire [4:0] rf_ra1_id;
wire [4:0] rf_wa_id;
wire [31:0] pc_add4_id;

wire [4:0] rf_wa_wb;
wire [31:0] rf_wd_wb;
wire [31:0] rf_rd0_raw_id;
wire [31:0] rf_rd1_raw_id;

wire [31:0] rf_rd_dbg_id;

wire rf_re0_id;
wire rf_re1_id;
wire [1:0] rf_wd_sel_id;
wire rf_we_id;

wire [31:0] imm_id;

wire alu_src1_sel_id;
wire alu_src2_sel_id;
wire [3:0] alu_func_id;
wire jal_id;
wire jalr_id;
wire [2:0] br_type_id;
wire dm_we_id;

//  EX wires
wire stall_ex;
wire flush_ex;
wire [31:0] pc_cur_ex;
wire [31:0] inst_ex;
wire [4:0] rf_ra0_ex;
wire [4:0] rf_ra1_ex;
wire rf_re0_ex;
wire rf_re1_ex;
wire [4:0] rf_wa_ex;
wire [1:0] rf_wd_sel_ex;
wire rf_we_ex;
wire [31:0] imm_ex;
wire alu_src1_sel_ex;
wire alu_src2_sel_ex;
wire [3:0] alu_func_ex;

wire [31:0] pc_add4_ex;
wire jal_ex;
wire jalr_ex;
wire [2:0] br_type_ex;

wire [31:0] dm_din_ex;
wire dm_we_ex;

wire [31:0] alu_src1_ex;
wire [31:0] alu_src2_ex;
wire [31:0] alu_ans_ex;
wire [31:0] rf_rd0_raw_ex;
wire [31:0] rf_rd1_raw_ex;
wire [31:0] rf_rd0_ex;
wire [31:0] rf_rd1_ex;
wire br_ex;
wire [31:0] pc_jalr_ex;

//  MEM wires
wire [31:0] pc_cur_mem;
wire [31:0] inst_mem;

wire [4:0] rf_ra0_mem;
wire [4:0] rf_ra1_mem;
wire rf_re0_mem;
wire rf_re1_mem;
wire [31:0] rf_rd0_raw_mem;
wire [31:0] rf_rd1_raw_mem;
wire [31:0] rf_rd0_mem;
wire [31:0] rf_rd1_mem;
wire [4:0] rf_wa_mem;
wire [1:0] rf_wd_sel_mem;
wire rf_we_mem;

wire [31:0] imm_mem;

wire alu_src1_sel_mem;
wire alu_src2_sel_mem;
wire [31:0] alu_src1_mem;
wire [31:0] alu_src2_mem;
wire [3:0] alu_func_mem;
wire [31:0] alu_ans_mem;

wire [31:0] pc_add4_mem;
wire [31:0] pc_br_mem;
wire [31:0] pc_jal_mem;
wire [31:0] pc_jalr_mem;
wire jal_mem;
wire jalr_mem;
wire [2:0] br_type_mem;
wire br_mem;
wire [31:0] pc_next;
wire [31:0] pc_next_mem;
wire [31:0] dm_addr_mem;
wire [31:0] dm_din_mem;
wire dm_we_mem;

//  WB wires
wire [31:0] pc_cur_wb;
wire [31:0] inst_wb;

wire [4:0] rf_ra0_wb;
wire [4:0] rf_ra1_wb;
wire rf_re0_wb;
wire rf_re1_wb;
wire [31:0] rf_rd0_raw_wb;
wire [31:0] rf_rd1_raw_wb;
wire [31:0] rf_rd0_wb;
wire [31:0] rf_rd1_wb;
wire [1:0] rf_wd_sel_wb;
wire rf_we_wb;

wire [31:0] imm_wb;

wire alu_src1_sel_wb;
wire alu_src2_sel_wb;
wire [31:0] alu_src1_wb;
wire [31:0] alu_src2_wb;
wire [3:0] alu_func_wb;
wire [31:0] alu_ans_wb;

wire [31:0] pc_add4_wb;
wire [31:0] pc_br_wb;
wire [31:0] pc_jal_wb;
wire [31:0] pc_jalr_wb;
wire jal_wb;
wire jalr_wb;
wire [2:0] br_type_wb;
wire br_wb;
wire [31:0] pc_next_wb;
wire [31:0] dm_addr_wb;
wire [31:0] dm_din_wb;
wire [31:0] dm_dout_wb;
wire dm_we_wb;

wire [31:0] rf_rd0_fd;
wire [31:0] rf_rd1_fd;

//IF segment
PC PC(
    .pc_next(pc_next),
    .pc_cur(pc_cur_if),

    .clk(clk),
    .stall(stall_if),
    .rst(rst)
);

assign pc_add4_if = 32'd4 + pc_cur_if;

SEG_REG IF_ID(
    .clk(clk),
    .stall(stall_id),
    .flush(flush_id),

    .pc_cur_in(pc_cur_if),
    .inst_in(inst),

    .rf_ra0_in(inst[19:15]),
    .rf_ra1_in(inst[24:20]),
    .rf_re0_in(1'h0),
    .rf_re1_in(1'h0),
    .rf_rd0_raw_in(32'h0),
    .rf_rd1_raw_in(32'h0),
    .rf_rd0_in(32'h0),
    .rf_rd1_in(32'h0),
    .rf_wa_in(inst[11:7]),
    .rf_wd_sel_in(2'h0),
    .rf_we_in(1'h0),

    .imm_in(32'h0),

    .alu_src1_sel_in(1'h0),
    .alu_src2_sel_in(1'h0),
    .alu_src1_in(32'h0),
    .alu_src2_in(32'h0),
    .alu_func_in(4'hf),
    .alu_ans_in(32'h0),

    .pc_add4_in(pc_add4_if),
    .pc_br_in(32'h0),
    .pc_jal_in(32'h0),
    .pc_jalr_in(32'h0),
    .jal_in(1'h0),
    .jalr_in(1'h0),
    .br_type_in(3'h0),
    .br_in(1'h0),
    .pc_next_in(32'h0),
    .dm_addr_in(32'h0),
    .dm_din_in(32'h0),
    .dm_dout_in(32'h0),
    .dm_we_in(1'h0),

    //output
    .pc_cur_out(pc_cur_id),
    .inst_out(inst_id),
    .rf_ra0_out(rf_ra0_id),
    .rf_ra1_out(rf_ra1_id),
    .rf_wa_out(rf_wa_id),
    .pc_add4_out(pc_add4_id)
);

//ID segment
RF RF(
    .clk(clk),
    .we(rf_we_wb),

    .ra0(rf_ra0_id),
    .ra1(rf_ra1_id),
    .wa(rf_wa_wb),
    .wd(rf_wd_wb),
    
    .rd0(rf_rd0_raw_id),
    .rd1(rf_rd1_raw_id),

    .ra_dbg(cpu_check_addr[4:0]),
    .rd_dbg(rf_rd_dbg_id)
);

IMM IMM(
    .inst(inst_id),
    .imm(imm_id)
);

CTRL CTRL(
    .inst(inst_id),

    .rf_re0(rf_re0_id),
    .rf_re1(rf_re1_id),
    .rf_wd_sel(rf_wd_sel_id),
    .rf_we(rf_we_id),
    .alu_src1_sel(alu_src1_sel_id),
    .alu_src2_sel(alu_src2_sel_id),
    .alu_func(alu_func_id),
    .jal(jal_id),
    .jalr(jalr_id),
    .br_type(br_type_id),
    .mem_we(dm_we_id)
);

SEG_REG ID_EX(
    .clk(clk),
    .stall(stall_ex),
    .flush(flush_ex),

    //input
    .pc_cur_in(pc_cur_id),
    .inst_in(inst_id),

    .rf_ra0_in(rf_ra0_id),
    .rf_ra1_in(rf_ra1_id),
    .rf_re0_in(rf_re0_id),
    .rf_re1_in(rf_re1_id),
    .rf_rd0_raw_in(rf_rd0_raw_id),
    .rf_rd1_raw_in(rf_rd1_raw_id),
    .rf_rd0_in(32'h0),
    .rf_rd1_in(32'h0),
    .rf_wa_in(rf_wa_id),
    .rf_wd_sel_in(rf_wd_sel_id),
    .rf_we_in(rf_we_id),

    .imm_in(imm_id),

    .alu_src1_sel_in(alu_src1_sel_id),
    .alu_src2_sel_in(alu_src2_sel_id),
    .alu_src1_in(32'h0),
    .alu_src2_in(32'h0),
    .alu_func_in(alu_func_id),
    .alu_ans_in(32'h0),

    .pc_add4_in(pc_add4_id),
    .pc_br_in(32'h0),
    .pc_jal_in(32'h0),
    .pc_jalr_in(32'h0),
    .jal_in(jal_id),
    .jalr_in(jalr_id),
    .br_type_in(br_type_id),
    .br_in(1'h0),
    .pc_next_in(32'h0),
    .dm_addr_in(32'h0),
    .dm_din_in(32'h0),//TODO:
    .dm_dout_in(32'h0),
    .dm_we_in(dm_we_id),

    //output
    .pc_cur_out(pc_cur_ex),
    .inst_out(inst_ex),

    .rf_ra0_out(rf_ra0_ex),
    .rf_ra1_out(rf_ra1_ex),
    .rf_re0_out(rf_re0_ex),
    .rf_re1_out(rf_re1_ex),
    .rf_rd0_raw_out(rf_rd0_raw_ex),
    .rf_rd1_raw_out(rf_rd1_raw_ex),
    .rf_wa_out(rf_wa_ex),
    .rf_wd_sel_out(rf_wd_sel_ex),
    .rf_we_out(rf_we_ex),

    .imm_out(imm_ex),

    .alu_src1_sel_out(alu_src1_sel_ex),
    .alu_src2_sel_out(alu_src2_sel_ex),
    .alu_func_out(alu_func_ex),

    .pc_add4_out(pc_add4_ex),

    .jal_out(jal_ex),
    .jalr_out(jalr_ex),
    .br_type_out(br_type_ex),

    .dm_we_out(dm_we_ex)
);

//EX segment
ALU ALU(
    .alu_op1(alu_src1_ex),
    .alu_op2(alu_src2_ex),
    .alu_res(alu_ans_ex),
    .alu_ctrl(alu_func_ex)
);

MUX ALU_MUX1(
    .sel(alu_src1_sel_ex),
    .src0(rf_rd0_ex),
    .src1(pc_cur_ex),
    .res(alu_src1_ex)
);

MUX ALU_MUX2(
    .sel(alu_src2_sel_ex),
    .src0(rf_rd1_ex),
    .src1(imm_ex),
    .res(alu_src2_ex)
);

MUX RD_MUX1(
    .sel(rf_rd0_fe),
    .src0(rf_rd0_raw_ex),
    .src1(rf_rd0_fd),
    .res(rf_rd0_ex)
);

MUX RD_MUX2(
    .sel(rf_rd1_fe),
    .src0(rf_rd1_raw_ex),
    .src1(rf_rd1_fd),
    .res(rf_rd1_ex)
);

Branch Branch_signals(
    .br_type(br_type_ex),
    .op1(rf_rd0_ex),
    .op2(rf_rd1_ex),
    .br(br_ex)
);

MUX_PC PC_MUX(
    .jal(jal_ex),
    .jalr(jalr_ex),
    .br(br_ex),
    .pc_add4(pc_add4_if),
    .pc_jal_br(alu_ans_ex),
    .pc_jalr(pc_jalr_ex),
    .pc_next(pc_next)
);

assign pc_jalr_ex = 32'hFFFFFFFE & alu_ans_ex;

SEG_REG EX_MEM(
    .clk(clk),
    .stall(1'h0),
    .flush(flush_mem),

    //input
    .pc_cur_in(pc_cur_ex),
    .inst_in(inst_ex),

    .rf_ra0_in(rf_ra0_ex),
    .rf_ra1_in(rf_ra1_ex),
    .rf_re0_in(rf_re0_ex),
    .rf_re1_in(rf_re1_ex),
    .rf_rd0_raw_in(rf_rd0_raw_ex),
    .rf_rd1_raw_in(rf_rd1_raw_ex),
    .rf_rd0_in(rf_rd0_ex),
    .rf_rd1_in(rf_rd1_ex),
    .rf_wa_in(rf_wa_ex),
    .rf_wd_sel_in(rf_wd_sel_ex),
    .rf_we_in(rf_we_ex),

    .imm_in(imm_ex),

    .alu_src1_sel_in(alu_src1_sel_ex),
    .alu_src2_sel_in(alu_src2_sel_ex),
    .alu_src1_in(alu_src1_ex),
    .alu_src2_in(alu_src2_ex),
    .alu_func_in(alu_func_ex),
    .alu_ans_in(alu_ans_ex),

    .pc_add4_in(pc_add4_ex),
    .pc_br_in(alu_ans_ex),
    .pc_jal_in(alu_ans_ex),
    .pc_jalr_in(pc_jalr_ex),
    .jal_in(jal_ex),
    .jalr_in(jalr_ex),
    .br_type_in(br_type_ex),
    .br_in(br_ex),
    .pc_next_in(pc_next),
    .dm_addr_in(alu_ans_ex),
    .dm_din_in(rf_rd1_ex),
    .dm_dout_in(32'h0),
    .dm_we_in(dm_we_ex),

    //output
    .pc_cur_out(pc_cur_mem),
    .inst_out(inst_mem),

    .rf_ra0_out(rf_ra0_mem),
    .rf_ra1_out(rf_ra1_mem),
    .rf_re0_out(rf_re0_mem),
    .rf_re1_out(rf_re1_mem),
    .rf_rd0_raw_out(rf_rd0_raw_mem),
    .rf_rd1_raw_out(rf_rd1_raw_mem),
    .rf_rd0_out(rf_rd0_mem),
    .rf_rd1_out(rf_rd1_mem),
    .rf_wa_out(rf_wa_mem),
    .rf_wd_sel_out(rf_wd_sel_mem),
    .rf_we_out(rf_we_mem),

    .imm_out(imm_mem),

    .alu_src1_sel_out(alu_src1_sel_mem),
    .alu_src2_sel_out(alu_src2_sel_mem),
    .alu_src1_out(alu_src1_mem),
    .alu_src2_out(alu_src2_mem),
    .alu_func_out(alu_func_mem),
    .alu_ans_out(alu_ans_mem),

    .pc_add4_out(pc_add4_mem),
    .pc_br_out(pc_br_mem),
    .pc_jal_out(pc_jal_mem),
    .pc_jalr_out(pc_jalr_mem),
    .jal_out(jal_mem),
    .jalr_out(jalr_mem),
    .br_type_out(br_type_mem),
    .br_out(br_mem),
    .pc_next_out(pc_next_mem),
    .dm_addr_out(dm_addr_mem),
    .dm_din_out(dm_din_mem),
    .dm_we_out(dm_we_mem)
);

//MEM segment
SEG_REG MEM_WB(
    .clk(clk),
    .stall(1'h0),
    .flush(1'h0),

    //input
    .pc_cur_in(pc_cur_mem),
    .inst_in(inst_mem),

    .rf_ra0_in(rf_ra0_mem),
    .rf_ra1_in(rf_ra1_mem),
    .rf_re0_in(rf_re0_mem),
    .rf_re1_in(rf_re1_mem),
    .rf_rd0_raw_in(rf_rd0_raw_mem),
    .rf_rd1_raw_in(rf_rd1_raw_mem),
    .rf_rd0_in(rf_rd0_mem),
    .rf_rd1_in(rf_rd1_mem),
    .rf_wa_in(rf_wa_mem),
    .rf_wd_sel_in(rf_wd_sel_mem),
    .rf_we_in(rf_we_mem),

    .imm_in(imm_mem),

    .alu_src1_sel_in(alu_src1_sel_mem),
    .alu_src2_sel_in(alu_src2_sel_mem),
    .alu_src1_in(alu_src1_mem),
    .alu_src2_in(alu_src2_mem),
    .alu_func_in(alu_func_mem),
    .alu_ans_in(alu_ans_mem),

    .pc_add4_in(pc_add4_mem),
    .pc_br_in(pc_br_mem),
    .pc_jal_in(pc_jal_mem),
    .pc_jalr_in(pc_jalr_mem),
    .jal_in(jal_mem),
    .jalr_in(jalr_mem),
    .br_type_in(br_type_mem),
    .br_in(br_mem),
    .pc_next_in(pc_next_mem),
    .dm_addr_in(dm_addr_mem),
    .dm_din_in(dm_din_mem),
    .dm_dout_in(dm_dout),
    .dm_we_in(dm_we_mem),

    //output
    .pc_cur_out(pc_cur_wb),
    .inst_out(inst_wb),

    .rf_ra0_out(rf_ra0_wb),
    .rf_ra1_out(rf_ra1_wb),
    .rf_re0_out(rf_re0_wb),
    .rf_re1_out(rf_re1_wb),
    .rf_rd0_raw_out(rf_rd0_raw_wb),
    .rf_rd1_raw_out(rf_rd1_raw_wb),
    .rf_rd0_out(rf_rd0_wb),
    .rf_rd1_out(rf_rd1_wb),
    .rf_wa_out(rf_wa_wb),
    .rf_wd_sel_out(rf_wd_sel_wb),
    .rf_we_out(rf_we_wb),

    .imm_out(imm_wb),

    .alu_src1_sel_out(alu_src1_sel_wb),
    .alu_src2_sel_out(alu_src2_sel_wb),
    .alu_src1_out(alu_src1_wb),
    .alu_src2_out(alu_src2_wb),
    .alu_func_out(alu_func_wb),
    .alu_ans_out(alu_ans_wb),

    .pc_add4_out(pc_add4_wb),
    .pc_br_out(pc_br_wb),
    .pc_jal_out(pc_jal_wb),
    .pc_jalr_out(pc_jalr_wb),
    .jal_out(jal_wb),
    .jalr_out(jalr_wb),
    .br_type_out(br_type_wb),
    .br_out(br_wb),
    .pc_next_out(pc_next_wb),
    .dm_addr_out(dm_addr_wb),
    .dm_din_out(dm_din_wb),
    .dm_dout_out(dm_dout_wb),
    .dm_we_out(dm_we_wb)
);

MUX_RFwrite RF_writeback_MUX(
    .sel(rf_wd_sel_wb),
    .alu_res(alu_ans_wb),
    .pc_add4(pc_add4_wb),
    .mem_rd(dm_dout_wb),
    .imm(imm_wb),
    .wb_data(rf_wd_wb)
);

//Hazard
Hazard Hazard(
    .rf_ra0_ex(rf_ra0_ex),
    .rf_ra1_ex(rf_ra1_ex),
    .rf_re0_ex(rf_re0_ex),
    .rf_re1_ex(rf_re1_ex),
    .rf_we_mem(rf_we_mem),
    .rf_wa_mem(rf_wa_mem),
    .rf_wd_sel_mem(rf_wd_sel_mem),
    .alu_ans_mem(alu_ans_mem),
    .pc_add4_mem(pc_add4_mem),
    .imm_mem(imm_mem),
    .rf_we_wb(rf_we_wb),
    .rf_wa_wb(rf_wa_wb),
    .rf_wd_wb(rf_wd_wb),
    .jal_ex(jal_ex),
    .jalr_ex(jalr_ex),
    .br_ex(br_ex),

    .rf_rd0_fe(rf_rd0_fe),
    .rf_rd1_fe(rf_rd1_fe),
    .rf_rd0_fd(rf_rd0_fd),
    .rf_rd1_fd(rf_rd1_fd),

    .stall_if(stall_if),
    .stall_id(stall_id),
    .stall_ex(stall_ex),
    .flush_id(flush_id),
    .flush_ex(flush_ex),
    .flush_mem(flush_mem)
);

assign inst = im_dout;
assign dm_dout = mem_dout;

assign im_addr = pc_cur_if;
assign mem_addr = alu_ans_mem;
assign mem_din = dm_din_mem;
assign mem_we = dm_we_mem;

//debug segment

wire [2:0] check_addr;

wire [31:0] check_data_if;
wire [31:0] check_data_id;
wire [31:0] check_data_ex;
wire [31:0] check_data_mem;
wire [31:0] check_data_wb;
wire [31:0] check_data_hzd;

wire [31:0] check_data;
wire [31:0] cpu_check_data_res;

Check_Data_SEL IF_Check_Data_SEL(
    .pc_cur(pc_cur_if),
    .instruction(inst),

    .rf_ra0(inst[19:15]),
    .rf_ra1(inst[24:20]),
    .rf_re0(1'h0),
    .rf_re1(1'h0),
    .rf_rd0_raw(32'h0),
    .rf_rd1_raw(32'h0),
    .rf_rd0(32'h0),
    .rf_rd1(32'h0),
    .rf_wa(inst[11:7]),
    .rf_wd_sel(2'h0),
    .rf_we(1'h0),

    .immediate(32'h0),

    .alu_sr1(32'h0),
    .alu_sr2(32'h0),
    .alu_func(4'hf),
    .alu_ans(32'h0),

    .pc_add4(pc_add4_if),
    .pc_br(32'h0),
    .pc_jal(32'h0),
    .pc_jalr(32'h0),
    .pc_sel(2'h0),
    .pc_next(32'h0),
    .dm_addr(32'h0),
    .dm_din(32'h0),
    .dm_dout(32'h0),
    .dm_we(1'h0),

    .check_addr(cpu_check_addr[4:0]),
    .check_data(check_data_if)
);

Check_Data_SEL ID_Check_Data_SEL(
    .pc_cur(pc_cur_id),
    .instruction(inst_id),

    .rf_ra0(rf_ra0_id),
    .rf_ra1(rf_ra1_id),
    .rf_re0(rf_re0_id),
    .rf_re1(rf_re1_id),
    .rf_rd0_raw(rf_rd0_raw_id),
    .rf_rd1_raw(rf_rd1_raw_id),
    .rf_rd0(32'h0),
    .rf_rd1(32'h0),
    .rf_wa(rf_wa_id),
    .rf_wd_sel(rf_wd_sel_id),
    .rf_we(rf_we_id),

    .immediate(imm_id),

    .alu_sr1(32'h0),
    .alu_sr2(32'h0),
    .alu_func(alu_func_id),
    .alu_ans(32'h0),

    .pc_add4(pc_add4_id),
    .pc_br(32'h0),
    .pc_jal(32'h0),
    .pc_jalr(32'h0),
    .pc_sel(2'h0),
    .pc_next(32'h0),
    .dm_addr(32'h0),
    .dm_din(32'h0),
    .dm_dout(32'h0),
    .dm_we(dm_we_id),

    .check_addr(cpu_check_addr[4:0]),
    .check_data(check_data_id)
);

Check_Data_SEL EX_Check_Data_SEL(
    .pc_cur(pc_cur_ex),
    .instruction(inst_ex),

    .rf_ra0(rf_ra0_ex),
    .rf_ra1(rf_ra1_ex),
    .rf_re0(rf_re0_ex),
    .rf_re1(rf_re1_ex),
    .rf_rd0_raw(rf_rd0_raw_ex),
    .rf_rd1_raw(rf_rd1_raw_ex),
    .rf_rd0(rf_rd0_ex),
    .rf_rd1(rf_rd1_ex),
    .rf_wa(rf_wa_ex),
    .rf_wd_sel(rf_wd_sel_ex),
    .rf_we(rf_we_ex),

    .immediate(imm_ex),

    .alu_sr1(alu_src1_ex),
    .alu_sr2(alu_src2_ex),
    .alu_func(alu_func_ex),
    .alu_ans(alu_ans_ex),

    .pc_add4(pc_add4_ex),
    .pc_br(alu_ans_ex),
    .pc_jal(alu_ans_ex),
    .pc_jalr(pc_jalr_ex),
    .pc_sel(jal_ex || jalr_ex || br_ex),
    .pc_next(pc_next),
    .dm_addr(alu_ans_ex),
    .dm_din(rf_rd1_ex),
    .dm_dout(32'h0),
    .dm_we(dm_we_ex),

    .check_addr(cpu_check_addr[4:0]),
    .check_data(check_data_ex)
);

Check_Data_SEL MEM_Check_Data_SEL(
    .pc_cur(pc_cur_mem),
    .instruction(inst_mem),

    .rf_ra0(rf_ra0_mem),
    .rf_ra1(rf_ra1_mem),
    .rf_re0(rf_re0_mem),
    .rf_re1(rf_re1_mem),
    .rf_rd0_raw(rf_rd0_raw_mem),
    .rf_rd1_raw(rf_rd1_raw_mem),
    .rf_rd0(rf_rd0_mem),
    .rf_rd1(rf_rd1_mem),
    .rf_wa(rf_wa_mem),
    .rf_wd_sel(rf_wd_sel_mem),
    .rf_we(rf_we_mem),

    .immediate(imm_mem),

    .alu_sr1(alu_src1_mem),
    .alu_sr2(alu_src2_mem),
    .alu_func(alu_func_mem),
    .alu_ans(alu_ans_mem),

    .pc_add4(pc_add4_mem),
    .pc_br(pc_br_mem),
    .pc_jal(pc_jal_mem),
    .pc_jalr(pc_jalr_mem),
    .pc_sel(jal_mem || jalr_mem || br_mem),
    .pc_next(pc_next_mem),
    .dm_addr(dm_addr_mem),
    .dm_din(dm_din_mem),
    .dm_dout(dm_dout),
    .dm_we(dm_we_mem),

    .check_addr(cpu_check_addr[4:0]),
    .check_data(check_data_mem)
);

Check_Data_SEL WB_Check_Data_SEL(
    .pc_cur(pc_cur_wb),
    .instruction(inst_wb),

    .rf_ra0(rf_ra0_wb),
    .rf_ra1(rf_ra1_wb),
    .rf_re0(rf_re0_wb),
    .rf_re1(rf_re1_wb),
    .rf_rd0_raw(rf_rd0_raw_wb),
    .rf_rd1_raw(rf_rd1_raw_wb),
    .rf_rd0(rf_rd0_wb),
    .rf_rd1(rf_rd1_wb),
    .rf_wa(rf_wa_wb),
    .rf_wd_sel(rf_wd_sel_wb),
    .rf_we(rf_we_wb),

    .immediate(imm_wb),

    .alu_sr1(alu_src1_wb),
    .alu_sr2(alu_src2_wb),
    .alu_func(alu_func_wb),
    .alu_ans(alu_ans_wb),

    .pc_add4(pc_add4_wb),
    .pc_br(pc_br_wb),
    .pc_jal(pc_jal_wb),
    .pc_jalr(pc_jalr_wb),
    .pc_sel(jal_wb || jalr_wb || br_wb),
    .pc_next(pc_next_wb),
    .dm_addr(dm_addr_wb),
    .dm_din(dm_din_wb),
    .dm_dout(dm_dout_wb),
    .dm_we(dm_we_wb),

    .check_addr(cpu_check_addr[4:0]),
    .check_data(check_data_wb)
);

Check_Data_SEL_HZD Check_Data_SEL_HZD(
    .rf_ra0_ex(rf_ra0_ex),
    .rf_ra1_ex(rf_ra1_ex),
    //TODO:
    .pc_sel_ex(jal_ex || jalr_ex || br_ex),
    .rf_we_mem(rf_we_mem),
    .rf_wa_mem(rf_wa_mem),
    .rf_wd_sel_mem(rf_wd_sel_mem),
    .alu_ans_mem(alu_ans_mem),
    .pc_add4_mem(pc_add4_mem),
    .imm_mem(imm_mem),
    .rf_we_wb(rf_we_wb),
    .rf_wa_wb(rf_wa_wb),
    .rf_wd_wb(rf_wd_wb),

    .rf_rd0_fe(rf_rd0_fe),
    .rf_rd1_fe(rf_rd1_fe),
    .rf_rd0_fd(rf_rd0_fd),
    .rf_rd1_fd(rf_rd1_fd),

    .stall_if(stall_if),
    .stall_id(stall_id),
    .stall_ex(stall_ex),
    .flush_id(flush_id),
    .flush_ex(flush_ex),
    .flush_mem(flush_mem),

    .check_addr(cpu_check_addr[4:0]),
    .check_data(check_data_hzd)
);

Check_Data_SEG_SEL Check_Data_SEG_SEL(
    //control
    .check_addr(cpu_check_addr[7:5]),

    //input
    .check_data_if(check_data_if),
    .check_data_id(check_data_id),
    .check_data_ex(check_data_ex),
    .check_data_mem(check_data_mem),
    .check_data_wb(check_data_wb),
    .check_data_hzd(check_data_hzd),

    //output
    .check_data(check_data)
);

MUX Check_Data_MUX(
    .sel(cpu_check_addr[12]),
    .src0(check_data),
    .src1(rf_rd_dbg_id),
    .res(cpu_check_data_res)
);

assign current_pc = pc_cur_if;
assign next_pc = pc_next;
assign cpu_check_data = cpu_check_data_res;
endmodule