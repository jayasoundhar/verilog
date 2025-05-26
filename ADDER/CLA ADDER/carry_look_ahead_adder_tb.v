// Code your testbench here
// or browse Examples
module cla_tb();
  reg [3:0]ain,bin;
  reg cin;
  wire [3:0] s;
  
  cla dut(.ain(ain),.bin(bin),.cin(cin),.s(s));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("ain=%b bin=%b cin=%b => s=%b",ain,bin,cin,s);
  end
  
  initial begin
    ain = 4;bin = 7;cin = 1;#5;
    ain = 5;bin = 2;cin = 0;#5;
    ain = 8;bin = 5;cin = 1;#5;
    #60$finish;
  end
endmodule
