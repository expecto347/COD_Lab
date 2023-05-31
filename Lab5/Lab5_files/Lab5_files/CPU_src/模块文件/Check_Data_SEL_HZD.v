`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.05.05
 */

// This is the debug mux written for you.
/* Ports
    Check_Data_SEL_HZD check_data_sel_hzd (
        .rf_ra0_ex(),
        .rf_ra1_ex(),
        .rf_re0_ex(),
        .rf_re1_ex(),
        .pc_sel_ex(),
        .rf_wa_mem(),
        .rf_we_mem(),
        .rf_wd_sel_mem(),
        .alu_ans_mem(),
        .pc_add4_mem(),
        .imm_mem(),
        .rf_wa_wb(),
        .rf_we_wb(),
        .rf_wd_wb(),

        .rf_rd0_fe(),
        .rf_rd1_fe(),
        .rf_rd0_fd(),
        .rf_rd1_fd(),
        .stall_if(),
        .stall_id(),
        .stall_ex(),
        .flush_if(),
        .flush_id(),
        .flush_ex(),
        .flush_mem(),

        .check_addr(),
        .check_data()
    );
*/

module Check_Data_SEL_HZD (
    input [31:0]            rf_ra0_ex,
    input [31:0]            rf_ra1_ex,
    input                   rf_re0_ex,
    input                   rf_re1_ex,
    input [1:0]             pc_sel_ex,
    input [4:0]             rf_wa_mem,
    input                   rf_we_mem,
    input [1:0]             rf_wd_sel_mem,
    input [31:0]            alu_ans_mem,
    input [31:0]            pc_add4_mem,
    input [31:0]            imm_mem,
    input [4:0]             rf_wa_wb,
    input                   rf_we_wb,
    input [31:0]            rf_wd_wb,
    
    input                   rf_rd0_fe,
    input                   rf_rd1_fe,
    input [31:0]            rf_rd0_fd,
    input [31:0]            rf_rd1_fd,
    input                   stall_if,
    input                   stall_id,
    input                   stall_ex,
    input                   flush_if,
    input                   flush_id,
    input                   flush_ex,
    input                   flush_mem,

    input [4:0]             check_addr,
    output reg [31:0]       check_data
);

    always @(*) begin
        check_data = 0;     // Default value

        case (check_addr)
            5'd0: check_data = rf_ra0_ex;
            5'd1: check_data = rf_ra1_ex;
            5'd2: check_data = rf_re0_ex;
            5'd3: check_data = rf_re1_ex;
            5'd4: check_data = pc_sel_ex;
            5'd5: check_data = rf_wa_mem;
            5'd6: check_data = rf_we_mem;
            5'd7: check_data = rf_wd_sel_mem;
            5'd8: check_data = alu_ans_mem;
            5'd9: check_data = pc_add4_mem;
            5'd10: check_data = imm_mem;
            5'd11: check_data = rf_wa_wb;
            5'd12: check_data = rf_we_wb;
            5'd13: check_data = rf_wd_wb;

            5'd14: check_data = rf_rd0_fe;
            5'd15: check_data = rf_rd1_fe;
            5'd16: check_data = rf_rd0_fd;
            5'd17: check_data = rf_rd1_fd;
            5'd18: check_data = stall_if;
            5'd19: check_data = stall_id;
            5'd20: check_data = stall_ex;
            5'd21: check_data = flush_if;
            5'd22: check_data = flush_id;
            5'd23: check_data = flush_ex;
            5'd24: check_data = flush_mem;
        endcase
    end

endmodule