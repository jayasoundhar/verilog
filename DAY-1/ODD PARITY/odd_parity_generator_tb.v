// odd parity generator

module odd_parity_generator_tb();
  wire out;
  reg [2:0] in;
  integer i;
  reg [0:7]check = 8'b10010110;
  
  odd_parity_generator dut(.in(in),.out(out));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("in=%b => out%b",in,out);
  end
  
  initial begin
    
    for(i=0;i<8;i=i+1) begin
      in=i;#5
      if(out==check[i]) begin
        $display("pass");
      end else begin
        $display("fail");
      end
    end
    end
endmodule
