// up-Counter
module up_counter(output reg [2:0]out,input rst,clk,s);
  initial out = 3'bxxx;
  always@(posedge clk) begin
    if (rst) begin
    out = 3'b000;
  end
  else begin
    case (s)
      0 : out=out+1;
      1 : out=out-1;
      default : out=out;
      endcase
  end
  end
endmodule
