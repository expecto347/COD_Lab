`timescale 1ns / 1ps

//~ `New testbench
`timescale  1ns / 1ps

module tb_register_file#(parameter WIDTH = 32)();

// register_file Parameters
parameter PERIOD  = 10;


// register_file Inputs
reg   clk                                  = 0 ;
reg   [4 : 0]  ra0                         = 0 ;
reg   [4: 0]  ra1                          = 0 ;
reg   [4 : 0]  wa                          = 0 ;
reg   we                                   = 0 ;
reg   [WIDTH - 1 : 0]  wd                  = 0 ;

// register_file Outputs
wire  [WIDTH - 1 : 0]  rd0                 ;
wire  [WIDTH - 1 : 0]  rd1                 ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end
register_file  u_register_file (
    .clk                     ( clk                  ),
    .ra0                     ( ra0  [4 : 0]         ),
    .ra1                     ( ra1  [4: 0]          ),
    .wa                      ( wa   [4 : 0]         ),
    .we                      ( we                   ),
    .wd                      ( wd   [WIDTH - 1 : 0] ),

    .rd0                     ( rd0  [WIDTH - 1 : 0] ),
    .rd1                     ( rd1  [WIDTH - 1 : 0] )
);

initial
begin
    wa = 0;
    we = 0;
    wd = 0;
    #100;
    wa = 1;
    we = 1;
    wd = 32'b10101010101010101010101010101010;
    #100;
    we = 0;
    #100;
    wa = 0;
    we = 0;
    wd = 100;
    #100;
    we = 1; 
    ra0 = 1;
    ra1 = 0;
    #100;
    we = 0;
    wa = 2;
    wd = 32'b01010101010101010101010101010101;
    #100;
    ra0 = 2;
    $finish;
end
endmodule