`timescale 1ns / 1ps
/* 
 *   Author: wintermelon
 *   Last update: 2023.04.13
 */

module PDU_ctrl(
    input clk,
    input rst,

    // Data bus with outside
    input din_vld,
    input [7:0] din_data,
    output dout_vld,
    output [7:0] dout_data,

    input btn,
    output reg [31:0] segment_data,
    output reg [7:0] led,

    // Data bus with PDU
    input [31:0] shift_reg_data,

    // Data bus with CPU
    output reg [31:0] check_addr,
    input [31:0] check_data,

    input [31:0] pc_seg_data,
    input pc_seg_vld,
    

    // Control signal with CPU
    output reg cpu_rst,
    output reg cpu_clk,
    input [31:0] current_pc,
    input [31:0] next_pc
);

    reg [10:0] main_current_state, main_next_state;
    reg [31:0] bp_pc, check_addr_offset;
    reg [20:0] cpu_clk_conter;
    reg print_check, print_bp;
    reg cpu_clk_enable;

    localparam CNT_100T = 'd50;   // Half

    localparam WAIT = 'd0;
    localparam DECODE = 'd1;
    localparam SEG_display = 'd5;
    localparam SEG_done = 'd6;

    localparam PRINT_CHECK = 'd100;
    localparam PRINT_CHECK_done = 'd101;

    localparam PRINT_BP = 'd102;
    localparam PRINT_BP_done = 'd103;

    localparam STEP_SUB_s = 'd10;
    localparam STEP_t = 'd11;
    localparam STEP_e = 'd12;
    localparam STEP_p = 'd13;
    localparam STEP_done = 'd15;

    localparam RUN_RST_r = 'd20;
    localparam RUN_u = 'd21;
    localparam RUN_n = 'd22;
    localparam RUN_enter = 'd23;
    localparam RUN_done = 'd24;

    localparam CHECK_c = 'd30;
    localparam CHECK_k = 'd31;
    localparam CHECK_done = 'd32;
    localparam CHECK_1 = 'd33;  // RF
    localparam CHECK_2 = 'd34;  // DM
    localparam CHECK_0 = 'd35;  // Datapath status
    localparam CHECK_input = 'd36;
    localparam CHECK_00 = 'd130;
    localparam CHECK_01 = 'd131;
    localparam CHECK_02 = 'd132;
    localparam CHECK_03 = 'd133;
    localparam CHECK_04 = 'd134;
    localparam CHECK_05 = 'd135;

    localparam ADD_a = 'd40;
    localparam ADD_d1 = 'd41;
    localparam ADD_d2 = 'd42;
    localparam ADD_done = 'd43;

    localparam SUB_u = 'd52;
    localparam SUB_b = 'd53;
    localparam SUB_done = 'd54;

    localparam BP_b = 'd60;
    localparam BP_p = 'd61;
    localparam BP_done = 'd62;

    localparam RST_s = 'd71;
    localparam RST_t = 'd72;
    localparam RST_done = 'd73;


    initial begin
        main_current_state <= WAIT;
        main_next_state <= WAIT;
        bp_pc <= 0;
        cpu_rst <= 0;
    end


    // FSM Part 1
    always @(posedge clk) begin
        if (rst) 
            main_current_state <= WAIT;
        else
            main_current_state <= main_next_state;
    end


    // Part 2
    always @(*) begin
        main_next_state = main_current_state;

        case (main_current_state) 
            WAIT: begin
                if (din_vld && din_data == "s") begin
                    main_next_state = STEP_SUB_s;
                end
                if (din_vld && din_data == "r") begin
                    main_next_state = RUN_RST_r;
                end
                if (din_vld && din_data == "c") begin
                    main_next_state = CHECK_c;
                end
                if (din_vld && din_data == "a") begin
                    main_next_state = ADD_a;
                end
                if (din_vld && din_data == "b") begin
                    main_next_state = BP_b;
                end
            end

            // ====================== STEP part ======================

            STEP_SUB_s: if (din_vld) begin
                main_next_state = WAIT;
                case (din_data)
                    "t": main_next_state = STEP_t;
                    "u": main_next_state = SUB_u;
                endcase
            end
           
            STEP_t: if (din_vld) begin
                if (din_data == "e")
                    main_next_state = STEP_e;
                else
                    main_next_state = WAIT;
            end
            
            STEP_e: if (din_vld) begin
                if (din_data == "p")
                    main_next_state = STEP_p;
                else
                    main_next_state = WAIT;
            end

            STEP_p: if (din_vld) begin
                if (din_data == ";")
                    main_next_state = STEP_done;
                else
                    main_next_state = WAIT;
            end

            STEP_done: main_next_state = RUN_enter;

            // ====================== RUN part ======================

            RUN_RST_r: if (din_vld) begin
                main_next_state = WAIT;
                case (din_data)
                    "u": main_next_state = RUN_u;
                    "s": main_next_state = RST_s;
                endcase
            end

            RUN_u: if (din_vld) begin
                if (din_data == "n")
                    main_next_state = RUN_n;
                else
                    main_next_state = WAIT;
            end

            RUN_n: if (din_vld) begin
                if (din_data == ";")
                    main_next_state = RUN_enter;
                else
                    main_next_state = WAIT;
            end

            RUN_enter: begin
                if (current_pc == bp_pc || current_pc > 32'h3fff || current_pc < 32'h2ff0)  // TODO: Add a counter
                    main_next_state = RUN_done;
                else if (pc_seg_vld) 
                    main_next_state = SEG_display;

            end

            RUN_done: main_next_state = WAIT;

            // ====================== CHECK part ======================

            CHECK_c: if (din_vld) begin
                if (din_data == "k")
                    main_next_state = CHECK_k;
                else
                    main_next_state = WAIT;
            end

            CHECK_k: if (din_vld) begin
                case (din_data)
                    " ": main_next_state = CHECK_input;
                    "1": main_next_state = CHECK_1;
                    "2": main_next_state = CHECK_2;
                    "0": main_next_state = CHECK_0;
                    default: main_next_state = WAIT;
                endcase
            end 
            
            CHECK_input: if (din_vld && din_data == ";") begin
                main_next_state = CHECK_done;
            end

            CHECK_1: main_next_state = CHECK_input;

            CHECK_2: main_next_state = CHECK_input;

            CHECK_0: if (din_vld) begin
                case (din_data)
                    " ": main_next_state = CHECK_input;
                    "0": main_next_state = CHECK_00;
                    "1": main_next_state = CHECK_01;
                    "2": main_next_state = CHECK_02;
                    "3": main_next_state = CHECK_03;
                    "4": main_next_state = CHECK_04;
                    "5": main_next_state = CHECK_05;
                    default: main_next_state = WAIT;
                endcase
            end

            CHECK_00: main_next_state = CHECK_input;

            CHECK_01: main_next_state = CHECK_input;

            CHECK_02: main_next_state = CHECK_input;

            CHECK_03: main_next_state = CHECK_input;

            CHECK_04: main_next_state = CHECK_input;

            CHECK_05: main_next_state = CHECK_input;

            CHECK_done: main_next_state = PRINT_CHECK;

            // ====================== BREAK_POINT part ======================

            BP_b: if (din_vld) begin
                if (din_data == "p")
                    main_next_state = BP_p;
                else
                    main_next_state = WAIT;
            end

            BP_p: if (din_vld && din_data == ";") begin
                main_next_state = BP_done;
            end

            BP_done: main_next_state = PRINT_BP;

            // ====================== ADD part ======================

            ADD_a: if (din_vld) begin
                if (din_data == "d")
                    main_next_state = ADD_d1;
                else
                    main_next_state = WAIT;
            end

            ADD_d1: if (din_vld) begin
                if (din_data == "d")
                    main_next_state = ADD_d2;
                else
                    main_next_state = WAIT;
            end

            ADD_d2: if (din_vld) begin
                if (din_data == ";")
                    main_next_state = ADD_done;
                else
                    main_next_state = WAIT;
            end

            ADD_done: main_next_state = PRINT_CHECK;

            // ====================== SUB part ======================

            SUB_u: if (din_vld) begin
                if (din_data == "b")
                    main_next_state = SUB_b;
                else
                    main_next_state = WAIT;
            end

            SUB_b: if (din_vld) begin
                if (din_data == ";")
                    main_next_state = SUB_done;
                else
                    main_next_state = WAIT;
            end

            SUB_done: main_next_state = PRINT_CHECK;

            // ====================== RESET part ======================

            RST_s: if (din_vld) begin
                if (din_data == "t")
                    main_next_state = RST_t;
                else
                    main_next_state = WAIT;
            end

            RST_t: if (din_vld) begin
                if (din_data == ";")
                    main_next_state = RST_done;
                else
                    main_next_state = WAIT;
            end

            RST_done: main_next_state = WAIT;

            // ====================== SEGMENT part ======================

            SEG_display: begin
                if (btn) 
                    main_next_state = SEG_done;
            end

            SEG_done: main_next_state = RUN_enter;


            // ====================== CHECKADDR_UOUT part ======================

            PRINT_CHECK: begin
                main_next_state = PRINT_CHECK_done;
            end

            PRINT_CHECK_done: begin
                main_next_state = WAIT;
            end

            // ====================== BREAKPOINT_UOUT part ======================

            PRINT_BP: main_next_state = PRINT_BP_done;

            PRINT_BP_done: main_next_state = WAIT;

        endcase
    end

    // Part 3
    // control signals
    always @(*) begin
        cpu_clk_enable = 0;
        cpu_rst = 0;
        print_check = 0;
        print_bp = 0;

        case (main_current_state)
            RUN_enter: cpu_clk_enable = 1'b1;
            SEG_display: cpu_clk_enable = 1'b1;
            SEG_done: cpu_clk_enable = 1'b1;
            RST_done: cpu_rst = 1'b1;
            PRINT_CHECK: print_check = 1'b1;
            PRINT_BP_done: print_bp = 1'b1;
        endcase
    end
    

    // Decide check_addr
    always @(posedge clk) begin
        if (rst) begin
            check_addr <= 0;
            check_addr_offset <= 0;
        end
        else begin
            case (main_current_state)
                CHECK_c: if (din_vld) begin
                    check_addr <= 0;
                    check_addr_offset <= 0;
                end
                ADD_done: begin
                    check_addr <= check_addr + 1;
                end
                SUB_done: begin
                    check_addr <= check_addr - 1;
                end
                CHECK_1: 
                    check_addr <= 32'h0000_1000;    // RF
                CHECK_2:
                    check_addr <= 32'h0000_2000;    // DM
                CHECK_0:
                    check_addr <= 32'h0;
                CHECK_00: 
                    check_addr <= 32'h0;
                CHECK_01:
                    check_addr <= 32'h0000_0020;    // 001x_0000
                CHECK_02:
                    check_addr <= 32'h0000_0040;    // 010x_0000
                CHECK_03:
                    check_addr <= 32'h0000_0060;    // 011x_0000
                CHECK_04:
                    check_addr <= 32'h0000_0080;    // 100x_0000
                CHECK_05:
                    check_addr <= 32'h0000_00a0;    // 101x_0000
                
                CHECK_input: if (din_vld) begin
                    case (din_data)
                        "0": check_addr_offset <= {{check_addr_offset}, {4'h0}};
                        "1": check_addr_offset <= {{check_addr_offset}, {4'h1}};
                        "2": check_addr_offset <= {{check_addr_offset}, {4'h2}};
                        "3": check_addr_offset <= {{check_addr_offset}, {4'h3}};
                        "4": check_addr_offset <= {{check_addr_offset}, {4'h4}};
                        "5": check_addr_offset <= {{check_addr_offset}, {4'h5}};
                        "6": check_addr_offset <= {{check_addr_offset}, {4'h6}};
                        "7": check_addr_offset <= {{check_addr_offset}, {4'h7}};
                        "8": check_addr_offset <= {{check_addr_offset}, {4'h8}};
                        "9": check_addr_offset <= {{check_addr_offset}, {4'h9}};
                        "a": check_addr_offset <= {{check_addr_offset}, {4'ha}};
                        "b": check_addr_offset <= {{check_addr_offset}, {4'hb}};
                        "c": check_addr_offset <= {{check_addr_offset}, {4'hc}};
                        "d": check_addr_offset <= {{check_addr_offset}, {4'hd}};
                        "e": check_addr_offset <= {{check_addr_offset}, {4'he}};
                        "f": check_addr_offset <= {{check_addr_offset}, {4'hf}};
                    endcase
                end

                CHECK_done: begin
                    check_addr <= check_addr + check_addr_offset;
                end
            endcase 
        end
    end


    // Decide breakpoint
    always @(posedge clk) begin
        if (rst) begin
            bp_pc <= 0;
        end
        else begin
            if (main_current_state == STEP_done) 
                bp_pc <= next_pc;
            else if (main_current_state == BP_b && din_vld) 
                bp_pc <= 0;
            else if (main_current_state == BP_p && din_vld) begin
                case (din_data) 
                    "0": bp_pc <= {{bp_pc}, {4'h0}};
                    "1": bp_pc <= {{bp_pc}, {4'h1}};
                    "2": bp_pc <= {{bp_pc}, {4'h2}};
                    "3": bp_pc <= {{bp_pc}, {4'h3}};
                    "4": bp_pc <= {{bp_pc}, {4'h4}};
                    "5": bp_pc <= {{bp_pc}, {4'h5}};
                    "6": bp_pc <= {{bp_pc}, {4'h6}};
                    "7": bp_pc <= {{bp_pc}, {4'h7}};
                    "8": bp_pc <= {{bp_pc}, {4'h8}};
                    "9": bp_pc <= {{bp_pc}, {4'h9}};
                    "a": bp_pc <= {{bp_pc}, {4'ha}};
                    "b": bp_pc <= {{bp_pc}, {4'hb}};
                    "c": bp_pc <= {{bp_pc}, {4'hc}};
                    "d": bp_pc <= {{bp_pc}, {4'hd}};
                    "e": bp_pc <= {{bp_pc}, {4'he}};
                    "f": bp_pc <= {{bp_pc}, {4'hf}};
                endcase
            end
        end
    end

    // Segment data
    always @(*) begin
        segment_data = 0;

        case (main_current_state)
            WAIT: segment_data = check_data;
            SEG_display: segment_data = pc_seg_data;
            RUN_enter: segment_data = shift_reg_data;
        endcase
    end

    // LED data
    always @(*) begin
        led = 0;
        // LED 3~0 is for CPU
        case (main_current_state)
            WAIT: begin led[4] = 1; end
            RUN_enter: begin led[7] = 1; led[6] = 1; end
            STEP_done: begin led[7] = 1; end
            SEG_display: begin led[7] = 1; led[5] = 1; end
            SEG_done: begin led[7] = 1; end
        endcase
    end

    // Uart data output
    Uout uart_out(
        .clk(clk),
        .rst(rst),

        .check_addr(check_addr),
        .print_check(print_check),

        .bp_addr(bp_pc),
        .print_bp(print_bp),

        .dout_vld(dout_vld),
        .dout_data(dout_data)
    );


    // PC clock
    localparam CPU_CLK_N = 20'd50;
    always @(posedge clk) begin
        if (rst) begin
            cpu_clk_conter <= 0;
            cpu_clk <= 0;
        end
        else begin
            if (cpu_clk_enable || cpu_clk_conter != 0) begin    
                if (cpu_clk_conter == CPU_CLK_N + CPU_CLK_N) begin
                    cpu_clk_conter <= 'h0;
                    cpu_clk <= 0;
                end
                else begin               
                    if (cpu_clk_conter < CPU_CLK_N)
                        cpu_clk <= 1;
                    else 
                        cpu_clk <= 0;
                    cpu_clk_conter <= cpu_clk_conter + 'h1;
                end
            end
        
        end
    end


endmodule
