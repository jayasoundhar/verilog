module sq_mo_ol_tb;
reg in,clk,rst;
wire out;
sq_mo_ol dut(in,clk,rst,out);
initial clk=0;
always #5 clk=~clk;
initial begin
$dumpfile("1111.vcd");
$dumpvars;
$monitor($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

in=0;
#10rst =0;
#10rst=1;
#10in=1; 
#10in=1; 
#10in=1; 
#10in=1; 
#10in=1; 
#10in=1;
#10in=1;
#10in=1;
#10in=1;
#10in=1;
#10in=1;
#25$finish;
end
endmodule
