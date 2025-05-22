// Code your design here
module logic_gates(output y_and,y_or,y_not,y_xor,y_xnor,y_nand,y_nor,input a,b);
  assign y_and=a&b;
  assign y_or=a|b;
  assign y_not=~a;
  assign y_nand=~(a&b);
  assign y_nor=!(a|b);
  assign y_xor=a^b;
  assign y_nor=~(a^b);
  
endmodule
  
