function [7:0] shift(input [7:0]in);
  begin
    shift = in>>1;
  end
endfunction

module r_shift();
  reg [7:0] in,out;
  initial in = 8'b11111111;
  initial begin
  out = shift(in);
    $display(in);
    $display(out);
  end
endmodule
