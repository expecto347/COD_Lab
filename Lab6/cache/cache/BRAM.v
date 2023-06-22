module BRAM_bytewrite #(
    parameter DATA_WIDTH = 512,
              ADDR_WIDTH = 6
)(
    input                   clk,   // Clock
    input [ADDR_WIDTH-1:0]  raddr, // read Address
    input [ADDR_WIDTH-1:0]  waddr, // write Address
    input [DATA_WIDTH-1:0]  din,   // Data Input
    input [DATA_WIDTH/8-1:0]we,    // Write Enable
    output [DATA_WIDTH-1:0] dout   // Data Output
); 
    reg [ADDR_WIDTH-1:0] addr_r;  // Address Register
    reg [DATA_WIDTH-1:0] ram [0:(1 << ADDR_WIDTH)-1];
    integer j;
    initial begin
        for (j = 0; j < (1 << ADDR_WIDTH); j = j + 1) begin
            ram[j] = 0;
        end
    end
    always @(posedge clk) begin
        addr_r <= raddr == waddr ? waddr : raddr;
    end
    assign dout = ram[addr_r];
    generate
        genvar i;
        for(i = 0; i < DATA_WIDTH/8; i = i+1) begin
            always @(posedge clk) begin
                if(we[i])
                    ram[waddr][(i+1)*8-1:(i*8)] <= din[(i+1)*8-1:(i*8)];
            end
        end
    endgenerate
endmodule