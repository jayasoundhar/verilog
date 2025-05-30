// DPRAM.....
module dpram(output reg [2:0]outp1,reg[2:0]outp2,input [2:0]datap2,[2:0] datap1,input[7:0]addrp2,[7:0]addrp1,input wrp2,clk,wrp1,rst);
  reg [2:0]ram[7:0];
  
  always@(posedge clk) begin
    
    if(rst) begin 
      outp1=3'bxxx;
      outp2=3'bxxx; 
      for(integer i=0;i<8;i++) 
        ram[i] = 3'bxxx; 
    end
    
    else begin
      if(wrp1)  ram[addrp1] = datap1;
   //port 1   
      else outp1 = ram[addrp1];
      
      if(wrp2)  ram[addrp2] = datap2;
     //port 2 
      else outp2 = ram[addrp2];
    end
  end
endmodule
