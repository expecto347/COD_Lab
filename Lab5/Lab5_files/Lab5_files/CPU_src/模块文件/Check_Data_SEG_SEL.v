`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.05.05
 */

// This is the debug mux written for you.
/* Ports
    Check_Data_SEG_SEL check_data_seg_sel (
        .check_data_if(),
        .check_data_id(),
        .check_data_ex(),
        .check_data_mem(),
        .check_data_wb(),
        .check_data_hzd(),

        .check_addr(),
        .check_data()
    ); 
*/

module Check_Data_SEG_SEL (
    input [31:0]            check_data_if,
    input [31:0]            check_data_id,
    input [31:0]            check_data_ex,
    input [31:0]            check_data_mem,
    input [31:0]            check_data_wb,
    input [31:0]            check_data_hzd,

    input [2:0]             check_addr,
    output reg [31:0]       check_data
);

    always @(*) begin
        check_data = 0;     // Default value

        case (check_addr)
            3'd0: check_data = check_data_if;
            3'd1: check_data = check_data_id;
            3'd2: check_data = check_data_ex;
            3'd3: check_data = check_data_mem;
            3'd4: check_data = check_data_wb;
            3'd5: check_data = check_data_hzd;
        endcase
    end

endmodule