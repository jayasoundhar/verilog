//4bit-adder...
//ripple carry adder.....

module full_adder(output sum,cout, input a,b,cin);
  
  assign sum = a^b^cin;
  
  assign cout = a&b | a&cin | cin&b;

endmodule

module ripple_carry_adder(output [3:0]s,[3:0]co, input [3:0]ain,[3:0]bin,ci);
  
  //for(integer i=0;i<4;i++) begin
    
  full_adder f0(s[0],co[0],ain[0],bin[0],ci);
  full_adder f1(s[1],co[1],ain[1],bin[1],co[0]);
  full_adder f2(s[2],co[2],ain[2],bin[2],co[1]);
  full_adder f3(s[3],co[3],ain[3],bin[3],co[2]);
  
  //end

endmodule
