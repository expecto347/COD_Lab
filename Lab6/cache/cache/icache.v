
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Author: Ma Zirui
// Course: Coputer Organization and Design
// Module: Instruction Cache
// FIXME:
//     1. Complete hit logic in hit module
//     2. Correctly choose the correct read data in read control module
//     3. Complete LRU module
//     4. Complete the main FSM
// 
//////////////////////////////////////////////////////////////////////////////////


module icache #(
    parameter INDEX_WIDTH       = 3,
    parameter WORD_OFFSET_WIDTH = 1
)(
    input               clk,            
    input               rstn,           
    // for pipeline 
    input               rvalid,         // valid signal of read request from pipeline
    output reg          rready,         // ready signal of read request to pipeline(TODO:extern: else stall IF2)
    input [31:0]        raddr,          // read address from pipeline
    output [31:0]       rdata,          // read data to pipeline
    // for AXI arbiter
    output reg          i_rvalid,       // valid signal of read request to main memory
    input               i_rready,       // ready signal of read request from main memory
    output [31:0]       i_raddr,        // read address to main memory
    input [31:0]        i_rdata,        // read data from main memory
    input               i_rlast,        // indicate the last beat of read data from main memory
    output [2:0]        i_rsize,        // indicate the size of read data once, if i_rsize = n then read 2^n bytes once
    output [7:0]        i_rlen          // indicate the number of read data, if i_rlen = n then read n+1 times
);
    localparam 
        BYTE_OFFSET_WIDTH   = WORD_OFFSET_WIDTH + 2,                // total offset bits
        TAG_WIDTH           = 32 - BYTE_OFFSET_WIDTH - INDEX_WIDTH, // tag bits
        SET_NUM             = 1 << INDEX_WIDTH,                     // block(set) number of one Road
        WORD_NUM            = 1 << WORD_OFFSET_WIDTH,               // words per block(set)
        BYTE_NUM            = 1 << BYTE_OFFSET_WIDTH,               // bytes per block(set)
        BIT_NUM             = BYTE_NUM << 3;                        // bits per block(set)
    
    // request buffer
    reg     [31:0]              req_buf;
    reg                         req_buf_we;
    
    // return buffer
    reg     [BIT_NUM-1:0]       ret_buf;

    // data memory
    wire    [INDEX_WIDTH-1:0]   r_index, w_index;
    reg     [1:0]               mem_we;                
    wire    [BIT_NUM-1:0]       mem_rdata [0:1];     

    // tagv memory
    reg     [1:0]               tagv_we;          
    wire    [TAG_WIDTH-1:0]     w_tag;
    wire    [TAG_WIDTH:0]       tag_rdata [0:1]; 

    // hit
    wire    [1:0]               hit;
    wire                        hit_way;
    wire                        cache_hit;
    wire    [TAG_WIDTH-1:0]     tag;

    // LRU
    wire                        lru_sel;

    // read control
    reg                         data_from_mem;

    // statistics
    reg     [63:0]              total_time;
    reg     [63:0]              total_hit;

    /* request buffer: lock the read request addr */
    always @(posedge clk) begin
        if(!rstn) begin
            req_buf <= 0;
        end
        else if(req_buf_we) begin
            req_buf <= raddr;
        end
    end

    /* return buffer: cat the return 32-bit data */
    always @(posedge clk) begin
        if(!rstn) begin
            ret_buf <= 0;
        end
        else if(i_rvalid && i_rready) begin
            ret_buf <= {i_rdata, ret_buf[BIT_NUM-1:32]};
        end
    end

    /* 2-way data memory */
    // read index
    assign r_index = raddr[BYTE_OFFSET_WIDTH+INDEX_WIDTH-1:BYTE_OFFSET_WIDTH];
    // write index 
    assign w_index = req_buf[BYTE_OFFSET_WIDTH+INDEX_WIDTH-1:BYTE_OFFSET_WIDTH];

    BRAM_common #(
        .DATA_WIDTH(BIT_NUM),
        .ADDR_WIDTH (INDEX_WIDTH)
    ) data_mem0 (
        .clk      (clk ),
        .raddr    (r_index),
        .waddr    (w_index),
        .din      (ret_buf),
        .we       (mem_we[0]),
        .dout     (mem_rdata[0])
    );
    BRAM_common #(
        .DATA_WIDTH(BIT_NUM),
        .ADDR_WIDTH (INDEX_WIDTH)
    ) data_mem1 (
        .clk      (clk ),
        .raddr    (r_index),
        .waddr    (w_index),
        .din      (ret_buf),
        .we       (mem_we[1]),
        .dout     (mem_rdata[1])
    );

    /* 2-way tagv memory: the highest bit is the valid bit */
    // the tag ready to be written to tagv table
    assign w_tag = req_buf[31:32-TAG_WIDTH];
    BRAM_common #(
      .DATA_WIDTH(TAG_WIDTH+1),
      .ADDR_WIDTH (INDEX_WIDTH)
    ) tagv_mem0 (
      .clk      (clk ),
      .raddr    (r_index),
      .waddr    (w_index),
      .din      ({1'b1, w_tag}),
      .we       (tagv_we[0]),
      .dout     (tag_rdata[0])
    );
    BRAM_common #(
      .DATA_WIDTH(TAG_WIDTH+1),
      .ADDR_WIDTH (INDEX_WIDTH)
    ) tagv_mem1 (
      .clk      (clk ),
      .raddr    (r_index),
      .waddr    (w_index),
      .din      ({1'b1, w_tag}),
      .we       (tagv_we[1]),
      .dout     (tag_rdata[1])
    );
    
    /* settings of miss request */
    assign i_rlen   = WORD_NUM-1;                                                   // WORD_NUM words per visit
    assign i_rsize  = 3'h2;                                                         // 2 ^ 2 = 4 bytes per beat
    assign i_raddr  = {req_buf[31:BYTE_OFFSET_WIDTH], {BYTE_OFFSET_WIDTH{1'b0}}};   // align to the block address

    /* hit */
    assign tag          = req_buf[31:32-TAG_WIDTH]; // the tag of the request
    assign hit[0]       = (tag == tag_rdata[0][TAG_WIDTH-1:0]) && tag_rdata[0][TAG_WIDTH];
    assign hit[1]       = (tag == tag_rdata[1][TAG_WIDTH-1:0]) && tag_rdata[1][TAG_WIDTH];
    assign hit_way      = hit[0] ? 0 : 1;
    assign cache_hit    = |hit;
    
    /* read control */
    // choose data from mem or return buffer 
    reg     [31:0]              rdata_mem[0:WORD_NUM-1];
    wire    [31:0]              rdata_ret[0:WORD_NUM-1];
    wire    [31:0]              inst_from_mem;
    wire    [31:0]              inst_from_ret;
    generate
        genvar i;
        for(i = 0; i < WORD_NUM; i = i+1) begin
            always @(*) begin
                case(hit)
                    2'b10: rdata_mem[i] = mem_rdata[1][i*32+31:i*32];
                    2'b01: rdata_mem[i] = mem_rdata[0][i*32+31:i*32];
                    default: rdata_mem[i] = 0;
                endcase
            end
            assign rdata_ret[i] = ret_buf[i*32+31:i*32];
        end
    endgenerate
    assign inst_from_mem = rdata_mem[req_buf[BYTE_OFFSET_WIDTH-1:2]];
    assign inst_from_ret = rdata_ret[req_buf[BYTE_OFFSET_WIDTH-1:2]];
    assign rdata = data_from_mem? inst_from_mem: inst_from_ret;
    
    /* LRU */
    reg     [1:0]               lru_reg[0:SET_NUM-1];
    reg                         lru_hit_update;
    reg                         lru_ref_update;
    generate
        for(i = 0; i < SET_NUM; i = i+1) begin
            always @(posedge clk) begin
                if(!rstn) begin
                    lru_reg[i] = 2'b10;
                end
            end
        end
    endgenerate
    
    always @(posedge clk) begin
        if(lru_hit_update) begin
            case(hit)
                2'b01: lru_reg[w_index] <= 2'b01;
                2'b10: lru_reg[w_index] <= 2'b10;
                default:;
            endcase
        end
        if(lru_ref_update) begin
            case(mem_we)
                2'b01: lru_reg[w_index] <= 2'b01;
                2'b10: lru_reg[w_index] <= 2'b10;
                default:;
            endcase
        end
    end
    assign lru_sel = lru_reg[w_index][0];

    /* main FSM */
    // FIXME: No.2 TODO in LRU module
    localparam [2:0] 
        IDLE    = 3'b000, 
        LOOKUP  = 3'b001,
        MISS    = 3'b010, 
        REFILL  = 3'b011;
    reg [2:0] state, next_state;
    // stage 1
    always @(posedge clk) begin
        if(!rstn) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end
    // stage 2
    always @(*) begin
        case(state)
            IDLE: begin
                if(rvalid)              next_state = LOOKUP;
                else                    next_state = IDLE;
            end
            LOOKUP: begin
                if(cache_hit)           next_state = rvalid ? LOOKUP : IDLE;
                else                    next_state = MISS;
            end
            MISS: begin
                if(i_rready && i_rlast) next_state = REFILL;
                else                    next_state = MISS;
            end
            REFILL:                     next_state = rvalid ? LOOKUP : IDLE;
            default:                    next_state = IDLE;
        endcase
    end
    // stage 2: output
    always @(*) begin
        req_buf_we              = 0;
        i_rvalid                = 0;
        rready                  = 0;
        tagv_we                 = 2'b0;
        mem_we                  = 2'b0;
        data_from_mem           = 1;
        lru_hit_update          = 0;
        lru_ref_update          = 0;

        case(state)
        IDLE: begin
            req_buf_we      = 1;
        end
        LOOKUP: begin
            if(cache_hit) begin
                rready              = 1;
                req_buf_we          = rvalid;
                lru_hit_update      = 1;
            end
        end
        MISS: begin
            i_rvalid        = 1;
        end
        REFILL: begin
            tagv_we                 = lru_sel ? 2'b10 : 2'b01;
            mem_we                  = lru_sel ? 2'b10 : 2'b01;
            rready                  = 1;
            req_buf_we              = rvalid;
            data_from_mem           = 0;
            lru_ref_update          = 1;
        end
        default:;
        endcase
    end
    always @(posedge clk) begin
        if(!rstn) begin
            total_time <= 0;
            total_hit <= 0;
        end
        else if(state == LOOKUP) begin
            total_hit <= total_hit + {63'b0, cache_hit};
            total_time <= total_time + 1;
        end
    end

endmodule