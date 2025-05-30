//johnson-counter....
module johnson_counter_tb();
  reg clk,rst;
  wire [3:0] out;
  initial clk=1;
  
  johnson_counter dut(.out(out),.clk(clk),.rst(rst));
  
  always #5clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rst=%b  => out=%b",rst,out);
  end
  
  initial begin
    rst=1;#10
    rst=0;#50
    rst=1;#10
    rst=0;#20
    $finish;
  end
endmodule
