//T latch....

module t_latch_tb();
  reg t,clk;
  wire q,qb;
  initial begin 
    clk = 0; 
  end
  
  t_latch dut(.t(t),.q(q),.qb(qb),.clk(clk));
  
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk=%b T=%b Q=%b Qb=%b",clk,t,q,qb);
  end
  
  initial begin
    t=0;
    t=0;#10
    t=1;#10
    $finish;
  end
endmodule
