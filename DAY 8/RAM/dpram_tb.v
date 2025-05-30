// DPRAM.....
module dpram_tb();
  
  reg [2:0] datap1;
  reg [7:0]addrp1;
  reg wrp1,clk,rst;
  wire [2:0]outp1;
  initial clk = 1;
  reg [2:0] datap2;
  reg [7:0]addrp2;
  reg wrp2;
  wire [2:0]outp2;
  
  dpram dutp1(.outp1(outp1),.datap1(datap1),.addrp1(addrp1),.wrp1(wrp1),.clk(clk),.rst(rst),.outp2(outp2),.datap2(datap2),.addrp2(addrp2),.wrp2(wrp2));
  
  always #5clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("datap1=%b addrp1=%b wrp1=%b rst=%b  => outp1=%b /// datap2=%b addrp2=%b wrp2=%b  => outp2=%b",datap1,addrp1,wrp1,rst,outp1,datap2,addrp2,wrp2,outp2);
  end
  
  initial begin
    rst=1;#10;
    
    for(integer i=0;i<8;i++) begin
      #10rst=0;wrp1=1;datap1=i;addrp1=i;
    end
    for(integer i=0;i<8;i++) begin      
      #10rst=0;wrp2=0;datap2=i;addrp2=i;
    end
    #10rst=1;#10

    $finish;
  end
endmodule
