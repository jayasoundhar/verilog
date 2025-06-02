module udc(input clk,rs,up,output reg [3:0]count);
always @(posedge clk)begin
if(rs==0)begin
count<=4'b0;
end
else begin
if(up) count<=count+1'b1;
else count<=count-1'b1;
end
end
endmodule
