//D ff....

module d_ff_tb();
  reg d,clk,rs;
  wire q,qb;
  initial begin 
    clk = 0; 
  end
  
  d_ff dut(.d(d),.q(q),.qb(qb),.clk(clk),.rs(rs));
  
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk=%b D=%b Q=%b Qb=%b",clk,d,q,qb);
  end
  
  initial begin
    
    rs=0;d=1;#10
    rs=1;d=0;#10
    rs=1;d=1;#10
    rs=0;d=0;#10
    $finish;
  end
endmodule
