`timescale 1ns / 1ps

module register_file_8x4
#(parameter WIDTH = 4)(   
    input clk, 
    input[2 : 0] ra0,
    output[WIDTH - 1 : 0] rd0,
    input[2: 0] ra1, 
    output[WIDTH - 1 : 0] rd1,
    input[2 : 0] wa, 
    input we,
    input[WIDTH - 1 : 0] wd
);

//寄存器堆的0号地址恒为0
reg [WIDTH - 1 : 0] regfile[0 : 7];
assign rd0 = regfile[ra0], rd1 = regfile[ra1];

always@(posedge clk) 
begin
    if(we && wa) regfile[wa] <= wd;
    else regfile[0] <= 4'b0;
end
endmodule