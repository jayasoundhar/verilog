// SR ff....

module sr_ff_tb();
  reg s,r,clk,rs;
  wire q,qb;
  initial begin 
    clk = 0; 
  end
  
  sr_ff dut(.s(s),.r(r),.q(q),.qb(qb),.clk(clk),.rs(rs));
  
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rs=%b clk=%b S=%b R=%b => Q=%b Qb=%b",rs,clk,s,r,q,qb);
  end
  
  initial begin
    
    rs=0;s=1;r=0;#10rs=1;s=1;r=0;#10
    rs=0;s=0;r=0;#10rs=1;s=0;r=0;#10
    rs=0;s=0;r=1;#10rs=1;s=0;r=1;#10
    rs=0;s=0;r=0;#10rs=1;s=0;r=0;#10
    rs=0;s=1;r=1;#10rs=1;s=1;r=1;#10
    $finish;
  end
endmodule
