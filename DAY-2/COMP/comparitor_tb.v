// comparitor....

module compare_tb();
  reg a,b;
  wire out;
  
  compare dut(.out(out),.a(a),.b(b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("a=%b b=%b => out=%b",a,b,out);
  end
  initial begin
    a=0;b=0;#5
    a=0;b=1;#5
    a=1;b=0;#5
    a=1;b=1;#5
    $finish;
  end
endmodule
