
module sq_menol_tb;
reg in,clk,rst;
wire out;
  sq_menol dut(out,in,clk,rst);
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("1010.vcd");
$dumpvars;
$monitor("in=%d,rst=%d,out=%d",in,rst,out);

in=0;
#10 rst =1; #10 rst=0;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=0;
#10 in=1;
#10 in=1;
$finish;
end
endmodule
