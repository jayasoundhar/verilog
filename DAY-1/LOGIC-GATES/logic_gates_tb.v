// Code your testbench here
// or browse Examples
module logic_gates_tb();
  reg t_a,t_b;
  wire t_and,t_or,t_not,t_xor,t_xnor,t_nand,t_nor;
  
  logic_gates dut(.y_and(t_and),.y_or(t_or),.y_not(t_not),.y_xor(t_xor),.y_xnor(t_xnor),.y_nand(t_nand),.y_nor(t_nor),.a(t_a),.b(t_b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
  	t_a=0;t_b=0;#5
  	t_a=0;t_b=1;#5
  	t_a=1;t_b=0;#5
  	t_a=1;t_b=1;#5
    $final();
  end
endmodule
