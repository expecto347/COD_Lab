`timescale 1ns / 1ps

module tb_IP();
reg clk;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dist_out;
wire [7:0] blk_out;

dist_mem_gen_0 dist1 (
  .a(addr),      // input wire [3 : 0] a
  .d(din),      // input wire [7 : 0] d
  .clk(clk),  // input wire clk
  .we(we),    // input wire we
  .spo(dist_out)  // output wire [7 : 0] spo
);

blk_mem_gen_0 blk1 (
  .clka(clk),    // input wire clka
  .wea(we),      // input wire [0 : 0] wea
  .addra(addr),  // input wire [3 : 0] addra
  .dina(din),    // input wire [7 : 0] dina
  .douta(blk_out)  // output wire [7 : 0] douta
);

initial
begin
  clk = 0;
  we = 0;
  addr = 0;
  din = 0;
  forever #(5) clk = ~clk;
end

integer i;
initial
begin
  for (i = 0; i < 16; i = i + 1)
  begin
    we = 1;
    addr = i;
    din = i;
    #10;
  end
  we = 0;
  $finish;
end
endmodule
