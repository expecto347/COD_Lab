`timescale 1ns / 1ps

module LCU(
input clk,
input rst,
input [3:0] in,
input enq,
input deq,
input [3:0] rd0,
output reg [2:0] ra0,
output [3:0] out,
output reg full,
output reg empty,
output reg [7:0] valid,
output reg [2:0] wa,
output reg [3:0] wd,
output reg we,
output reg [2:0] RP,
output reg [2:0] WP
);
parameter IDLE = 3'b000, ENQU = 3'b001, DEQU = 3'b010, ENQU_tmp = 3'b011, DEQU_tmp = 3'b100;
reg [2:0] state, next_state;

always@(posedge clk or posedge rst)
    if (rst) begin
        state <= IDLE;
    end
    else
        state <= next_state;

always@(*)
    if(deq | enq)
        case(state)
            IDLE: begin
                if (enq & !full) 
                    next_state = ENQU_tmp;
                else if (deq & !empty)
                    next_state = DEQU_tmp;
                else
                    next_state = IDLE;
            end
            ENQU: begin
                if (enq & !full) 
                    next_state = ENQU_tmp;
                else if (deq)
                    next_state = DEQU_tmp;
                else
                    next_state = IDLE;
            end
            DEQU: begin
                if (enq)
                    next_state = ENQU_tmp;
                else if (deq & !empty) 
                    next_state = DEQU_tmp;
                else
                    next_state = IDLE;
            end
            default next_state = IDLE;
        endcase
    else
        case(state)
            ENQU_tmp:
                next_state = ENQU;
            DEQU_tmp:
                next_state = DEQU;
            default: 
                next_state = state;
        endcase


wire [2:0] WP_plus1, RP_plus1;
assign WP_plus1 = WP + 3'b1;
assign RP_plus1 = RP + 3'b1;
assign out = rd0;
always@(posedge clk) begin
    if(rst) begin
        RP <= 3'b000;
        WP <= 3'b000;
        valid <= 8'b00000000;
        full <= 0;
        empty <= 1;
    end
    else
        case(state)
            ENQU_tmp: begin
                    wa <= WP;
                    wd <= in;
                    we <= 1;
                    WP <= WP + 1;
                    valid[WP] <= 1;
                    full <= (WP_plus1 == RP);
                    empty <= 0;
                end
            DEQU_tmp: begin
                    we <= 0;
                    ra0 <= RP;
                    RP <= RP + 1;
                    valid[RP] <= 0;
                    full <= 0;
                    empty <= (RP_plus1 == WP);
                end
            default:
                we <= 0;
        endcase
end
endmodule
