// ring-counter....

module ring_counter(output reg [3:0]out,input clk,rst);
  
  always@(posedge clk) begin
    
    if(rst) out <= 4'b1000;
    else begin
      out <= {out[0],out[3:1]};
    end
  end
endmodule
