// SIPO-right-shift....
module sipo(output reg [3:0]out,input s,clk,rst);
  reg [3:0]po;
  always@(posedge clk) begin
  if(rst) begin
    out <= 1'b0;
    po <= 4'b0000;
  end
  else begin
    po <=po<<1;
    po[0] <= s;
    out = po;  
  end
  end
endmodule
