module SDU(
    input clk,rst,
    input [7:0] valid,
    input [3:0] rd1,
    input [2:0] RP,
    input [2:0] WP,
    output [2:0] ra1,
    output reg [2:0] an,  //数码管选择
    output reg [3:0] seg  //数码管数据
);
reg [23:0] cnt;

assign ra1=an+RP;

always@(posedge clk)
begin
    if(rst)begin//复位时显示0
        an<=0;
        seg<=0;
    end
    else begin
        if(valid==0)begin
            an <=0;
            seg <=0;
        end
        else begin
        if(cnt==0)begin
            if(an>=(((WP>RP)?WP-RP:8-RP+WP)-1)) an<=0;
            else an<=an+1;
        end
        else begin
            an<=an;
        end 
        seg <= rd1;
    end
    end

    if(cnt>=100000)//控制选择信号
        cnt<=0;
    else
        cnt<=cnt+1;
 
end
endmodule