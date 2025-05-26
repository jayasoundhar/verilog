
// odd parity checker....

module odd_parity_generator(output  out,input [3:0]in);
  assign out = ~(in[0]^in[1]^in[2]^in[3]);
endmodule
