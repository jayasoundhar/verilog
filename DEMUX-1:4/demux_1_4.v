// Code your design here
module demux_1_4(output y0,y1,y2,y3, input s0,s1,x);
  assign y0=(~s0&~s1)&x;
  assign y1=(~s0&s1)&x;
  assign y2=(s0&~s1)&x;
  assign y3=(s0&s1)&x;
endmodule
  
