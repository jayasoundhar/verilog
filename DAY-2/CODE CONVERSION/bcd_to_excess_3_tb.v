// bcd to excess 3 conversion...

module bcd_to_excess_3_tb();
  wire [3:0]out;
  reg [3:0]in;
  
  bcd_to_excess_3 dut(.out(out),.in(in));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("in=%b =>out=%b",in,out);
  end
  
  initial begin
    
    for(integer i=0;i<10;i++) begin
      in=i;#5
      if(out==in+3) $write("pass");
      else $write("fail");
    end
  end
endmodule
