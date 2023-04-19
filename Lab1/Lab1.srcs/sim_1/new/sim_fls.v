//~ `New testbench
`timescale  1ns / 1ps

module sim_fls();

// fls Parameters
parameter PERIOD = 10    ;
parameter S0  = 3'b000;

// fls Inputs
reg   clk                                  = 0 ;
reg   rst                                  = 0 ;
reg   en                                   = 0 ;
reg   [6:0]  d                             = 0 ;

// fls Outputs
wire  [6:0]  f                             ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end


fls u_fls (
    .clk                     ( clk        ),
    .rst                     ( rst        ),
    .en                      ( en         ),
    .d                       ( d    [6:0] ),

    .f                       ( f    [6:0] )
);

integer i;

initial
begin
    #10 rst = 1; 
    #10 rst = 0;
    #10 d = 7'b0000000;
    #10 en = 1;
    #10 en = 0;
    #10 d = 7'b0000001;
    #10 en = 1;
    #10 en = 0;
    #10 d = 7'b0000010;
    for(i = 0; i <=10; i = i + 1) begin
        #10 en = 1;
        #10 en = 0;
    end
    $finish;
end

endmodule