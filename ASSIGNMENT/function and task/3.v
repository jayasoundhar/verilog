// Code your design here

module add(output sum,input a,b);
  task adder(input a,b,output sum);begin
    sum = a+b;
    end
endtask
  
  adder(sum,a,b);
  
endmodule
  
