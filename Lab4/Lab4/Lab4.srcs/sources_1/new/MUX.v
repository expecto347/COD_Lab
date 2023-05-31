module MUX(
    input sel,
    input [31:0] src0, src1,
    output [31:0] res
);

assign res = (sel == 1'b0)? src0: src1;
endmodule