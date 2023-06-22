`timescale 1ns / 1ps
/* 
 *   Author: Archer
 */

module Top #(
    parameter   INDEX_WIDTH         = 4,
    parameter   WORD_OFFSET_WIDTH   = 2
)(
    input cpu_clk,	// system clock
    input cpu_rst   //
);

    wire                i_rvalid_pipe;
    wire                i_rready_pipe;
    wire    [31:0]      i_raddr_pipe;
    wire    [31:0]      i_rdata_pipe;
    wire                i_stall_pipe;
    wire                i_flush_pipe;

    wire    [31:0]      d_addr_pipe;
    wire                d_rvalid_pipe;
    wire                d_rready_pipe;
    wire                d_wvalid_pipe;
    wire                d_wready_pipe;
    wire    [31:0]      d_rdata_pipe;
    wire    [31:0]      d_wdata_pipe;
    wire    [3:0]       d_wstrb_pipe;
    wire                d_stall_pipe;
    wire                d_flush_pipe;

    //icache output
    wire                i_rvalid;
    wire                i_rready;
    wire    [31:0]      i_raddr;
    wire    [31:0]      i_rdata;
    wire                i_rlast;
    wire    [2:0]       i_rsize;
    wire    [7:0]       i_rlen;

    //dcache output
    wire                d_rvalid;
    wire                d_rready;
    wire    [31:0]      d_raddr;
    wire    [31:0]      d_rdata;
    wire                d_rlast;
    wire    [2:0]       d_rsize;
    wire    [7:0]       d_rlen;
    wire                d_wvalid;
    wire                d_wready;
    wire    [31:0]      d_waddr;
    wire    [31:0]      d_wdata;
    wire    [3:0]       d_wstrb;
    wire                d_wlast;
    wire    [2:0]       d_wsize;
    wire    [7:0]       d_wlen;
    wire                d_bvalid;
    wire                d_bready;

    CPU cpu (
        .clk(cpu_clk), 
        .rst(cpu_rst),

        // ================================ Memory and MMIO Part ================================
        // MEM And MMIO Data BUS
        // icache: AXI4--valid/ready
        .im_rvalid(i_rvalid_pipe),
        .im_rready(i_rready_pipe),
        .im_addr(i_raddr_pipe),
        .im_dout(i_rdata_pipe),
        .im_stall(i_stall_pipe),
        .im_flush(i_flush_pipe),

        // dcache: AXI4--valid/ready
        .dm_addr(d_addr_pipe),
        .dm_rvalid(d_rvalid_pipe),
        .dm_rready(d_rready_pipe),
        .dm_wvalid(d_wvalid_pipe),
        .dm_wready(d_wready_pipe),
        .dm_we(dm_we),			
        .dm_din(d_wdata_pipe),	
        .dm_dout(d_rdata_pipe),
        .dm_wstrb(d_wstrb_pipe),
        .dm_stall(d_stall_pipe),
        .dm_flush(d_flush_pipe)
    );

    MEM memory (
        .clk(cpu_clk),
        .rstn(!cpu_rst),

        // ================================ Memory Part ================================
        // MEM Data BUS with CPU
        // icache
        .i_rvalid(i_rvalid),
        .i_rready(i_rready),
        .i_raddr(i_raddr),
        .i_rdata(i_rdata),
        .i_rlast(i_rlast),
        .i_rsize(i_rsize),
        .i_rlen(i_rlen),

        // dcache
        .d_rvalid(d_rvalid),
        .d_rready(d_rready),
        .d_raddr(d_raddr),
        .d_rdata(d_rdata),
        .d_rlast(d_rlast),
        .d_rsize(d_rsize),
        .d_rlen(d_rlen),
        .d_wvalid(d_wvalid),
        .d_wready(d_wready),
        .d_waddr(d_waddr),
        .d_wdata(d_wdata),
        .d_wstrb(d_wstrb),
        .d_wlast(d_wlast),
        .d_wsize(d_wsize),
        .d_wlen(d_wlen),
        .d_bvalid(d_bvalid),
        .d_bready(d_bready)
    );


    icache #(
    .INDEX_WIDTH          (INDEX_WIDTH),
    .WORD_OFFSET_WIDTH    (WORD_OFFSET_WIDTH)
    )
    icache_dut (
        .clk      (cpu_clk),
        .rstn     (!cpu_rst),
        .rvalid   (i_rvalid_pipe),
        .rready   (i_rready_pipe),
        .raddr    (i_raddr_pipe),
        .rdata    (i_rdata_pipe),
        .stall    (i_stall_pipe),
        .flush    (i_flush_pipe),

        .i_rvalid (i_rvalid),
        .i_rready (i_rready),
        .i_raddr  (i_raddr),
        .i_rdata  (i_rdata),
        .i_rlast  (i_rlast),
        .i_rsize  (i_rsize),
        .i_rlen   (i_rlen)
    );

    dcache #(
        .INDEX_WIDTH        (INDEX_WIDTH),
        .WORD_OFFSET_WIDTH  (WORD_OFFSET_WIDTH)
    )
    dcache_dut (
        .clk      (cpu_clk),
        .rstn     (!cpu_rst),
        .addr     (d_addr_pipe),
        .rvalid   (d_rvalid_pipe),
        .rready   (d_rready_pipe),
        .rdata    (d_rdata_pipe),
        .wvalid   (d_wvalid_pipe),
        .wready   (d_wready_pipe),
        .wdata    (d_wdata_pipe),
        .wstrb    (d_wstrb_pipe),
        .stall    (d_stall_pipe),
        .flush    (d_flush_pipe),

        .d_rvalid (d_rvalid),
        .d_rready (d_rready),
        .d_raddr  (d_raddr),
        .d_rdata  (d_rdata),
        .d_rlast  (d_rlast),
        .d_rsize  (d_rsize),
        .d_rlen   (d_rlen),
        .d_wvalid (d_wvalid),
        .d_wready (d_wready),
        .d_waddr  (d_waddr),
        .d_wdata  (d_wdata),
        .d_wstrb  (d_wstrb),
        .d_wlast  (d_wlast),
        .d_wsize  (d_wsize),
        .d_wlen   (d_wlen),
        .d_bvalid (d_bvalid),
        .d_bready (d_bready)
    );

endmodule