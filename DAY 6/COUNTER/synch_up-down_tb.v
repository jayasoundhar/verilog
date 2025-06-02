module udctb;
reg clk,rs,up;
wire [3:0]count;
udc uut(clk,rs,up,count);
initial begin
$dumpfile("coun.vcd");
$dumpvars;
$monitor("clk=%b,rs=%b,up=%b,count=%b",clk,rs,up,count);
  clk=0;rs=0;
  up=1;
  #4; rs=1;
  #50;
  rs=0;
  #4;rs=1;up=0;
  #63;
  $finish;
  end
always #2 clk=~clk;
endmodule
