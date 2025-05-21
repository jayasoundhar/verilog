// Code your testbench here
// or browse Examples
module t_mux_1_4();
  reg t_s0,t_s1,t_y0,t_y1,t_y2,t_y3;
  wire t_x;
  
  mux_4_1 dut(.s0(t_s0),.s1(t_s1),.x(t_x),.y0(t_y0),.y1(t_y1),.y2(t_y2),.y3(t_y3));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    //$monitor("x=%b s0=%b s1=%b",t_x,t_s0,t_s1);
  end
  
  initial begin
    t_s0=0;t_s1=0;t_y0=1;t_y1=0;t_y2=0;t_y3=0;#5
    t_s0=0;t_s1=1;t_y0=0;t_y1=1;t_y2=0;t_y3=0;#5
    t_s0=1;t_s1=0;t_y0=0;t_y1=0;t_y2=1;t_y3=0;#5
    t_s0=1;t_s1=1;t_y0=0;t_y1=0;t_y2=0;t_y3=1;
    #5$finish();
     
    
  end
endmodule
