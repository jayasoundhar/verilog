module md();
  integer in,x;
  integer out=0;
  
  initial begin 
  in=3;x=2;
    multiple(in,x,out);
  $display(out);
    devide(in,x,out);
  $display(out);
    add(in,x,out);
  $display(out);
    sub(in,x,out);
  $display(out);
  end
  task multiple(input integer in,integer x,output integer out);
  begin
    out = in*x;
  end
  endtask
  task devide(input integer in,integer x,output integer out);
  begin
    out= in/x;
  end
  endtask  
  task add(input integer in,input integer x,output integer out);
  begin
    out = in+x;
  end
  endtask
  task sub(input integer in,integer x,output out);
  begin
    out = in-x;
  end
endtask
endmodule
