/* 
 *   Author: wintermelon
 *   Last update: 2023.04.13
 */
 
module Hex2ASC (
    input [31:0] number,
    output [63:0] ascii
);

reg [7:0] ascii_1, ascii_2, ascii_3, ascii_4, ascii_5, ascii_6, ascii_7, ascii_8;

always @(*) begin
    if (number[31:28] >= 4'd10)
        ascii_1 = {{4'b0}, {number[31:28]}} + 8'd87;
    else
        ascii_1 = {{4'b0}, {number[31:28]}} + 8'd48;
end

always @(*) begin
    if (number[27:24] >= 4'd10)
        ascii_2 = {{4'b0}, {number[27:24]}} + 8'd87;
    else
        ascii_2 = {{4'b0}, {number[27:24]}} + 8'd48;
end

always @(*) begin
    if (number[23:20] >= 4'd10)
        ascii_3 = {{4'b0}, {number[23:20]}} + 8'd87;
    else
        ascii_3 = {{4'b0}, {number[23:20]}} + 8'd48;
end

always @(*) begin
    if (number[19:16] >= 4'd10)
        ascii_4 = {{4'b0}, {number[19:16]}} + 8'd87;
    else
        ascii_4 = {{4'b0}, {number[19:16]}} + 8'd48;
end

always @(*) begin
    if (number[15:12] >= 4'd10)
        ascii_5 = {{4'b0}, {number[15:12]}} + 8'd87;
    else
        ascii_5 = {{4'b0}, {number[15:12]}} + 8'd48;
end

always @(*) begin
    if (number[11:8] >= 4'd10)
        ascii_6 = {{4'b0}, {number[11:8]}} + 8'd87;
    else
        ascii_6 = {{4'b0}, {number[11:8]}} + 8'd48;
end

always @(*) begin
    if (number[7:4] >= 4'd10)
        ascii_7 = {{4'b0}, {number[7:4]}} + 8'd87;
    else
        ascii_7 = {{4'b0}, {number[7:4]}} + 8'd48;
end

always @(*) begin
    if (number[3:0] >= 4'd10)
        ascii_8 = {{4'b0}, {number[3:0]}} + 8'd87;
    else
        ascii_8 = {{4'b0}, {number[3:0]}} + 8'd48;
end

assign ascii = {ascii_1, ascii_2, ascii_3, ascii_4, ascii_5, ascii_6, ascii_7, ascii_8};

endmodule