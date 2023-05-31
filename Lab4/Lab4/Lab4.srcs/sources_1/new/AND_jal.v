module AND_jalr(
    input [31:0] lhs,
    output [31:0] res
);
    assign res = lhs & 32'hFFFFFFFE;
endmodule
