//encoder
module encoder_8_3(output a,b,c, input d0,d1,d2,d3,d4,d5,d6,d7);
  assign a=d4|d5|d6|d7;
  assign b=d2|d3|d6|d7;
  assign c=d1|d3|d5|d7;
  
endmodule
