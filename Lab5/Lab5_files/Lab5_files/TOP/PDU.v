`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.04.13
 */

module PDU(
    input clk,	// system clock
    input rst,  // system rst

    // ================================ Peripherals Part ================================
    // Input: buttons and switches
    input btn,      // button
    input [7:0] sw,	// sw7-0

    // Output: leds and segments	
    output [7:0] led,	    // led7-0
    output [2:0] hexplay_an,		// hexplay_an
    output [3:0] hexplay_data,		// hexplay_data

    // Uart: data transmission
    input uart_din,         // uart_tx
    output uart_dout,        // uart_rx


    // ================================ MMIO Part ================================
    // MMIO BUS
    input [31:0] mmio_addr,       
    input mmio_we,   
    input [31:0] mmio_din,           
    output [31:0] mmio_dout,        
     

    // ================================ Debug Part ================================
    // CPU control signals
    output cpu_rst,
    output cpu_clk,


    // CPU debug bus
    input [31:0] cpu_check_data,
    output [31:0] cpu_check_addr,
    input [31:0] current_pc,
    input [31:0] next_pc,

    // MEM debug bus
    output [31:0] mem_check_addr,
    input [31:0] mem_check_data
);

    wire[31:0] check_addr, check_data;
    assign mem_check_addr = check_addr;
    assign cpu_check_addr = check_addr;
    assign check_data = (check_addr[15:8] == 8'h20) ? mem_check_data : cpu_check_data;
    // ^^^^^^^^ Very important! ^^^^^^^^

    reg btn_r1, btn_r2, btn_r3;
    wire pos_btn;
    always @(posedge clk) begin
        if (rst) begin
            btn_r1 <= 0;
            btn_r2 <= 0;
            btn_r3 <= 0;
        end
        else begin
            btn_r1 <= btn;
            btn_r2 <= btn_r1;
            btn_r3 <= btn_r2;
        end
    end 
    assign pos_btn = (btn_r2 && ~btn_r3) ? 1 : 0;


    wire din_vld;
    wire [7:0] din_data;
    Receive rcv (
        .clk(clk),
        .rst(rst),

        .din(uart_din),
        .din_vld(din_vld),
        .din_data(din_data)
    );

    wire dout_vld;
    wire [7:0] dout_data;
    Send send(
        .clk(clk),
        .rst(rst),

        .dout(uart_dout),
        .dout_vld(dout_vld),
        .dout_data(dout_data)
    );


    wire [3:0] ded_hex;
    wire ded_add, ded_del;
    Ded my_ded (
        .clk(clk),
        .rst(rst),
        .sw(sw),

        .hex(ded_hex),
        .add(ded_add),
        .del(ded_del)   // Unused here
    );


    wire [31:0] pc_seg_data, shift_reg_data;
    wire pc_seg_vld;
    wire [3:0] led_30;

    Memory_Map mmp(
        .clk(clk),
        .rst(rst),

        // MMIO BUS
        .mmio_addr(mmio_addr),   
        .mmio_we(mmio_we),    
        .mmio_dout(mmio_dout),    
        .mmio_din(mmio_din),  


        // Control signal with outside
        .btn(pos_btn),
        .led_30(led_30),

        // Data bus with PDU
        .shift_reg_data(shift_reg_data),
        .pc_seg_data(pc_seg_data),
        .pc_seg_vld(pc_seg_vld)
    );


    wire [31:0] segment_data;
    wire [7:0] ctrl_led;
    PDU_ctrl control (
        .clk(clk),
        .rst(rst),

        // Data bus with outside
        .din_vld(din_vld),
        .din_data(din_data),
        .dout_vld(dout_vld),
        .dout_data(dout_data),

        .btn(pos_btn),
        .segment_data(segment_data),
        .led(ctrl_led),

        // Data bus with PDU
        .shift_reg_data(shift_reg_data),

        // Data bus with CPU
        .check_addr(check_addr),
        .check_data(check_data),

        .pc_seg_data(pc_seg_data),
        .pc_seg_vld(pc_seg_vld),
    

        // Control signal with CPU
        .cpu_rst(cpu_rst),
        .cpu_clk(cpu_clk),
        .current_pc(current_pc),
        .next_pc(next_pc)
    );


    
    Shift_reg my_reg( 
        .clk(clk),
        .rst(rst),                

        .din(32'b0),
        .hex(ded_hex),
        .add(ded_add),
        .del(1'b0),
        .set(pos_btn),
        
        .dout(shift_reg_data)
    );


    Segment seg (   
        .clk(clk),
        .rst(rst),

        .data(segment_data),
        .seg_an(hexplay_an),
        .seg_data(hexplay_data)
    );

    assign led[3:0] = led_30;
    assign led[7:4] = ctrl_led[7:4];

    
endmodule
