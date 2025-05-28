//D ff......
module d_ff(output reg q,qb,input d,clk);
  always@(posedge clk)begin
 
    case(d)
      1'b0 : q=0;
      1'b1 : q=1;
    endcase
       qb = ~q;
  end
endmodule

