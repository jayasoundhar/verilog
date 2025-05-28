//T ff......
module t_ff(output reg q,qb,input t,clk,rs);
  initial q=0;
  always@(posedge clk)begin
 
    case(t)
      1'b0 : q=q;
      1'b1 : q=~q;
    endcase
       qb = ~q;
  end
endmodule
