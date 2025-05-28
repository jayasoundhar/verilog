//T ff....

module t_ff_tb();
  reg t,clk,rs;
  wire q,qb;
  initial begin 
    clk = 0; 
  end
  
  t_ff dut(.t(t),.q(q),.qb(qb),.clk(clk),.rs(rs));
  
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rs=%b clk=%b T=%b => Q=%b Qb=%b",rs,clk,t,q,qb);
  end
  
  initial begin
    rs=0;t=0;#10
    rs=1;t=1;#10
    rs=1;t=0;#10
    rs=0;t=1;#10
    $finish;
  end
endmodule
