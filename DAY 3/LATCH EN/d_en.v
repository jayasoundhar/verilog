//D latch......
module d_latch(output reg q,qb,input d,en);
  always@(*)begin
    if(en) begin
    case(d)
      1'b0 : q=0;
      1'b1 : q=1;
    endcase
       qb = ~q;
  end
  end
endmodule

