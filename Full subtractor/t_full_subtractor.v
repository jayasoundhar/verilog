// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module t_full_subtractor();
  reg t_a,t_b,t_b_in;
  wire t_d,t_b_out;
  
  full_subtractor dut(.a(t_a),.b(t_b),.b_in(t_b_in),.d(t_d),.b_out(t_b_out));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    //0
    t_a = 0;
    t_b = 0;
    t_b_in = 0;
    #5
    //1
    t_a = 0;
    t_b = 0;
    t_b_in = 1;
    #5//2
    t_a = 0;
    t_b = 1;
    t_b_in = 0;
    #5//3
    t_a = 0;
    t_b = 1;
    t_b_in = 1;
    #5//4
    t_a = 1;
    t_b = 0;
    t_b_in = 0;
    #5//5
    t_a = 1;
    t_b = 0;
    t_b_in = 1;
    #5//6
    t_a = 1;
    t_b = 1;
    t_b_in = 0;
    #5//7
    t_a = 1;
    t_b = 1;
    t_b_in = 1;
  end
endmodule
