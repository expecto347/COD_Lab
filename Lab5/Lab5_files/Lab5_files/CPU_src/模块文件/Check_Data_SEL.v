`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.05.05
 */

// This is the debug mux written for you.
/* Ports
    Check_Data_SEL check_data_sel (
        .pc_cur(),
        .instruction(),
        .rf_ra0(),
        .rf_ra1(),
        .rf_re0(),
        .rf_re1(),
        .rf_rd0_raw(),
        .rf_rd1_raw(),
        .rf_rd0(),
        .rf_rd1(),
        .rf_wa(),
        .rf_wd_sel(),
        .rf_wd(),
        .rf_we(),
        .immediate(),
        .alu_sr1(),
        .alu_sr2(),
        .alu_func(),
        .alu_ans(),
        .pc_add4(),
        .pc_br(),
        .pc_jal(),
        .pc_jalr(),
        .pc_sel(),
        .pc_next(),
        .dm_addr(),
        .dm_din(),
        .dm_dout(),
        .dm_we(),   

        .check_addr(),
        .check_data()
    ); 
*/

module Check_Data_SEL (
    input [31:0]                pc_cur,
    input [31:0]                instruction,
    input [4:0]                 rf_ra0,
    input [4:0]                 rf_ra1,
    input                       rf_re0,
    input                       rf_re1,
    input [31:0]                rf_rd0_raw,
    input [31:0]                rf_rd1_raw,
    input [31:0]                rf_rd0,
    input [31:0]                rf_rd1,
    input [4:0]                 rf_wa,
    input [1:0]                 rf_wd_sel,
    input [31:0]                rf_wd,
    input                       rf_we,
    input [31:0]                immediate,
    input [31:0]                alu_sr1,
    input [31:0]                alu_sr2,
    input [3:0]                 alu_func,
    input [31:0]                alu_ans,
    input [31:0]                pc_add4,
    input [31:0]                pc_br,
    input [31:0]                pc_jal,
    input [31:0]                pc_jalr,
    input [1:0]                 pc_sel,
    input [31:0]                pc_next,
    input [31:0]                dm_addr,
    input [31:0]                dm_din,
    input [31:0]                dm_dout,
    input                       dm_we,

    input [4:0]                 check_addr,
    output reg [31:0]           check_data
);

    always @(*) begin
        check_data = 0;     // Default value

        case (check_addr)
            5'd0: check_data = pc_cur;
            5'd1: check_data = instruction;
            5'd2: check_data = rf_ra0;
            5'd3: check_data = rf_ra1;
            5'd4: check_data = rf_re0;
            5'd5: check_data = rf_re1;
            5'd6: check_data = rf_rd0_raw;
            5'd7: check_data = rf_rd1_raw;
            5'd8: check_data = rf_rd0;
            5'd9: check_data = rf_rd1;
            5'd10: check_data = rf_wa;
            5'd11: check_data = rf_wd_sel;
            5'd12: check_data = rf_wd;
            5'd13: check_data = rf_we;
            5'd14: check_data = immediate;
            5'd15: check_data = alu_sr1;
            5'd16: check_data = alu_sr2;
            5'd17: check_data = alu_func;
            5'd18: check_data = alu_ans;
            5'd19: check_data = pc_add4;
            5'd20: check_data = pc_br;
            5'd21: check_data = pc_jal;
            5'd22: check_data = pc_jalr;
            5'd23: check_data = pc_sel;
            5'd24: check_data = pc_next;
            5'd25: check_data = dm_addr;
            5'd26: check_data = dm_din;
            5'd27: check_data = dm_dout;
            5'd28: check_data = dm_we;
        endcase
    end

endmodule