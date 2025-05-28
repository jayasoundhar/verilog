// SISO-right-shift....
module siso(output reg out,input s,clk,rst);
  reg [3:0]so;
  always@(posedge clk) begin
  if(rst) begin
    out <= 1'b0;
    so <= 4'b0000;
  end
  else begin
    so <=so<<1;
    so[0] <= s;
    out <= so[3];    
  end
  end
endmodule
