`timescale 1ns / 1ps

module sim_FIFO();
// FIFO Parameters
parameter PERIOD  = 10;


// FIFO Inputs
reg   clk                                  = 0 ;
reg   rst                                  = 0 ;
reg   enq                                  = 0 ;
reg   [3:0]  in                            = 0 ;
reg   deq                                  = 0 ;

// FIFO Outputs
wire  [3:0]  out                           ;
wire  full                                 ;
wire  empty                                ;
wire  [2:0]  an                            ;
wire  [3:0]  seg                           ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

FIFO  u_FIFO (
    .clk                     ( clk          ),
    .rst                     ( rst          ),
    .enq                     ( enq          ),
    .in                      ( in     [3:0] ),
    .deq                     ( deq          ),

    .out                     ( out    [3:0] ),
    .full                    ( full         ),
    .empty                   ( empty        ),
    .an                      ( an     [2:0] ),
    .seg                     ( seg    [3:0] )
);

initial
begin
    #2;
    rst = 1;
    #PERIOD;
    rst = 0;
end

integer i;

initial
begin
    #102;
    for (i=0; i<10; i=i+1)
    begin
        in = i;
        #2;
        enq = 1;
        #50;
        enq = 0;
        #50;
    end
    #100;
    for (i=0; i<10; i=i+1)
    begin
        deq = 1;
        #50;
        deq = 0;
        #50;
    end
    #100;
    $finish;
end
endmodule
