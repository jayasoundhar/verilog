module uart_tb();
  reg start,stop,clk,rst;
  reg [7:0] data;
  wire done,out;
  
  uart dut(.start(start),.stop(stop),.out(out),.data(data),.done(done),.clk(clk),.rst(rst));
  
  initial begin clk = 1;rst = 1; end
  
  always #5clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk =%b  rst =%b  start =%b  stop =%b  data =%b  out =%b  done =%b",clk,rst,start,stop,data,out,done);
  end
  
  initial begin
    #100rst =0;
    start =0;data =8'b01011101;stop =1;
    #10rst=1;
  end
endmodule
