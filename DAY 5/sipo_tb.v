// SISO.....
module siso_tb();
  reg clk,rst,s;
  wire [3:0]out;
  initial clk=1;
  
  siso dut(.s(s),.clk(clk),.rst(rst),.out(out));
  initial begin
    repeat(15) begin
      #5clk = ~clk;
  end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rst=%b clk=%b s=%b => out=%b",rst,clk,s,out);
  end
  
  initial begin
    rst=0;s=1;#10
    rst=0;s=1;#10
    rst=0;s=1;#10
    rst=0;s=0;#10
    rst=0;s=1'bx;#10
    rst=0;s=1'bx;#10
    rst=0;s=1'bx;#10
    rst=0;s=1'bx;#10
    $finish;
  end
endmodule
    
    
