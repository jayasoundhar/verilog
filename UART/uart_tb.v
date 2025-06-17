// Code your testbench here
// or browse Examples
module uart_tb();
  reg st,clk,rst;
  reg [7:0] data;
  wire done_t,done_r,out,error;
  
  uart_transmitter dut(.st(st),.out(out),.data(data),.done_r(done_r),.clk(clk),.rst(rst),.done_t(done_t),.error(error));
  
  initial begin clk = 1;rst = 1; end
  
  always #5clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
   #5 rst = 0;st = 0;data = 8'b11011100;
    #250 $finish;
  end
endmodule
