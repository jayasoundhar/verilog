// Code your testbench here
// or browse Examples
module t_mux_2_1();
  reg t_s,t_a,t_b;
  wire t_y;
  
  mux_2_1 dut(.a(t_a),.b(t_b),.s(t_s),.y(t_y));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    t_a = 0;
    t_b = 0;
    t_s = 0;
    #5
    
    t_a = 0;
    t_b = 0;
    t_s = 1;
    #5
    
    t_a = 1;
    t_b = 0;
    t_s = 0;
    #5
    
    t_a = 0;
    t_b = 0;
    t_s = 1;
    #5
    
    t_a = 0;
    t_b = 1;
    t_s = 0;
    #5
    
    t_a = 0;
    t_b = 1;
    t_s = 1;
    #5
    
    t_a = 1;
    t_b = 1;
    t_s = 1;
    #5
    
    t_a = 1;
    t_b = 1;
    t_s = 0;
    #5
    $finish();
  end
endmodule
