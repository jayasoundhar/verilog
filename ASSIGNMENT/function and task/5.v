function integer multiple(input integer in,input integer x);
  begin
    multiple = in*x;
  end
endfunction
function integer devide(input integer in,integer x);
  begin
    devide = in/x;
  end
endfunction

module md();
  integer in,x;
  integer out;
  
  initial begin 
  in=2;x=2;
  out =multiple(in,x);
  $display(out);
  out =devide(in,x);
  $display(out);
  end
endmodule
