
// Code your design here
// Code your design here
module full_subtractor(output d,b_out, input a,b,b_in);
  assign d=a^b^b_in;
  assign b_out= (b_in&b) | (~a&(b_in|b));
endmodule
