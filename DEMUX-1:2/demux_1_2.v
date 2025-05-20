// Code your design here
module demux_1_2(output a,b, input s,y);
  assign a=(~s&y);
  assign b=(s&y);
endmodule
  
