module uart_transmitter (
  input clk,rst,st,
  input [7:0] data,
  output reg out,
  output reg done_t,
  output reg done_r,
  output reg error
);
  parameter ideal = 2'b00,start = 2'b01,parity = 2'b10,stop = 2'b11;
  reg [1:0] ps,ns;

  integer count;
  reg [10:0] storage;
  reg par;
  // to display transmitted data.......
  // initial #30$display("transmitted => %b",data);
  always @(posedge clk or negedge rst ) begin
    if (rst) begin
      ps <= ideal;
      count <= 0;
      storage <= 11'd0;
      out <= 1'b1;
    end 
    else 
      ps <= ns;
  end
  always@(posedge clk) begin
    case(ps)
      ideal : begin if(!st) begin 
        ns <= start;
      end 
      else ns <= ideal;
      end
      
      start : begin 
        if(data) ns <= parity; else ns <= start;
      end
      parity : begin 
        par <= ^data;//even parity generator....
        storage <= {1'b1,par,data,st};
        ns <= stop;
      end
      stop : begin
        if(count < 11) begin
          out <= storage[0];
          storage <= storage >> 1;
          count <= count + 1;
        end
        else begin 
          done_t <= 1'b1;
          ns <= ideal;
      end
      end
      default : ns <= ideal;
    endcase
  end
      uart_reciver test(.clk(clk),.rst(rst),.data_in(out),.done_r(done_r),.error(error));

endmodule
module uart_reciver (
  input clk,rst,data_in,
  output reg done_r,output reg error
);
  
  parameter ideal = 2'b00,start = 2'b01,parity = 2'b10,stop = 2'b11;
  reg [1:0] ps,ns;

  reg [3:0]count;
  reg [10:0] storage;
  reg [7:0] data;
  reg par;

  always @(posedge clk or negedge rst ) begin
    if (rst) begin
      ps <= ideal;
      count <= 4'd11;
      storage <= 11'd0;
    end 
    else 
      ps <= ns;
  end
  always@(posedge clk) begin
    case(ps)
      ideal : begin 
        if(!data_in) begin
        storage[0] <= data_in;
        storage <= storage << 1; 
        count <= count - 1;
        ns <= start;
      end 
      else ns <= ideal;
      end
      
      start : begin 
        if(count > 0) begin	
          storage <= {data_in,storage[10:1]};
          count <= count - 1;
        end
        else begin
          data <= storage[9:1];
          ns <= parity;
      end
      end
      parity : begin 
        par <= ^data;//even parity...
        ns <= stop;
      end
      stop : begin
        if(par == 0) begin //parity checker...
          error <= 1'b0;
          done_r <= 1'b1;
          ns <= ideal;
        end
        else begin
          error <= 1'b0;
          done_r <= 1'b1;
          ns <= ideal;
        end
      end
      default : ns <= ideal;
      
    endcase
          
  end
  // to check the recived value...
  // initial #200$display("recived => %b",data);

endmodule
