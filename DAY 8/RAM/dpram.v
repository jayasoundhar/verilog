// DPRAM.....
//PORT1.....
module register();
  reg [2:0]ram[7:0];
module dp1ram(output reg [2:0]outp1,input [2:0] datap1,input[7:0]addrp1,input wrp1,clk,rstp1);
  
  reg [2:0]ramp1[7:0];
  register f2(.ram(ramp1));
  
  always@(posedge clk) begin
    
    if(rstp1) begin outp1=3'bxxx; for(integer i=0;i<8;i++) ramp1[i] = 3'bxxx; end
    
    else begin
      if(wrp1)  ramp1[addrp1] = datap1;
      
      else outp1 = ramp1[addrp1];
    end
  end
endmodule
//PORT2......
module dp2ram(output reg [2:0]outp2,input [2:0]datap2,input[7:0]addrp2,input wrp2,clk,rstp2);
  reg [2:0]ramp2[7:0];
  register f1(.ram(ramp2));
  always@(posedge clk) begin
    
    if(rstp2) begin outp2=3'bxxx; for(integer i=0;i<8;i++) ramp2[i] = 3'bxxx; end
    
    else begin
      if(wrp2)  ramp2[addrp2] = datap2;
      
      else outp2 = ramp2[addrp2];
    end
  end
endmodule
