//D latch....

module d_latch_tb();
  reg d,en;
  wire q,qb;
  
  d_latch dut(.d(d),.q(q),.qb(qb),.en(en));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("en=%b D=%b Q=%b Qb=%b",en,d,q,qb);
  end
  
  initial begin
    
    en=1;d=1;#10
    en=0;d=0;#10
    en=0;d=1;#10
    en=1;d=0;#10
    $finish;
  end
endmodule
