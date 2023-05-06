`timescale 1ns / 1ps

/* 
 *   Author: wintermelon
 *   Last update: 2023.04.07
 */

module PDU(
    input clk,	// system clock
    input rst,  // system reset

    // Input: buttons and switches
    input [7:0] sw,	// sw7-0

    // Output: leds and segments	
    output [7:0] led,	            // led7-0
    output [2:0] hexplay_an,		// hexplay_an
    output [3:0] hexplay_data,		// hexplay_data

    // Uart: data transmission
    input uart_din,          // uart_tx
    output uart_dout,        // uart_rx, Unused!

    // I/O bus:
    input [31:0] dout,
    output [31:0] din,
    output [31:0] hex,
    
    // Control signals
    output add,          		
    output del,     
    output set 
);


    wire din_vld;
    wire [7:0] din_data;
    Receive rcv (
        .clk(clk),
        .rst(rst),

        .din(uart_din),
        .din_vld(din_vld),
        .din_data(din_data)
    );

   
    wire [3:0] ded_hex;
    wire ded_pulse, ded_del;
    Ded my_ded (    // Double edge detector
        .clk(clk),
        .rst(rst),

        .sw(sw),
        .hex(ded_hex),
        .pulse(ded_pulse),
        .del(ded_del)
    );


    wire decode_set, decode_add, decode_del;
    wire [31:0] decode_dout;
    wire [3:0] decode_hex;
    Decode decoder (
        .clk(clk),
        .rst(rst),

        .din_vld(din_vld),
        .din_data(din_data),

        .dout(decode_dout),
        .hex(decode_hex),
        .del(decode_del),
        .set(decode_set),
        .add(decode_add)
    );

    wire [31:0] seg_data;

    Segment seg (   // Segment display
        .clk(clk),
        .rst(rst),

        .data(seg_data),
        .seg_an(hexplay_an),
        .seg_data(hexplay_data)
    );

    assign seg_data = dout;
    assign led = {8{1'b1}};
    assign set = decode_set;
    assign din = decode_dout;
    assign add = decode_add | ded_pulse;
    assign del = decode_del | ded_del;
    assign hex = decode_add ? decode_hex : ded_hex;

endmodule
