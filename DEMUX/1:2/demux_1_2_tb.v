// Code your testbench here
// or browse Examples
module t_demux_1_2();
  reg t_s,t_y;
  wire t_a,t_b;
  
  demux_1_2 dut(.s(t_s),.y(t_y),.a(t_a),.b(t_b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    t_s=0;t_y=0;#5
    t_s=0;t_y=1;#5
    t_s=1;t_y=0;#5
    t_s=1;t_y=1;
    
  end
endmodule
