// PISO-right-shift....
module siso(output reg sout,input [3:0]pin,input clk,rst,load);
  reg [3:0]st;
  integer i;
  always@(posedge clk) begin
  if(rst) begin
    sout <=1'b0;
  end
    else if(!load) begin
      st<=st<<1;
    end
  else begin
    st<=pin;
  end
    sout<=st[3];
  end
endmodule
