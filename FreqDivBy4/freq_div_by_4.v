module freq_div_by_4(clk_out,clk,rst);

input clk,rst;
output reg clk_out;

always @(posedge clk)
    if(rst)
        clk_div2 <= 0;
    else
        clk_div2 <=~ clk_div2;


always @(posedge clk_div2)
    if(rst)
        clk_out <= 0;
    else
        clk_out <=~ clk_out;


endmodule