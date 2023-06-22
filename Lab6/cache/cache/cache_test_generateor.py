verilog_head = '''
`timescale 1ns / 1ps
module cache_tb();

localparam INDEX_WIDTH          = %d;
localparam WORD_OFFSET_WIDTH    = %d;
localparam TOTAL_WORD_NUM       = %d;

// cache test
reg [31:0]  i_addr_rom [TOTAL_WORD_NUM];
reg [31:0]  d_addr_rom [TOTAL_WORD_NUM];
reg [31:0]  data_ram [TOTAL_WORD_NUM];
reg         wvalid_rom [TOTAL_WORD_NUM];
reg [31:0]  wdata_rom [TOTAL_WORD_NUM];
reg [31:0]  i_test_index = 0;
reg [31:0]  d_test_index = 0;
reg clk = 1'b1, rstn = 1'b0;

initial #5 rstn = 1'b1; 
always #1 clk = ~clk;

// generate data_ram
initial begin
'''
verilog_mid = '''
end
initial begin
'''
verilog_tail = '''
end
// for icache 
wire            i_rvalid_pipe;
wire            i_rready_pipe;
wire    [31:0]  i_raddr_pipe;
wire    [31:0]  i_rdata_pipe;
wire            i_rvalid;
wire            i_rready;
// icache && arbiter 
wire    [31:0]  i_raddr;
wire    [31:0]  i_rdata;
wire            i_rlast;
wire    [2:0]   i_rsize;
wire    [7:0]   i_rlen;
// icache_debug
reg             i_rvalid_ff;
reg     [31:0]  i_raddr_ff;
reg             i_error_reg;
reg             i_pass_reg;
wire    [31:0]  i_correct_data;

// for dcache
wire    [31:0]  d_addr_pipe;
wire            d_rvalid_pipe;
wire            d_rready_pipe;
wire    [31:0]  d_rdata_pipe;
wire            d_wvalid_pipe;
wire            d_wready_pipe;
wire    [31:0]  d_wdata_pipe;
wire    [3:0]   d_wstrb_pipe;
// dcache && arbiter
wire            d_rvalid;
wire            d_rready;
wire    [31:0]  d_raddr;
wire    [31:0]  d_rdata;
wire            d_rlast;
wire    [2:0]   d_rsize;
wire    [7:0]   d_rlen;
wire            d_wvalid;
wire            d_wready;
wire    [31:0]  d_waddr;
wire    [31:0]  d_wdata;
wire    [3:0]   d_wstrb;
wire            d_wlast;
wire    [2:0]   d_wsize;
wire    [7:0]   d_wlen;
wire            d_bvalid;
wire            d_bready;
// dcache_debug
reg             d_rvalid_ff;
reg             d_wvalid_ff;
reg     [31:0]  d_wdata_ff;
reg     [31:0]  d_addr_ff;
reg             d_error_reg;
reg             d_pass_reg;
wire    [31:0]  d_correct_data;

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

assign i_raddr_pipe = i_addr_rom[i_test_index];
assign i_correct_data = data_ram[i_raddr_ff >> 2];
assign i_rvalid_pipe = 1'b1;
// simulate IF1-IF2 register i_rvalid_ff && i_raddr_ff
always @(posedge clk) begin
    if(!rstn) begin
        i_rvalid_ff <= 0;
        i_raddr_ff <= 0;
    end
    else if(!(i_rvalid_ff && !i_rready_pipe))begin
        i_rvalid_ff <= i_rvalid_pipe;
        i_raddr_ff <= i_raddr_pipe;
    end
end
// update i_test_index
always @(posedge clk) begin
    if(!rstn) begin
        i_test_index <= 0;
        i_pass_reg <= 0;
    end
    else if (i_test_index >= (TOTAL_WORD_NUM / 2-1)) begin
        i_test_index <= (TOTAL_WORD_NUM / 2-1);
        i_pass_reg <= 1;
    end
    else if(!(i_rvalid_ff && !i_rready_pipe) && !i_error_reg) begin
        i_test_index <= i_test_index + 1;
    end
end
// update i_error 
always @(posedge clk) begin
    if(!rstn) begin
        i_error_reg <= 0;
    end
    else if(i_error_reg) begin
        i_error_reg <= 1;
    end
    else if(i_rvalid_ff && i_rready_pipe) begin
        i_error_reg <= !(i_rdata_pipe  == i_correct_data);
    end
end

assign d_addr_pipe           = d_addr_rom[d_test_index];
assign d_correct_data   = data_ram[d_addr_ff >> 2];
assign d_rvalid_pipe         = !wvalid_rom[d_test_index];
assign d_wvalid_pipe         = wvalid_rom[d_test_index];
assign d_wdata_pipe          = wdata_rom[d_test_index];
assign d_wstrb_pipe          = d_wvalid_pipe ? 4'b1111 : 4'b0000;
// simulate EX-MEM register
always @(posedge clk) begin
    if(!rstn) begin
        d_rvalid_ff <= 0;
        d_addr_ff   <= 0;
        d_wvalid_ff <= 0;
        d_wdata_ff  <= 0;
    end
    else if(!(d_rvalid_ff && !d_rready_pipe) && !(d_wvalid_ff && !d_wready_pipe))begin
        d_rvalid_ff <= d_rvalid_pipe;
        d_addr_ff   <= d_addr_pipe;
        d_wvalid_ff <= d_wvalid_pipe;
        d_wdata_ff  <= d_wdata_pipe;
    end
end
// update d_test_index
always @(posedge clk) begin
    if(!rstn) begin
        d_test_index    <= TOTAL_WORD_NUM / 2;
        d_pass_reg      <= 0;
    end
    else if (d_test_index >= (TOTAL_WORD_NUM-1)) begin
        d_test_index    <= (TOTAL_WORD_NUM-1);
        d_pass_reg      <= 1;
    end
    else if(!(d_rvalid_ff && !d_rready_pipe)  && !(d_wvalid_ff && !d_wready_pipe) && !d_error_reg) begin
        d_test_index    <= d_test_index + 1;
    end
end
// update data_ram
always @(posedge clk) begin
    if(d_wvalid_ff && d_wready_pipe) begin
        data_ram[d_addr_ff >> 2] <= d_wdata_ff;
    end
end
// update d_error 
always @(posedge clk) begin
    if(!rstn) begin
        d_error_reg <= 0;
    end
    else if(d_error_reg) begin
        d_error_reg <= 1;
    end
    else if(d_rvalid_ff && d_rready_pipe) begin
        d_error_reg <= !(d_rdata_pipe  == d_correct_data);
    end
end

icache #(
  .INDEX_WIDTH          (INDEX_WIDTH),
  .WORD_OFFSET_WIDTH    (WORD_OFFSET_WIDTH)
)
icache_dut (
    .clk      (clk ),
    .rstn     (rstn ),
    .rvalid   (i_rvalid_pipe ),
    .rready   (i_rready_pipe ),
    .raddr    (i_raddr_pipe ),
    .rdata    (i_rdata_pipe ),

    .i_rvalid (i_rvalid ),
    .i_rready (i_rready ),
    .i_raddr  (i_raddr ),
    .i_rdata  (i_rdata ),
    .i_rlast  (i_rlast ),
    .i_rsize  (i_rsize ),
    .i_rlen   (i_rlen)
);
dcache #(
    .INDEX_WIDTH        (INDEX_WIDTH ),
    .WORD_OFFSET_WIDTH  (WORD_OFFSET_WIDTH )
)
dcache_dut (
    .clk      (clk ),
    .rstn     (rstn ),
    .addr     (d_addr_pipe ),
    .rvalid   (d_rvalid_pipe ),
    .rready   (d_rready_pipe ),
    .rdata    (d_rdata_pipe ),
    .wvalid   (d_wvalid_pipe ),
    .wready   (d_wready_pipe ),
    .wdata    (d_wdata_pipe ),
    .wstrb    (d_wstrb_pipe ),
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
    .d_bready (d_bready )
);

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
'''

import sys
from random import randint
#define 
len = len(sys.argv)
if len != 3 and len != 4:
    print('    Usage:\n        python generate_cache_tb.py [INDEX_WIDTH] [WORD_ADDR_WIDTH] [TOTAL_WORD_NUM]')
    print('    Example:\n        python generate_cache_tb.py 3 2 4096')
    print('    Tip: use this command to write to file:\n        python generate_cache_tb.py 2 2 1024 > cache_tb.v')
else:
    try:
        INDEX = int( sys.argv[1] )
    except:
        print('    *** Error: parameter must be integer, not %s' % (sys.argv[1], ) )
        sys.exit(-1)
    try:
        WOFFSET = int( sys.argv[2] )
    except:
        print('    *** Error: parameter must be integer, not %s' % (sys.argv[2], ) )
        sys.exit(-1)
    # given main memory size
    if(len == 4):
        try:
            TOTAL_WORD_NUM = int( sys.argv[3] )
        except:
            print('    *** Error: parameter must be integer, not %s' % (sys.argv[3], ) )
            sys.exit(-1)
    # not given main memory size
    else:
        TOTAL_WORD_NUM = 4096
    
    verilog = verilog_head % (INDEX,WOFFSET,TOTAL_WORD_NUM,)
    # generate data_ram
    data_ram = [i for i in range(TOTAL_WORD_NUM)]
    for i in range(TOTAL_WORD_NUM):
        verilog += "    data_ram[%5d] = 'h%08x; \t" % (i, data_ram[i])
        if i % 8 == 7:
            verilog += '\n'
    
    verilog += verilog_mid
    # generate i_addr_rom and d_addr_rom
    i_addr_rom = [(randint(0, 511))  << 2 for i in range(TOTAL_WORD_NUM)]
    d_addr_rom = [(randint(512, 1023)) << 2 for i in range(TOTAL_WORD_NUM)]
    wdata_rom = [randint(0, 2**32-1) for i in range(TOTAL_WORD_NUM)]
    wvalid_rom = [randint(0, 1) for i in range(TOTAL_WORD_NUM)]
    for i in range(TOTAL_WORD_NUM):
        verilog += "    i_addr_rom[%5d] = 'h%08x; \t" % (i, i_addr_rom[i])
        verilog += "    d_addr_rom[%5d] = 'h%08x; \t" % (i, d_addr_rom[i])
        verilog += "    wdata_rom[%5d] = 'h%08x; \t" % (i, wdata_rom[i])
        verilog += "    wvalid_rom[%5d] = %d; \n" % (i, wvalid_rom[i])
    verilog += verilog_tail
    # make coe file
    coe = 'memory_initialization_radix=16;\nmemory_initialization_vector=\n'
    for i in range(TOTAL_WORD_NUM):
        coe += '%08x\n' % (data_ram[i],)
    with open('memory.coe', 'w') as f:
        f.write(coe)
    
    print(verilog)