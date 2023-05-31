module PC_ADD_4(
    input [31:0] lhs,
    output [31:0] res
);
    assign res = lhs + 32'd4;
endmodule