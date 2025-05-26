// Code your design here
//carry look ahead adder.....

module cla(output [3:0]s,output cout,input [3:0] ain,bin,input cin);
  reg [3:0]c,p,g;
  
  assign g[0]=ain[0]&bin[0];
  assign g[1]=ain[1]&bin[1];
  assign g[2]=ain[2]&bin[2];
  assign g[3]=ain[3]&bin[3];
   
  
  assign p[0]=ain[0]^bin[0];
  assign p[1]=ain[1]^bin[1];
  assign p[2]=ain[2]^bin[2];
  assign p[3]=ain[3]^bin[3];
  
  assign c[0] = g[0]|(p[0]&cin);
  assign c[1] = g[1]|(p[1]&c[0]);
  assign c[2] = g[2]|(p[2]&c[1]);
  assign c[3] = g[3]|(p[3]&c[2]);
  
  assign s[0] = p[0]^cin;
  assign s[1] = p[1]^c[0];
  assign s[2] = p[2]^c[1];
  assign s[3] = p[3]^c[2];
  
  assign cout = c[3];
  
endmodule
  
