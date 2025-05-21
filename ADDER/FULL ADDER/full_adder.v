// Code your design here
module full_adder(output s,c, input a,b,cin);
  assign s=a^b^cin;
  assign c= (a&b) | (cin&(a^b));
endmodule
