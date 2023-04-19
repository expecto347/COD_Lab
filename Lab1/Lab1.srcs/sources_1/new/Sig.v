module Sig(
input clk,buttom,
output buttom_edge
    );
    reg buttom_r1,buttom_r2;
    always @ (posedge clk) buttom_r1<=buttom;
    always @ (posedge clk) buttom_r2<=buttom_r1;
    assign buttom_edge=buttom_r1&(~buttom_r2);    
endmodule