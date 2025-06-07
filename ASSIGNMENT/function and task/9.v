function s1(input in);
  s1=in;
endfunction

module mux_2_1();
  reg i0,i1,sel,out;
  initial begin
    i0=0;i1=1;sel=1;
  mux(i0,i1,sel,out);
//     $display(out);
  end
  task mux(input i0,i1,sel,output out);
    begin
    if(sel) out=s1(i1);
    else s0(i0,out);
    $display(out);
    end
  endtask
  
  task s0(input i0,output out);
    out = i0;
  endtask
endmodule
