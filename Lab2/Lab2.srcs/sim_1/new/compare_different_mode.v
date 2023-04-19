`timescale 1ns / 1ps

module compare_different_mode();
reg clka;
reg wea;
reg [3 : 0] addra;
reg [7 : 0] dina;
wire [7 : 0] dout_default;
wire [7 : 0] dout_read_first;
wire [7 : 0] dout_write_first;

blk_default default_mode (
  .clka(clka),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [3 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(dout_default)  // output wire [7 : 0] douta
);

blk_read_first read_first (
  .clka(clka),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [3 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(dout_read_first)  // output wire [7 : 0] douta
);

blk_write_first write_first (
  .clka(clka),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [3 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(dout_write_first)  // output wire [7 : 0] douta
);

initial begin
    clka = 0;
    forever #5 clka = ~clka;
end

integer i;
initial begin
    wea = 0;
    addra = 0;
    #2;
    dina = 16;
    #20;
    wea = 1;
    for (i = 0; i < 16; i = i + 1) begin
        #5 addra = addra + 1;
        #5 dina = dina + 1;
        #5 addra = addra + 1;
        #5 dina = dina + 1;
    end
    #10;
    wea = 0;
    addra = 10;
    #10;
    $finish;
end
endmodule
