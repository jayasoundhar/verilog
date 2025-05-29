// down-counter

module down_counter_tb();
  
  reg rst,clk;
  wire [2:0]out;
  
  down_counter dut (.out(out),.clk(clk),.rst(rst));
  
  initial clk=1;
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $monitor("out=%b",out);
    rst=1;#10
    rst=0;#50
    rst=1;#10
    rst=0;#20
    $finish;
  end 
endmodule
