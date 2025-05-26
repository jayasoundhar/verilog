// odd parity generator....

module odd_parity_generator(output  out,input [2:0]in);
  assign out = ~(in[0]^in[1]^in[2]);
endmodule
