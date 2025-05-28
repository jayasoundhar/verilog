//T latch....

module t_latch_tb();
  reg t,en;
  wire q,qb;

  t_latch dut(.t(t),.q(q),.qb(qb),.en(en));
  

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("en=%b T=%b Q=%b Qb=%b",en,t,q,qb);
  end
  
  initial begin
    en=1;t=1;#10
    en=1;t=0;#10
    en=0;t=1;#10
    $finish;
  end
endmodule
