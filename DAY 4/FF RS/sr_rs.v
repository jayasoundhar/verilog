// SR ff...
module sr_ff(output reg q,qb,input s,r,clk,rs);
  
  always@(posedge clk)begin
 	if(rs) begin
  		q=0;
    end
    case({s,r})
      2'b00 : q=q;
      2'b01 : q=0;
      2'b10 : q=1;
      2'b11 : q=1'bx;
    endcase
       qb = ~q;
  end
endmodule
