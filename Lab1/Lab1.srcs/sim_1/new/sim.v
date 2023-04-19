//~ `New testbench
`timescale  1ns / 1ps

module sim();

// alu_test Parameters
parameter PERIOD  = 10;


// alu_test Inputs
reg   clk                                  = 0 ;
reg   en                                   = 0 ;
reg   [1:0]  sel                           = 0 ;
reg   [5:0]  x                             = 0 ;

// alu_test Outputs
wire  [5:0]  y                             ;
wire  of                                   ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end


alu_test  u_alu_test (
    .clk                     ( clk        ),
    .en                      ( en         ),
    .sel                     ( sel  [1:0] ),
    .x                       ( x    [5:0] ),

    .y                       ( y    [5:0] ),
    .of                      ( of         )
);

integer i;

initial
begin
    #2;
    for(i=0; i<10; i=i+1) begin
        #10;
        en = 1;
        sel = 0;
        x = 6'b000001;
        #10;
        sel = 1;
        x = 6'b100001;
        #10;
        sel = 2;
        x = i;
    end
    $finish;
end
endmodule