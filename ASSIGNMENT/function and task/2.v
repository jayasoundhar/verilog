// Code your design here
function adder(input a,b);begin
    adder = a+b;
    end
  endfunction
module add(output sum,input a,b);
  assign sum = adder(a,b);
  
endmodule
  
