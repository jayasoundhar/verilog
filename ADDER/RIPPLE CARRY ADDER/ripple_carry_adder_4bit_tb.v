//4bit-adder....
//repple-carry-adder-test-bench......

module ripple_carry_adder_tb();
  reg [3:0] t_a,t_b;
  reg t_cin;
  wire [3:0] t_sum,t_cout;
  
  ripple_carry_adder dut(.s(t_sum),.co(t_cout),.ain(t_a),.bin(t_b),.ci(t_cin));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("a = %b b = %b cin = %b => sum = %b cout = %b",t_a,t_b,t_cin,t_sum,t_cout[3]);
  end
  
  initial begin
    t_a = 1; t_b = 3; t_cin = 0; #5
    t_a = 4'b0101; t_b = 4'b1101; t_cin = 1; #5
    t_a = 9; t_b = 12; t_cin = 0; #5
    t_a = 1'h1; t_b = 1'he; t_cin = 0; #5
    t_a = 10; t_b = 3; t_cin = 1; #5 
    $finish;
  end
endmodule
