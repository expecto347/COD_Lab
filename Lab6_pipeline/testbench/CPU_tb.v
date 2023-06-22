`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.04.20
 */

// CPU testbench
module CPU_tb();
    localparam INDEX_WIDTH          = 4;
    localparam WORD_OFFSET_WIDTH    = 2;

    reg cpu_clk, cpu_rst;
    Top#(
        .INDEX_WIDTH        (INDEX_WIDTH),
        .WORD_OFFSET_WIDTH  (WORD_OFFSET_WIDTH)
    )
    cpu (
        .cpu_clk(cpu_clk),
        .cpu_rst(cpu_rst)
    );

    // Set the signals

    initial begin
        cpu_clk = 0;
        cpu_rst = 1;

        #102 cpu_rst = 0;
    end

    always #5 cpu_clk <= ~cpu_clk;      // 10ns Clock

endmodule
