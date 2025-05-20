// Code your testbench here
// or browse Examples
module t_full_adder();
  reg t_a,t_b,t_cin;
  wire t_s,t_cout;
  
  full_adder dut(.a(t_a),.b(t_b),.cin(t_cin),.s(t_s),.c(t_cout));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    //0
    t_a = 0;
    t_b = 0;
    t_cin = 0;
    #5
    //1
    t_a = 0;
    t_b = 0;
    t_cin = 1;
    #5//2
    t_a = 0;
    t_b = 1;
    t_cin = 0;
    #5//3
    t_a = 0;
    t_b = 1;
    t_cin = 1;
    #5//4
    t_a = 1;
    t_b = 0;
    t_cin = 0;
    #5//5
    t_a = 1;
    t_b = 0;
    t_cin = 1;
    #5//6
    t_a = 1;
    t_b = 1;
    t_cin = 0;
    #5//7
    t_a = 1;
    t_b = 1;
    t_cin = 1;
  end
endmodule
