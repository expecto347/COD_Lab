`timescale 1ns / 1ps


module MEM(
    input                   clk,
    input                   rstn,

    // Icache ===================================================================================================================
    input                   i_rvalid,           // valid signal of read request to main memory
    output                  i_rready,           // ready signal of read request from main memory
    input [31:0]            i_raddr,            // read address to main memory
    output [31:0]           i_rdata,            // read data from main memory
    output                  i_rlast,            // indicate the last beat of read data from main memory
    input [2:0]             i_rsize,            // indicate the size of read data once, if i_rsize = n then read 2^n bytes once
    input [7:0]             i_rlen,             // indicate the number of read data, if i_rlen = n then read n+1 times


    // Dcache ===================================================================================================================
    input                   d_rvalid,           // valid signal of read request to main memory
    output                  d_rready,           // ready signal of read request from main memory
    input [31:0]            d_raddr,            // read address to main memory
    output [31:0]           d_rdata,            // read data from main memory
    output                  d_rlast,            // indicate the last beat of read data from main memory
    input [2:0]             d_rsize,            // indicate the size of read data once, if d_rsize = n then read 2^n bytes once
    input [7:0]             d_rlen,             // indicate the number of read data, if d_rlen = n then read n+1 times
    // write
    input                   d_wvalid,           // valid signal of write request to main memory
    output                  d_wready,           // ready signal of write request from main memory
    input [31:0]            d_waddr,            // write address to main memory
    input [31:0]            d_wdata,            // write data to main memory
    input [3:0]             d_wstrb,            // write mask of each write-back word to main memory
    input                   d_wlast,            // indicate the last beat of write data to main memory
    input [2:0]             d_wsize,            // indicate the size of write data once, if d_wsize = n then write 2^n bytes once
    input [7:0]             d_wlen,             // indicate the number of write data, if d_wlen = n then write n+1 times
    // back
    output                  d_bvalid,           // valid signal of write back request from main memory
    input                   d_bready            // ready signal of write back request to main memory

);


// arbiter with main mem
wire    [31:0]  araddr;
wire            arvalid;
wire            arready;
wire    [7:0]   arlen;
wire    [2:0]   arsize;
wire    [1:0]   arburst;
wire    [31:0]  rdata;
wire    [1:0]   rresp;
wire            rvalid;
wire            rready;
wire            rlast;
wire    [31:0]  awaddr;
wire            awvalid;
wire            awready;
wire    [7:0]   awlen;
wire    [2:0]   awsize;
wire    [1:0]   awburst;
wire    [31:0]  wdata;
wire    [3:0]   wstrb;
wire            wvalid;
wire            wready;
wire            wlast;
wire    [1:0]   bresp;
wire            bvalid;
wire            bready;


axi_arbiter axi_arbiter_dut (
    .clk      (clk ),
    .rstn     (rstn ),
    .i_rvalid (i_rvalid ),
    .i_rready (i_rready ),
    .i_raddr  (i_raddr ),
    .i_rdata  (i_rdata ),
    .i_rlast  (i_rlast ),
    .i_rsize  (i_rsize ),
    .i_rlen   (i_rlen ),
    .d_rvalid (d_rvalid ),
    .d_rready (d_rready ),
    .d_raddr  (d_raddr ),
    .d_rdata  (d_rdata ),
    .d_rlast  (d_rlast ),
    .d_rsize  (d_rsize ),
    .d_rlen   (d_rlen ),
    .d_wvalid (d_wvalid ),
    .d_wready (d_wready ),
    .d_waddr  (d_waddr ),
    .d_wdata  (d_wdata ),
    .d_wstrb  (d_wstrb ),
    .d_wlast  (d_wlast ),
    .d_wsize  (d_wsize ),
    .d_wlen   (d_wlen ),
    .d_bvalid (d_bvalid ),
    .d_bready (d_bready ),
    .araddr   (araddr ),
    .arvalid  (arvalid ),
    .arready  (arready ),
    .arlen    (arlen ),
    .arsize   (arsize ),
    .arburst  (arburst ),
    .rdata    (rdata ),
    .rresp    (rresp ),
    .rvalid   (rvalid ),
    .rready   (rready ),
    .rlast    (rlast ),
    .awaddr   (awaddr ),
    .awvalid  (awvalid ),
    .awready  (awready ),
    .awlen    (awlen ),
    .awsize   (awsize ),
    .awburst  (awburst ),
    .wdata    (wdata ),
    .wstrb    (wstrb ),
    .wvalid   (wvalid ),
    .wready   (wready ),
    .wlast    (wlast ),
    .bresp    (bresp ),
    .bvalid   (bvalid ),
    .bready   (bready)
);

main_memory main_mem(
    .s_aclk         (clk ),
    .s_aresetn      (rstn ),
    .s_axi_araddr   (araddr ),
    .s_axi_arburst  (arburst ),
    .s_axi_arid     (4'b0),
    .s_axi_arlen    (arlen ),
    .s_axi_arready  (arready ),
    .s_axi_arsize   (arsize ),
    .s_axi_arvalid  (arvalid ),
    .s_axi_awaddr   (awaddr ),
    .s_axi_awburst  (awburst ),
    .s_axi_awid     (4'b0),
    .s_axi_awlen    (awlen ),
    .s_axi_awready  (awready ),
    .s_axi_awsize   (awsize ),
    .s_axi_awvalid  (awvalid ),
    .s_axi_bid      (),
    .s_axi_bready   (bready ),
    .s_axi_bresp    (bresp ),
    .s_axi_bvalid   (bvalid ),
    .s_axi_rdata    (rdata ),
    .s_axi_rid      (),
    .s_axi_rlast    (rlast ),
    .s_axi_rready   (rready ),
    .s_axi_rresp    (rresp ),
    .s_axi_rvalid   (rvalid ),
    .s_axi_wdata    (wdata ),
    .s_axi_wlast    (wlast ),
    .s_axi_wready   (wready ),
    .s_axi_wstrb    (wstrb ),
    .s_axi_wvalid   (wvalid )
);

endmodule
