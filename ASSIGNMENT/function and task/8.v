module task_auto();
  integer out;
  task non_auto(output integer out);
    integer i = 1;
    i = i*2;
    out = i;
  endtask
  
  task automatic auto(output integer out);
    integer i = 1;
    i = i*2;
    out = i;
  endtask
  initial begin
    non_auto(out);
    $display(out);
    non_auto(out);
    $display(out);
    non_auto(out);
    $display(out);
    non_auto(out);
    $display(out);
    auto(out);
    $display(out);
    auto(out);
    $display(out);
    auto(out);
    $display(out);
    auto(out);
    $display(out);
  end
endmodule
