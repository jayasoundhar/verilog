//half adder
module half_adder(output s,c,input a,b);
  assign s=a^b;   //a XOR with b
  assign c=a&b;   //a AND with b
  
endmodule
  
