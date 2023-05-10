/* 
 *   Author: wintermelon
 *   Last update: 2023.04.13
 */

module Memory_Map(
    input clk,
    input rst,

    // Memory address, the same as Memory inside CPU
    input [31:0] mmio_addr,   // Data memory address
    input mmio_we,    // Data memory writing enable
    output reg [31:0] mmio_dout,    // Data memory input
    input [31:0] mmio_din,  // Data memory output

    // Control signal with outside
    input btn,
    output [3:0] led_30,

    // Data bus with PDU
    input [31:0] shift_reg_data,
    output [31:0] pc_seg_data,
    output pc_seg_vld
);

    // MMIO
    localparam BTN_STATUS = 32'h0000_7f00;
    localparam SW_INPUT = 32'h0000_7f04;
    localparam SEG_OUTPUT = 32'h0000_7f08;
    localparam LED0 = 32'h0000_7f0c; 
    localparam LED1 = 32'h0000_7f10;
    localparam LED2 = 32'h0000_7f14;
    localparam LED3 = 32'h0000_7f18;

    // Registers
    reg [31:0] btn_status;   
    reg [31:0] sw_input; 
    reg [31:0] seg_output;     
    reg [31:0] led0;
    reg [31:0] led1;
    reg [31:0] led2; 
    reg [31:0] led3;    

    // Decide dm_data
    always @(*) begin
        mmio_dout = 0;
        case (mmio_addr)
            BTN_STATUS: mmio_dout = btn_status;
            SW_INPUT: mmio_dout = sw_input;
            SEG_OUTPUT: mmio_dout = seg_output;
            LED0: mmio_dout = led0;
            LED1: mmio_dout = led1;
            LED2: mmio_dout = led2;
            LED3: mmio_dout = led3;
        endcase
    end

    // Decide different registers

    // Switches
    always @(posedge clk) begin
        if (rst) begin
            sw_input <= 0;
        end
        else begin
            if (btn)
                sw_input <= shift_reg_data;
        end
    end


    // Button
    always @(posedge clk) begin
        if (rst) begin
            btn_status <= 0;
        end
        else begin
            if (btn)
                btn_status <= 1;
            else if (mmio_we && mmio_addr == BTN_STATUS)
                btn_status <= mmio_din;
        end
    end


    // Segments
    reg seg_vld_r1, seg_vld_r2;     // Get the seg_vld posedge: 2 level
    wire seg_vld;
    always @(posedge clk) begin
        if (rst) begin
            seg_output <= 0;
        end
        else begin
            if (mmio_we && mmio_addr == SEG_OUTPUT) begin
                seg_output <= mmio_din;
            end
        end
    end
    assign seg_vld = (mmio_we && mmio_addr == SEG_OUTPUT) ? 1 : 0;

    always @(posedge clk) begin
        if (rst) begin
            seg_vld_r1 <= 0;
            seg_vld_r2 <= 0;
        end
        else begin
            seg_vld_r1 <= seg_vld;
            seg_vld_r2 <= seg_vld_r1;
        end
    end

    assign pc_seg_data = seg_output;
    assign pc_seg_vld = (~seg_vld_r2 && seg_vld_r1) ? 1 : 0;


    // LED[1:0]
    always @(posedge clk) begin
        if (rst) begin
            led0 <= 0;
            led1 <= 0;
            led2 <= 0;
            led3 <= 0;
        end
        else begin
            if (mmio_we && mmio_addr == LED0)
                led0 <= mmio_din;
            if (mmio_we && mmio_addr == LED1)
                led1 <= mmio_din;
            if (mmio_we && mmio_addr == LED2)
                led2 <= mmio_din;
            if (mmio_we && mmio_addr == LED3)
                led3 <= mmio_din;
        end
    end

    assign led_30 = {{led3[0]}, {led2[0]}, {led1[0]}, {led0[0]}};

endmodule