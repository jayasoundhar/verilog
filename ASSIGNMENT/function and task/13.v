function s1(input in);
  s1=in;
endfunction
function s0(input in);
  s0=in;
endfunction
function mux(input i0,i1,sel);
  begin
  if(sel) mux=s1(i1);
    else mux=s0(i0);
//     $display(out);
  end
endfunction

module mux_2_1();
  reg i0,i1,sel,out;
  initial begin
    i0=0;i1=1;sel=1;
  out = mux(i0,i1,sel);
    $display(out);
  end
  
endmodule
