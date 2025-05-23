// Code your testbench here
// or browse Examples
module binary_to_gray_tb();
  
  reg [2:0] b;
  wire [2:0] a;
  
  binary_to_gray dut(.a(a),.b(b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("B=%b => A=%b",b,a);
//     #40$finish;
  end
  
  initial begin
    
//     for(integer i=0;i<8;i=i+1) begin
//       b=i;
      
//     end
    b=3;#5
    b=7;#5
    b=0;#5
    b=4;#5
    b=5;#5
	$finish;  
  end
endmodule
