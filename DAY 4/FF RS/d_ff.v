//D ff......
module d_ff(output reg q,qb,input d,clk,rs);
  always@(posedge clk)begin
    if(rs) q=0;
    case(d)
      1'b0 : q=0;
      1'b1 : q=1;
    endcase
       qb = ~q;
  end
endmodule
