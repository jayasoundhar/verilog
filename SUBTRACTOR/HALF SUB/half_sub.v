// Code your design here
//half subtractor
module half_subtractor(output s,c,input a,b);
  assign s= a^b;
  assign c= ~a&b;
  
endmodule
  
