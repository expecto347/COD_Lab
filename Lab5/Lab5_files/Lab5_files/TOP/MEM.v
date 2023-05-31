module MEM(
    input clk,

    // MEM Data BUS with CPU
	// IM port
    input [31:0] im_addr,
    output [31:0] im_dout,
	
	// DM port
    input  [31:0] dm_addr,
    input dm_we,
    input  [31:0] dm_din,
    output [31:0] dm_dout,

    // MEM Debug BUS
    input [31:0] mem_check_addr,
    output [31:0] mem_check_data
);
   
INST_MEM IM(
.a(im_addr[9:2]),      // input wire [7 : 0] a
.spo(im_dout)  // output wire [31 : 0] spo
);

DATA_MEM DM(
  .a(dm_addr[9:2]),        // input wire [7 : 0] a
  .d(dm_din),        // input wire [31 : 0] d
  .dpra(mem_check_addr[7:0]),  // input wire [7 : 0] dpra
  .clk(clk),    // input wire clk
  .we(dm_we),      // input wire we
  .spo(dm_dout),    // output wire [31 : 0] spo
  .dpo(mem_check_data)    // output wire [31 : 0] dpo
);
endmodule