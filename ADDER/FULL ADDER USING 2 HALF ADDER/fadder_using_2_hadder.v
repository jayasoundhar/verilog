module halfadder(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule

module fulladder(input a,b,cin,output sum,cout);
wire x,y,z;
assign cout=y|z;
halfadder uut1(.a(a),.b(b),.sum(x),.carry(y));
halfadder uut2(.a(x),.b (cin),.sum(sum),.carry(z));
endmodule
