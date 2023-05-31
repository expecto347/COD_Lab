module RF
#(
    parameter WIDTH = 32,
    parameter ADDRNUM = 5,
    parameter REGNUM = 32
)
(
    input clk,
    input we,

    input [ADDRNUM-1:0] ra0,
    output [WIDTH-1:0] rd0,
    input [ADDRNUM-1:0] ra1,
    output [WIDTH-1:0] rd1,
    input [ADDRNUM-1:0] wa,
    input [WIDTH-1:0] wd,

    input [ADDRNUM-1:0]ra_dbg,
    output [WIDTH-1:0]rd_dbg
);
    
reg [WIDTH-1:0] regfile[0:REGNUM-1];
integer i;
initial begin
    i = 0;
    while (i < 32) begin
        regfile[i] = 32'b0;
        i = i + 1;
    end
    regfile[2] = 32'h2ffc;
    regfile[3] = 32'h1800;
end

always@(posedge clk) begin
    regfile[0] <= 0;
    if(we) begin
        if(wa != 0)
        regfile[wa] <= wd;
    end
end

assign rd0 = regfile[ra0],rd1 = regfile[ra1];
assign rd_dbg = regfile[ra_dbg];
endmodule
