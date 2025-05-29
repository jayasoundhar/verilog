// up-down-counter

module up_down_counter_tb();
  
  reg rst,clk,s;
  wire [2:0]out;
  
  up_down_counter dut (.out(out),.clk(clk),.rst(rst),.s(s));
  
  initial clk=1;
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $monitor("out=%b",out);
    rst=1;#10
    rst=0;s=0;#50
    rst=1;#10
    rst=0;s=1;#50
    rst=1;#10
    $finish;
  end 
endmodule
