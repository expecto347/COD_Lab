`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.04.07
 */

module Top(
    input clk,	// system clock

    // Input: buttons and switches
    input btn,      // button
    input [7:0] sw,	// sw7-0

    // Output: leds and segments	
    output [7:0] led,	            // led7-0
    output [2:0] hexplay_an,		// hexplay_an
    output [3:0] hexplay_data,		// hexplay_data

    // Uart: data transmission
    input uart_din,          // uart_tx
    output uart_dout        // uart_rx
);

    wire [31:0] dout, din;
    wire [3:0] hex;
    wire del, add, set;


    // PDU
    PDU pdu(
        .clk(clk),	
        .rst(btn),  

        // Input: buttons and switches
        // .btn(btn),      
        .sw(sw),	

        // Output: leds and segments	
        .led(led),	            
        .hexplay_an(hexplay_an),		
        .hexplay_data(hexplay_data),	

        // Uart: data transmission
        .uart_din(uart_din),         
        .uart_dout(uart_dout),        

        // I/O bus:
        .dout(dout),
        .din(din),
        .hex(hex),
        
        // Control signals
        .add(add),          		
        .del(del),     
        .set(set)
    );

    // Shift register
    Shift_reg sreg(
        .clk(clk),	
        .rst(btn),       

        // I/O bus:
        .dout(dout),
        .din(din),
        .hex(hex),
        
        // Control signals
        .add(add),          		
        .del(del),     
        .set(set)
    );

endmodule
