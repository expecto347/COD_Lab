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
    output reg [31:0] cpu_check_data    // Current datapath state data
);
    
    
    // Write your CPU here!
    // You might need to write these modules:
    //      ALU、RF、Control、Add(Or just add-mode ALU)、And(Or just and-mode ALU)、PCReg、Imm、Branch、Mux、...
endmodule