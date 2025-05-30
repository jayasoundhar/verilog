// SRAM.....
module sram(output reg [2:0]out,input [2:0] data,input[7:0]addr,input wr,clk,rst);
  reg [2:0]ram[7:0];
  
  always@(posedge clk) begin
    
    if(rst) begin out=3'bxxx; for(integer i=0;i<8;i++) ram[i] = 3'bxxx; end
    
    else begin
      if(wr)  ram[addr] = data;
      
      else out = ram[addr];
    end
  end
endmodule
