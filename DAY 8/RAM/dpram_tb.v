// DPRAM.....
module sram_tb();
  
  reg [2:0] datap1;
  reg [7:0]addrp1;
  reg wrp1,clk,rstp1;
  wire [2:0]outp1;
  initial clk = 1;
  reg [2:0] datap2;
  reg [7:0]addrp2;
  reg wrp2,rstp2;
  wire [2:0]outp2;
  
  dp1ram dutp1(.outp1(outp1),.datap1(datap1),.addrp1(addrp1),.wrp1(wrp1),.clk(clk),.rstp1(rstp1));
  dp2ram dutp2(.outp2(outp2),.datap2(datap2),.addrp2(addrp2),.wrp2(wrp2),.clk(clk),.rstp2(rstp2));
  
  always #5clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("datap1=%b addrp1=%b wrp1=%b rstp1=%b  => outp1=%b /// datap2=%b addrp2=%b wrp2=%b rstp2=%b  => outp2=%b",datap1,addrp1,wrp1,rstp1,outp1,datap2,addrp2,wrp2,rstp2,outp2);
  end
  
  initial begin
    rstp1=1;#10;
    
    rstp2=1;#10;
    
    for(integer i=0;i<8;i++) begin
      #10rstp1=0;wrp1=1;datap1=i;addrp1=i;
      
      #10rstp2=0;wrp2=1;datap2=i;addrp2=i;
    end
//     rst=1;#10
    
    for(integer i=0;i<8;i++) begin
      #10rstp1=0;wrp1=0;addrp1=i;
      
      #10rstp2=0;wrp2=0;addrp2=i;
    end
    #10rstp1=1;#10
    
    #10rstp2=1;#10
    
    $finish;
  end
endmodule
