// odd parity checker.......

module odd_parity_generator_tb();
  wire out;
  reg [3:0] in;
  integer i;
  reg [0:15]check = 16'h9669;
  
  odd_parity_generator dut(.in(in),.out(out));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("in=%b => out%b",in,out);
  end
  
  initial begin
    
    for(i=0;i<16;i=i+1) begin
      in=i;#5
      if(out==check[i]) begin
        $write("pass");
      end else begin
        $write("fail");
      end
    end
    end
endmodule
