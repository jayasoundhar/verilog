function integer non_auto();
  begin
    integer i=1;
    i = i*2;
    non_auto = i;
  end
endfunction
  
function automatic integer auto();
  begin
    integer i = 1;
    i = i*2;
    auto = i;
  end
endfunction
module function_auto();
//   integer out;
  initial begin
    $display(non_auto());
    $display(non_auto());
    $display(non_auto());
    $display(non_auto());
    $display(non_auto());
    $display("auto");
    $display(auto());
    $display(auto());
    $display(auto());
    $display(auto());
    $display(auto());
  end
endmodule



in automatic the function realocated memory when it is called 

in non automatic the function memory is not re alocated.....
