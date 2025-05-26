// gray to binary test bench.....

module gray_to_binary_tb();
  wire [3:0]out;
  reg [3:0]in;
  
  gray_to_binary dut(.in(in),.out(out));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
    $monitor("in=%b => out=%b",in,out);
    in = 11;#5
    in = 4'b0101;#5
    in = 15;#5
    in = 4;#5
    $finish;
  end
endmodule
