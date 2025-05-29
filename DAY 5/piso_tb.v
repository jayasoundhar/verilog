// PISO.....
module siso_tb();
  reg clk,rst,load;
  reg [3:0]pin;
  wire sout;
  initial clk=1;
  
  siso dut(.pin(pin),.clk(clk),.rst(rst),.sout(sout),.load(load));
  initial begin
    repeat(15) begin
      #5clk = ~clk;
  end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rst=%b pin=%b => sout=%b load=%b",rst,pin,sout,load);
  end
  
  initial begin
//     if(clk) begin
    load=1;rst=0;pin=4'b1010;#10
    load=0;#10
    load=0;#10
    load=0;#10
    load=0;#10
    load=0;#10
    rst=1;#10
    $finish;
//     end
  end
endmodule
    
    
