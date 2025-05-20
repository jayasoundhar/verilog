// Code your testbench here
// or browse Examples
module t_demux_1_4();
  reg t_s0,t_s1,t_x;
  wire t_y0,t_y1,t_y2,t_y3;
  
  demux_1_4 dut(.s0(t_s0),.s1(t_s1),.x(t_x),.y0(t_y0),.y1(t_y1),.y2(t_y2),.y3(t_y3));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("
  end
  
  initial begin
    t_x=0;t_s0=0;t_s1=0;#5
    t_x=0;t_s0=0;t_s1=1;#5
    t_x=0;t_s0=1;t_s1=0;#5
    t_x=0;t_s0=1;t_s1=1;#5
    t_x=1;t_s0=0;t_s1=0;#5
    t_x=1;t_s0=0;t_s1=1;#5
    t_x=1;t_s0=1;t_s1=0;#5
    t_x=1;t_s0=1;t_s1=1;
    
  end
endmodule
