module sq_mo_nol(output out,input in,clk,rst);
parameter a = 4'd1;
parameter b = 4'd2;
parameter c = 4'd3;
parameter d = 4'd4;
parameter e = 4'd5;
  reg [4:0] st,nx_st;
always @(posedge clk or negedge rst)begin
if (rst)begin
st<=a;
end
else
st<=nx_st;
end
always @ (*)begin
case (st)
a : nx_st = in ? b : a;
b : nx_st = in ? c : a;
c : nx_st = in ? d : a;
d : nx_st = in ? d : e;
e : nx_st = in ? a : a;
default : nx_st = a;
endcase
end
assign out = (st==e) && (in==0);
endmodule
