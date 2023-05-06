`timescale 1ns / 1ps

/* 
 *   Author: wintermelon
 *   Last update: 2023.04.07
 */

module Decode(
    input clk,
    input rst,

    input din_vld,
    input [7:0] din_data,

    output reg [31:0] dout,
    output reg [3:0] hex,
    output reg del,
    output reg set,
    output reg add
);

    reg [10:0] current_state, next_state;
    reg if_enter;

    localparam WAIT = 'd0;
    localparam DECODE = 'd1;

    localparam SET_1 = 'd10;
    localparam SET_2 = 'd11;
    localparam SET_3 = 'd12;
    localparam SET = 'd13;
    localparam SET_DONE = 'd14;

    localparam ADD_1 = 'd20;
    localparam ADD_2 = 'd21;
    localparam ADD_3 = 'd22;
    localparam ADD = 'd23;
    localparam ADD_DONE = 'd24;

    localparam DEL_1 = 'd30;
    localparam DEL_2 = 'd31;
    localparam DEL_3 = 'd32;
    localparam DEL = 'd33;
    localparam DEL_DONE = 'd34;

    initial begin
        current_state <= 0;
        next_state <= 0;
        if_enter <= 0;
        dout <= 0;
        hex <= 0;
    end

    // FSM Part 1
    always @(*) begin
        next_state = current_state;
        case (current_state) 
            WAIT: begin
                if (din_vld && din_data == "s") begin
                    next_state = SET_1;
                end
                else if (din_vld && din_data == "a") begin
                    next_state = ADD_1;
                end
                else if (din_vld && din_data == "d") begin
                    next_state = DEL_1;
                end
            end

            // ====================== SET part ======================

            SET_1: if (din_vld) begin
                if (din_data == "e")
                    next_state = SET_2;
                else
                    next_state = WAIT;
            end
            
            SET_2: if (din_vld) begin
                if (din_data == "t")
                    next_state = SET_3;
                else
                    next_state = WAIT;
            end

            SET_3: if (din_vld) begin
                if (din_data == " ")
                    next_state = SET;
                else
                    next_state = WAIT;
            end

            SET: if (if_enter) begin
                next_state = SET_DONE;
            end

            SET_DONE: next_state = WAIT;

            // ====================== ADD part ======================

            ADD_1: if (din_vld) begin
                if (din_data == "d")
                    next_state = ADD_2;
                else
                    next_state = WAIT;
            end
            
            ADD_2: if (din_vld) begin
                if (din_data == "d")
                    next_state = ADD_3;
                else
                    next_state = WAIT;
            end

            ADD_3: if (din_vld) begin
                if (din_data == " ")
                    next_state = ADD;
                else
                    next_state = WAIT;
            end

            ADD: if (if_enter) begin
                next_state = ADD_DONE;
            end

            ADD_DONE: next_state = WAIT;

            // ====================== DEL part ======================

            DEL_1: if (din_vld) begin
                if (din_data == "e")
                    next_state = DEL_2;
                else
                    next_state = WAIT;
            end
            
            DEL_2: if (din_vld) begin
                if (din_data == "l")
                    next_state = DEL;
                else
                    next_state = WAIT;
            end

            DEL: if (if_enter) begin
                next_state = DEL_DONE;
            end

            DEL_DONE: next_state = WAIT;

        endcase
    end

    // Part 2
    always @(posedge clk or posedge rst) begin
        if (rst) 
            current_state <= WAIT;
        else
            current_state <= next_state;
    end

    // Part 3
    always @(*) begin
        del = 0;
        set = 0;
        add = 0;

        case(current_state)
            SET_DONE: set = 'b1;
            ADD_DONE: add = 'b1;
            DEL_DONE: del = 'b1;
        endcase 
    end
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            dout <= 0;
        end
        else if (din_vld && current_state == SET_3) begin
            dout <= 0;
        end
        else if (din_vld && current_state == SET) begin
            case (din_data)
                "0": dout <= {{dout}, {4'h0}};
                "1": dout <= {{dout}, {4'h1}};
                "2": dout <= {{dout}, {4'h2}};
                "3": dout <= {{dout}, {4'h3}};
                "4": dout <= {{dout}, {4'h4}};
                "5": dout <= {{dout}, {4'h5}};
                "6": dout <= {{dout}, {4'h6}};
                "7": dout <= {{dout}, {4'h7}};
                "8": dout <= {{dout}, {4'h8}};
                "9": dout <= {{dout}, {4'h9}};
                "a": dout <= {{dout}, {4'ha}};
                "b": dout <= {{dout}, {4'hb}};
                "c": dout <= {{dout}, {4'hc}};
                "d": dout <= {{dout}, {4'hd}};
                "e": dout <= {{dout}, {4'he}};
                "f": dout <= {{dout}, {4'hf}};
            endcase
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            hex <= 0;
        end
        else if (din_vld && current_state == ADD_3) begin
            hex <= 0;
        end
        else if (din_vld && current_state == ADD) begin
            case (din_data)
                "0": hex <= 4'h0;
                "1": hex <= 4'h1;
                "2": hex <= 4'h2;
                "3": hex <= 4'h3;
                "4": hex <= 4'h4;
                "5": hex <= 4'h5;
                "6": hex <= 4'h6;
                "7": hex <= 4'h7;
                "8": hex <= 4'h8;
                "9": hex <= 4'h9;
                "a": hex <= 4'ha;
                "b": hex <= 4'hb;
                "c": hex <= 4'hc;
                "d": hex <= 4'hd;
                "e": hex <= 4'he;
                "f": hex <= 4'hf;
            endcase
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            if_enter <= 0;
        end
        else if (din_vld && din_data == ";") begin
            if_enter <= 1;
        end
        else 
            if_enter <= 0;
    end


endmodule
