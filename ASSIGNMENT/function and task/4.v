//odd number generation
module odd(output reg[7:0]out[19:0]);
  
  initial $monitor(out);
  initial begin
    for(integer i=0;i<20;i=i+1)begin
      out[i] = odd(i);
    end
  end
  
  function [7:0]odd(input integer i);
  begin
    odd = i*2+1;
  end
endfunction
  
endmodule

//even num generation
module even(output reg[7:0]out[19:0]);
  
  initial $monitor(out);
  initial begin
    for(integer i=0;i<20;i=i+1)begin
      out[i] = even(i);
    end
  end
  
  function [7:0]even(input integer i);
  begin
    even = i*2+1;
  end
endfunction
  
endmodule
