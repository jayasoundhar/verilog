// SRAM.....
module sram_tb();
  
  reg [2:0] data;
  reg [7:0]addr;
  reg wr,clk,rst;
  wire [2:0]out;
  initial clk = 1;
  
  sram dut(.out(out),.data(data),.addr(addr),.wr(wr),.clk(clk),.rst(rst));
  
  always #5clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("data=%b addr=%b wr=%b rst=%b  => out=%b",data,addr,wr,rst,out);
  end
  
  initial begin
    rst=1;#10;
    
    for(integer i=0;i<8;i++) begin
      #10rst=0;wr=1;data=i;addr=i;
    end
//     rst=1;#10
    
    for(integer i=0;i<8;i++) begin
      #10rst=0;wr=0;addr=i;
    end
    #10rst=1;#10
    $finish;
  end
endmodule
