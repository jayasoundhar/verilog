// Code your design here
//2:1 mux
module mux_2_1 (output y,input s,a,b);
  assign y= (~s&a) | (s&b);
endmodule
