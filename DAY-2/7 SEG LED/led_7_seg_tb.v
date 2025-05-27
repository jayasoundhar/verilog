// Code your testbench here
// or browse Examples
// Code your design here
//7-seg led.....
module led_7_led_tb();
  wire [6:0]out;
  reg [3:0]in;
  reg [9:0] check = {7'b1111110,
7'b0011000,
7'b0110111,
7'b0111101,
7'b1011000,
7'b1101101,
7'b1101111,
7'b0111000,
7'b1111111,
7'b1111001};
  
  led_7_seg dut(.out(out),.in(in));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("in=%b =>out=%b",in,out);
  end
  
  initial begin
    
    for(integer i=0;i<16;i=i+1) begin
      in = i;#2
      if(i<=9 && out==check[i]) $write("check=%b pass",check[i]);
      else if (i>=10 && out==7'b0000000)$write("pass");
      else $write("fail");
    end
  end
  
endmodule
