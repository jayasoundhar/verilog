// 2x4--decoder--TB....

module decoder_4_2_tb();
  
  reg a,b;
  wire d0,d1,d2,d3;
  
  decoder_4_2 dut(.a(a),.b(b),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
  
  initial begin 
    
    $dumpfile("dump.vcd");
    $dumpvars;
    
  end
  
  initial begin
    
    a=0;b=0;#5
    a=0;b=1;#5
    a=1;b=0;#5
    a=1;b=1;#5
    $finish;
  end
endmodule
