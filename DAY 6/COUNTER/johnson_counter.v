// johnson-counter....

module johnson_counter(output reg [3:0]out,input clk,rst);
  
  always@(posedge clk) begin
    
    if(rst) out <= 4'b0000;
    else begin
      out <= {~out[0],out[3:1]};
    end
  end
endmodule
