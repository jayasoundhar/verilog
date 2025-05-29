// PIPO.....
module pipo_tb();
  reg clk,rst;
  reg [3:0]pin;
  wire [3:0]pout;
  initial clk=1;
  
  pipo dut(.pin(pin),.clk(clk),.rst(rst),.pout(pout));
  initial begin
    repeat(15) begin
      #5clk = ~clk;
  end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rst=%b clk=%b pin=%b => pout=%b",rst,clk,pin,pout);
  end
  
  initial begin
    rst=0;pin=4'b1111;#5
    rst=1;pin=4'b0011;#5
    rst=1;pin=4'b0011;#5
    $finish;
  end
endmodule
    
    
