// jk ff....

module jk_ff_tb();
  reg j,k,clk,rs;
  wire q,qb;
  initial begin 
    clk = 0; 
  end
  
  jk_ff dut(.j(j),.k(k),.q(q),.qb(qb),.clk(clk),.rs(rs));
  
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rs=%b clk=%b J=%b K=%b => Q=%b Qb=%b",rs,clk,j,k,q,qb);
  end
  
  initial begin
    
    rs=1;j=1;k=0;#10
    rs=0;j=0;k=0;#10
    rs=1;j=0;k=1;#10
    rs=0;j=0;k=0;#10
    rs=1;j=1;k=1;#10
    $finish;
  end
endmodule
