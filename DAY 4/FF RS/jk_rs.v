//jk ff......
module jk_ff(output reg q,qb,input j,k,clk,rs);
  always@(posedge clk)begin
    if(rs) q=0;
    case({j,k})
      2'b00 : q=q;
      2'b01 : q=0;
      2'b10 : q=1;
      2'b11 : q=~q;
    endcase
       qb = ~q;
  end
endmodule
