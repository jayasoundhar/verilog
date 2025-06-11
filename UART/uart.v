// Code your design here
module uart(input start,stop,clk,rst,input [7:0]data,output done,out);
  reg [9:0]st;
  fork
  st = {stop,data,start};
  join
  always@(posedge clk) begin
    out = 1;
    if(rst) begin 
      out = 1'b0;
      st = 10'b0;
    end
    else begin
      if(!start) begin 
        out <= st[0];
        for(integer i=1;i<=8;i=i+1) out <= st[i];
        out <= st[9];
        done = 1; 
      end
    end
  end
endmodule
