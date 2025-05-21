
module mux_4_1(input y0,y1,y2,y3,s0,s1, output x);
  
  assign x = ((~s0)&(~s1)&(y0) | (~s0)&(s1)&(y1)| (s0)&(~s1)&(y2) | (s0)&(s1)&(y3));

 endmodule
