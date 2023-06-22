module PC(
    input rst,
    input clk,
    input stall,

    input [31:0]        pc_next,
    output reg [31:0]   pc_cur
);
    always @(posedge clk or posedge rst) begin
        if(!stall) begin
            if(rst) begin
                pc_cur <= 32'b0;
            end
            else begin
                pc_cur <= pc_next;
            end
        end
        //else if stall: maintain the curent state
    end
endmodule