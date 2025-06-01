module sq_mo_nol_tb;
reg in,clk,rst;
wire out;
  sq_mo_nol dut(out,in,clk,rst);
initial clk=0;
always #5 clk=~clk;
initial begin
  $dumpfile("dump.vcd");
$dumpvars;
$monitor($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

in=0;
#10rst=1;
#10in=1; 
#10in=1; 
#10in=1; 
#10in=1; 
#10in=1; 
#10in=0;
#10in=1;
#10in=1;
#10in=1;
#10in=1;
#10in=0;
#75$finish;
end
endmodule
