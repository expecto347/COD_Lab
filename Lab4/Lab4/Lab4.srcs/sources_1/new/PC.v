module PC(
    input rst,
    input clk,

    input [31:0] pc_next,
    output reg [31:0] pc_cur
);
always @(posedge clk or posedge rst) begin
    if(rst) begin
        pc_cur <= 32'h2ffc;
    end
    else begin
        pc_cur <= pc_next;
    end
end
endmodule