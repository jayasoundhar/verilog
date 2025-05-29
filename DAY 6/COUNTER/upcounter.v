// up-Counter
module up_counter(output reg [2:0]out,input rst,clk);
  initial out = 3'bxxx;
  always@(posedge clk) begin
    if (rst) begin
    out = 3'b000;
  end
  else
    out = out+1;
  end
endmodule

