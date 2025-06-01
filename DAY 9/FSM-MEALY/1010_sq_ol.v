module sq_meol(output out,input in,clk,rst);
parameter a = 4'd1;
parameter b = 4'd2;
parameter c = 4'd3;
parameter d = 4'd4;
reg [3:0] st,nx_st;
always @(posedge clk)begin
if (rst)begin
st<=a;
end
else
st<=nx_st;
end
always @ (*)begin
case (st)
a : nx_st = in ? b : a;
b : nx_st = in ? b : c;
c : nx_st = in ? d : a;
d : nx_st = in ? b : a;
default : nx_st = a;
endcase
end
assign out = (st==d) && (in==0);
endmodule
