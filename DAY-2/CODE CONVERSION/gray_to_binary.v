//gray to binary code conversion......

module gray_to_binary(output [3:0]out,input [3:0]in);
  assign out [3] = in[3];
  assign out [2] = in[2]^out[3];
  assign out [1] = in[1]^out[2];
  assign out [0] = in[0]^out[1];
endmodule
