`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.04.13
 */

module Top(
    input clk,	// system clock

    // Input: buttons and switches
    input btn,      // button
    input [7:0] sw,	// sw7-0 IMPORTANT: SW7 IS THE SYSTEM RESET SIGNAL!

    // Output: leds and segments	
    output [7:0] led,	            // led7-0
    output [2:0] hexplay_an,		// hexplay_an
    output [3:0] hexplay_data,		// hexplay_data

    // Uart: data transmission
    input uart_din,         // uart_tx
    output uart_dout        // uart_rx
);

    wire[31:0] cpu_check_data, cpu_check_addr, mem_check_data, mem_check_addr;
    wire[31:0] mem_addr, mem_din, mem_dout, im_addr, im_dout;
    wire [31:0] current_pc, next_pc;
    wire [31:0] mmio_dout, dm_dout;
    wire mem_we, mmio_we, dm_we;
    wire cpu_rst, cpu_clk;
    wire rst;

    // IMPORTANT
    assign rst = sw[7];
    // IMPORTANT
         
    // When address begins with 0x7f, that's MMIO =========================
    assign mem_dout = (mem_addr[15:8] == 8'h7f) ? mmio_dout : dm_dout;    
    assign mmio_we = (mem_addr[15:8] == 8'h7f) ? mem_we : 0;
    assign dm_we = (mem_addr[15:8] == 8'h7f) ? 0 : mem_we;
    // When address begins with 0x7f, that's MMIO =========================



    PDU pdu(
        .clk(clk),	// system clock
        .rst(rst),  // system rst

        // ================================ Peripherals Part ================================
        // Input: buttons and switches
        .btn(btn),                          // button
        .sw(sw),	                        // sw7-0

        // Output: leds and segments	
        .led(led),	                        // led7-0
        .hexplay_an(hexplay_an),		    // hexplay_an
        .hexplay_data(hexplay_data),		// hexplay_data

        // Uart: data transmission  
        .uart_din(uart_din),                // uart_tx
        .uart_dout(uart_dout),              // uart_rx


        // ================================ MMIO Part ================================
        // MMIO BUS
        .mmio_addr(mem_addr),             // MMIO address
        .mmio_we(mmio_we),                // MMIO writing enable
        .mmio_din(mem_din),              // Data from MMIO to CPU
        .mmio_dout(mmio_dout),             // Data from CPU to MMIO


        // ================================ Debug Part ================================
        // CPU control signals
        .cpu_rst(cpu_rst),
        .cpu_clk(cpu_clk),

        // CPU debug bus
        .cpu_check_data(cpu_check_data),
        .cpu_check_addr(cpu_check_addr),
        .current_pc(current_pc),
        .next_pc(next_pc),

        // MEM debug BUS
        .mem_check_addr(mem_check_addr),
        .mem_check_data(mem_check_data)
    );



    CPU cpu (
        .clk(cpu_clk), 
        .rst(cpu_rst),

        // ================================ Memory and MMIO Part ================================
        // MEM And MMIO Data BUS
        .im_addr(im_addr),
        .im_dout(im_dout),
        .mem_addr(mem_addr),
        .mem_we(mem_we),			
        .mem_din(mem_din),	
        .mem_dout(mem_dout),


        // ================================ Debug Part ================================
        // Debug BUS with PDU
        .current_pc(current_pc), 	 
        .next_pc(next_pc),   
        .cpu_check_addr(cpu_check_addr),	
        .cpu_check_data(cpu_check_data)    
    );



    MEM memory (
        .clk(cpu_clk),
        // No reset signals here


        // ================================ Memory Part ================================
        // MEM Data BUS with CPU
        .im_addr(im_addr),
        .im_dout(im_dout),
        .dm_addr(mem_addr),
        .dm_we(dm_we),
        .dm_din(mem_din),
        .dm_dout(dm_dout),
        

        // ================================ Debug Part ================================
        // MEM Debug BUS
        .mem_check_addr(mem_check_addr),
        .mem_check_data(mem_check_data)
    );
endmodule