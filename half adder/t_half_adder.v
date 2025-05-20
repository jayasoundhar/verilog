// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module t_half_adder();
 //input
  reg t_a;
  reg t_b;
  //output
  wire t_c;
  wire t_s;
  
  half_adder dut(.a(t_a), .b(t_b), .c(t_c), .s(t_s));
 //for generating waveform 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    //0
    t_a=0;
    t_b=0;
    #5
    //1
    t_a=0;
    t_b=1;
    #5
    //2
    t_a=1;
    t_b=0;
    #5
    //3
    t_a=1;
    t_b=1;
    #5
    $finish();
  end
endmodule


    
