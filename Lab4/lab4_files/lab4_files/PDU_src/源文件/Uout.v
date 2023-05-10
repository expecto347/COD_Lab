/* 
 *   Author: wintermelon
 *   Last update: 2023.04.13
 */

module Uout(
    input clk,
    input rst,

    input [31:0] check_addr,
    input print_check,

    input [31:0] bp_addr,
    input print_bp,

    output dout_vld,
    output [7:0] dout_data
);

    reg [10:0] uout_current_state, uout_next_state;
    wire [63:0] check_addr_ascii, bp_addr_ascii;

    // My woundful registers!
    reg [7:0] code_r1;
    reg [7:0] code_r2;
    reg [7:0] code_r3;
    reg [7:0] code_r4;
    reg [7:0] code_r5;
    reg [7:0] code_r6;
    reg [7:0] code_r7;
    reg [7:0] code_r8;
    reg [7:0] code_r9;
    reg [7:0] code_r10;
    reg [7:0] code_r11;
    reg [7:0] code_r12;
    reg [7:0] code_r13;
    reg [7:0] code_r14;
    reg [7:0] code_r15;
    reg [7:0] code_r16;
    reg [7:0] code_r17;
    reg [7:0] code_r18;
    reg [7:0] code_r19;
    reg [7:0] code_r20;
    reg [7:0] code_r21;
    reg [7:0] code_r22;
    reg [7:0] code_r23;
    reg [7:0] code_r24;
    reg [7:0] code_r25;
    reg [7:0] code_r26;
    reg [7:0] code_r27;
    reg [7:0] code_r28;
    reg [7:0] code_r29;
    reg [7:0] code_r30;
    reg [7:0] code_r31;
    reg [7:0] code_r32;
    reg [7:0] code_r33;
    reg [7:0] code_r34;
    reg [7:0] code_r35;
    reg [7:0] code_r36;
    reg [7:0] code_r37;
    reg [7:0] code_r38;
    reg [7:0] code_r39;
    reg [7:0] code_r40;


    // UART PART
    localparam UOUT_WAIT = 'd0;
    localparam UOUT_PRINT = 'd1;
    localparam UOUT_CHECK_SET = 'd2;
    localparam UOUT_BP_SET = 'd4;

    localparam _N = 8'd10;
    localparam _R = 8'd13;


    reg [19:0] counter_10000T;
    wire clk_100_pos;

    always @(posedge clk) begin
        if (rst)
            uout_current_state <= UOUT_WAIT;
        else
            uout_current_state <= uout_next_state;
    end

    always @(*) begin
        uout_next_state = uout_current_state;

        case (uout_current_state) 
            UOUT_WAIT: begin 
                if (print_check)
                    uout_next_state = UOUT_CHECK_SET;
                else if (print_bp)
                    uout_next_state = UOUT_BP_SET;
            end

            UOUT_CHECK_SET: uout_next_state = UOUT_PRINT;
            
            UOUT_PRINT: if (code_r1 == 0)
                uout_next_state = UOUT_WAIT;

            UOUT_BP_SET: uout_next_state = UOUT_PRINT;

            
        endcase
    end



    
    // 115200 bits/sec -> 1000 clks
    always @(posedge clk) begin
        if (rst) 
            counter_10000T <= 0;
        else begin
            if (counter_10000T >= 20'd12000)
                counter_10000T <= 0;
            else if (uout_current_state == UOUT_PRINT)
                counter_10000T <= counter_10000T + 1;           
            else
                counter_10000T <= 0;
        end
    end

    assign clk_100_pos = (counter_10000T == 20'd11000);

    always @(posedge clk) begin
        if (rst) begin
            code_r1 <= 0;
            code_r2 <= 0;
            code_r3 <= 0;
            code_r4 <= 0;
            code_r5 <= 0;
            code_r6 <= 0;
            code_r7 <= 0;
            code_r8 <= 0;
            code_r9 <= 0;
            code_r10 <= 0;
            code_r11 <= 0;
            code_r12 <= 0;
            code_r13 <= 0;
            code_r14 <= 0;
            code_r15 <= 0;
            code_r16 <= 0;
            code_r17 <= 0;
            code_r18 <= 0;
            code_r19 <= 0;
            code_r20 <= 0;
            code_r21 <= 0;
            code_r22 <= 0;
            code_r23 <= 0;
            code_r24 <= 0;
            code_r25 <= 0;
            code_r26 <= 0;
            code_r27 <= 0;
            code_r28 <= 0;
            code_r29 <= 0;
            code_r30 <= 0;
            code_r31 <= 0;
            code_r32 <= 0;
            code_r33 <= 0;
            code_r34 <= 0;
            code_r35 <= 0;
            code_r36 <= 0;
            code_r37 <= 0;
            code_r38 <= 0;
            code_r39 <= 0;
            code_r40 <= 0;
        end
        else case(uout_current_state) 

            UOUT_CHECK_SET: begin
                code_r1 <= "C";
                code_r2 <= "h";
                code_r3 <= "e";
                code_r4 <= "c";
                code_r5 <= "k";
                code_r6 <= " ";
                code_r7 <= "a";
                code_r8 <= "d";
                code_r9 <= "d";
                code_r10 <= "r";
                code_r11 <= "e";
                code_r12 <= "s";
                code_r13 <= "s";
                code_r14 <= " ";
                code_r15 <= "i";
                code_r16 <= "s";
                code_r17 <= ":";
                code_r18 <= "0";
                code_r19 <= "x";
                code_r20 <= check_addr_ascii[63:56];
                code_r21 <= check_addr_ascii[55:48];
                code_r22 <= check_addr_ascii[47:40];
                code_r23 <= check_addr_ascii[39:32];
                code_r24 <= check_addr_ascii[31:24];
                code_r25 <= check_addr_ascii[23:16];
                code_r26 <= check_addr_ascii[15:8];
                code_r27 <= check_addr_ascii[7:0];
                code_r28 <= _N;
                code_r29 <= _R;
            end

            UOUT_BP_SET: begin
                code_r1 <= "S";
                code_r2 <= "e";
                code_r3 <= "t";
                code_r4 <= " ";
                code_r5 <= "b";
                code_r6 <= "r";
                code_r7 <= "e";
                code_r8 <= "a";
                code_r9 <= "k";
                code_r10 <= "p";
                code_r11 <= "o";
                code_r12 <= "i";
                code_r13 <= "n";
                code_r14 <= "t";
                code_r15 <= " ";
                code_r16 <= "t";
                code_r17 <= "o";
                code_r18 <= " ";
                code_r19 <= "0";
                code_r20 <= "x";
                code_r21 <= bp_addr_ascii[63:56];
                code_r22 <= bp_addr_ascii[55:48];
                code_r23 <= bp_addr_ascii[47:40];
                code_r24 <= bp_addr_ascii[39:32];
                code_r25 <= bp_addr_ascii[31:24];
                code_r26 <= bp_addr_ascii[23:16];
                code_r27 <= bp_addr_ascii[15:8];
                code_r28 <= bp_addr_ascii[7:0];
                code_r29 <= _N;
                code_r30 <= _R;
            end


            UOUT_PRINT: if (clk_100_pos) begin
                code_r1 <= code_r2; 
                code_r2 <= code_r3;
                code_r3 <= code_r4;
                code_r4 <= code_r5;
                code_r5 <= code_r6;
                code_r6 <= code_r7;
                code_r7 <= code_r8;
                code_r8 <= code_r9;
                code_r9 <= code_r10;
                code_r10 <= code_r11;
                code_r11 <= code_r12;
                code_r12 <= code_r13;
                code_r13 <= code_r14;
                code_r14 <= code_r15;
                code_r15 <= code_r16;
                code_r16 <= code_r17;
                code_r17 <= code_r18;
                code_r18 <= code_r19;
                code_r19 <= code_r20;
                code_r20 <= code_r21;
                code_r21 <= code_r22;
                code_r22 <= code_r23;
                code_r23 <= code_r24;
                code_r24 <= code_r25;
                code_r25 <= code_r26;
                code_r26 <= code_r27;
                code_r27 <= code_r28;
                code_r28 <= code_r29;
                code_r29 <= code_r30;
                code_r30 <= code_r31;
                code_r31 <= code_r32;
                code_r32 <= code_r33;
                code_r33 <= code_r34;
                code_r34 <= code_r35;
                code_r35 <= code_r36;
                code_r36 <= code_r37;
                code_r37 <= code_r38;
                code_r38 <= code_r39;
                code_r39 <= code_r40;
                code_r40 <= 0;            
            end
        endcase
    end


    assign dout_data = code_r1;
    assign dout_vld = (counter_10000T == 20'd100) && (uout_current_state == UOUT_PRINT);

    Hex2ASC check_addr_trans(
        .number(check_addr),
        .ascii(check_addr_ascii)
    );
    Hex2ASC bp_addr_trans(
        .number(bp_addr),
        .ascii(bp_addr_ascii)
    );

endmodule

// localparam _0 = 'd48;
//     localparam _1 = 'd49;
//     localparam _2 = 'd50;
//     localparam _3 = 'd51;
//     localparam _4 = 'd52;
//     localparam _5 = 'd53;
//     localparam _6 = 'd54;
//     localparam _7 = 'd55;
//     localparam _8 = 'd56;
//     localparam _9 = 'd57;

//     localparam _0 = 'd48;
//     localparam _1 = 'd49;
//     localparam _2 = 'd50;
//     localparam _3 = 'd51;
//     localparam _4 = 'd52;
//     localparam _5 = 'd53;
//     localparam _6 = 'd54;
//     localparam _7 = 'd55;
//     localparam _8 = 'd56;
//     localparam _9 = 'd57;

//     localparam _A = 'd65;
//     localparam _B = 'd66;
//     localparam _C = 'd67;
//     localparam _D = 'd68;
//     localparam _E = 'd69;
//     localparam _F = 'd70;
//     localparam _G = 'd71;
//     localparam _H = 'd72;
//     localparam _I = 'd73;
//     localparam _J = 'd74;
//     localparam _K = 'd75;
//     localparam _L = 'd76;
//     localparam _M = 'd77;
//     localparam _N = 'd78;
//     localparam _O = 'd79;
//     localparam _P = 'd80;
//     localparam _Q = 'd81;
//     localparam _R = 'd82;
//     localparam _S = 'd83;
//     localparam _T = 'd84;
//     localparam _U = 'd85;
//     localparam _V = 'd86;
//     localparam _W = 'd87;
//     localparam _X = 'd88;
//     localparam _Y = 'd89;
//     localparam _Z = 'd90;

//     localparam _A_WAIT = 'd165;
//     localparam _B_WAIT = 'd166;
//     localparam _C_WAIT = 'd167;
//     localparam _D_WAIT = 'd168;
//     localparam _E_WAIT = 'd169;
//     localparam _F_WAIT = 'd170;
//     localparam _G_WAIT = 'd171;
//     localparam _H_WAIT = 'd172;
//     localparam _I_WAIT = 'd173;
//     localparam _J_WAIT = 'd174;
//     localparam _K_WAIT = 'd175;
//     localparam _L_WAIT = 'd176;
//     localparam _M_WAIT = 'd177;
//     localparam _N_WAIT = 'd178;
//     localparam _O_WAIT = 'd179;
//     localparam _P_WAIT = 'd180;
//     localparam _Q_WAIT = 'd181;
//     localparam _R_WAIT = 'd182;
//     localparam _S_WAIT = 'd183;
//     localparam _T_WAIT = 'd184;
//     localparam _U_WAIT = 'd185;
//     localparam _V_WAIT = 'd186;
//     localparam _W_WAIT = 'd187;
//     localparam _X_WAIT = 'd188;
//     localparam _Y_WAIT = 'd189;
//     localparam _Z_WAIT = 'd190;

//     localparam _a = 'd97;
//     localparam _b = 'd98;
//     localparam _c = 'd99;
//     localparam _d = 'd100;
//     localparam _e = 'd101;
//     localparam _f = 'd102;
//     localparam _g = 'd103;
//     localparam _h = 'd104;
//     localparam _i = 'd105;
//     localparam _j = 'd106;
//     localparam _k = 'd107;
//     localparam _l = 'd108;
//     localparam _m = 'd109;
//     localparam _n = 'd110;
//     localparam _o = 'd111;
//     localparam _p = 'd112;
//     localparam _q = 'd113;
//     localparam _r = 'd114;
//     localparam _s = 'd115;
//     localparam _t = 'd116;
//     localparam _u = 'd117;
//     localparam _v = 'd118;
//     localparam _w = 'd119;
//     localparam _x = 'd120;
//     localparam _y = 'd121;
//     localparam _z = 'd122;

//     localparam _a_WAIT = 'd197;
//     localparam _b_WAIT = 'd198;
//     localparam _c_WAIT = 'd199;
//     localparam _d_WAIT = 'd200;
//     localparam _e_WAIT = 'd201;
//     localparam _f_WAIT = 'd202;
//     localparam _g_WAIT = 'd203;
//     localparam _h_WAIT = 'd204;
//     localparam _i_WAIT = 'd205;
//     localparam _j_WAIT = 'd206;
//     localparam _k_WAIT = 'd207;
//     localparam _l_WAIT = 'd208;
//     localparam _m_WAIT = 'd209;
//     localparam _n_WAIT = 'd210;
//     localparam _o_WAIT = 'd211;
//     localparam _p_WAIT = 'd212;
//     localparam _q_WAIT = 'd213;
//     localparam _r_WAIT = 'd214;
//     localparam _s_WAIT = 'd215;
//     localparam _t_WAIT = 'd216;
//     localparam _u_WAIT = 'd217;
//     localparam _v_WAIT = 'd218;
//     localparam _w_WAIT = 'd219;
//     localparam _x_WAIT = 'd220;
//     localparam _y_WAIT = 'd221;
//     localparam _z_WAIT = 'd222;

//     localparam SPACE = 'd32;
//     localparam SPACE_WAIT = 'd132;
//     localparam COLON = 'd58;
//     localparam COLON_WAIR = 'd158;