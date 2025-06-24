module spi_master(
  input clk,
  input rst,
  input s0,s1,s2,s3
//   output reg master_out
);
  
  reg slave_clk = 1'b1;
  
  always@(posedge clk) slave_clk <= ~slave_clk;
  
  parameter idle = 2'b00,slave_sel = 2'b01,transmit = 2'b10;
  reg ps,ns;

  reg [7:0] storage = 8'b11111111;
  reg [3:0] count;
  reg start =1'b1;

  always @(posedge slave_clk or posedge rst) begin
    if (rst) begin
      count <= 4'd9;
      ps <= idle;
      ns <= idle;
    end 
    else begin
      ps <= ns;
    end
  end
  
  reg slave_in,slave_out,selected,master_in,master_out;
  
  always@(posedge slave_clk) begin
    case(ps)
      idle : begin
        if(start)begin
          ns <= slave_sel;
          start <= 1'b0;
        end
        else ns <= idle;
      end
      
      slave_sel : begin
        if(!s0)
          spi_slave0 slave_0(.selected(s0),.clk(slave_clk),.rst(rst),.slave_out(master_in),.slave_in(master_out));
        if(!s1)  
          spi_slave1 slave_1(.selected(s1),.clk(slave_clk),.rst(rst),.slave_out(master_in),.slave_in(master_out));
        if(!s2)  
          spi_slave2 slave_2(.selected(s2),.clk(slave_clk),.rst(rst),.slave_out(master_in),.slave_in(master_out));
        if(!s3)  
          spi_slave3 slave_3(.selected(s3),.clk(slave_clk),.rst(rst),.slave_out(master_in),.slave_in(master_out));
      end
      
      transmit : begin
        
        if (count > 4'd0) begin
          master_in <= storage[count];
          storage[count] <= master_out;
          count <= count - 4'd1;
          ns <= transmit;
        end
        else ns <= idle;
      end
    endcase
  end

endmodule

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module spi_slave0(
  input clk,
  input rst,
  input slave_in,
  input selected,
  output reg slave_out
);
  
  parameter idle = 1'b0,transmit = 1'b1;
  reg ps,ns;
  
  reg [7:0] storage = 8'b00000000;
  reg count;
  
  always @(negedge clk or negedge rst) begin
            
    if(rst) begin
      slave_out <= 1'd0;
      count <= 4'd9;
      ps <= idle;
      ns <= idle;
    end 
    else begin
      ps <= ns;
    end
  end
  reg select = selected;
  always@(negedge clk) begin
    case(ps)
      idle : begin
        if(!select) begin ns <= transmit; select <= 1; end
        else ns <= idle;
      end
      
      transmit : begin
        if(count > 0) begin
          slave_out <= storage[7];
          storage <= {storage[6:0], slave_in};
        end
      end
    endcase
  end
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module spi_slave1(
  input clk,
  input rst,
  input slave_in,
  input selected,
  output reg slave_out
);
  
  parameter idle = 1'b0,transmit = 1'b1;
  reg ps,ns;
  
  reg [7:0] storage = 8'b00000000;
  reg count;
  
  always @(negedge clk or negedge rst) begin
            
    if(rst) begin
      slave_out <= 1'd0;
      count <= 4'd9;
      ps <= idle;
      ns <= idle;
    end 
    else begin
      ps <= ns;
    end
  end
  reg select = selected;
  always@(negedge clk) begin
    case(ps)
      idle : begin
        if(!select) begin ns <= transmit; select <= 1; end
        else ns <= idle;
      end
      
      transmit : begin
        if(count > 0) begin
          slave_out <= storage[7];
          storage <= {storage[6:0], slave_in};
        end
      end
    endcase
  end
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module spi_slave2(
  input clk,
  input rst,
  input slave_in,
  input selected,
  output reg slave_out
);
  
  parameter idle = 1'b0,transmit = 1'b1;
  reg ps,ns;
  
  reg [7:0] storage = 8'b00000000;
  reg count;
  
  always @(negedge clk or negedge rst) begin
            
    if(rst) begin
      slave_out <= 1'd0;
      count <= 4'd9;
      ps <= idle;
      ns <= idle;
    end 
    else begin
      ps <= ns;
    end
  end
  reg select = selected;
  always@(negedge clk) begin
    case(ps)
      idle : begin
        if(!select) begin ns <= transmit; select <= 1; end
        else ns <= idle;
      end
      
      transmit : begin
        if(count > 0) begin
          slave_out <= storage[7];
          storage <= {storage[6:0], slave_in};
        end
      end
    endcase
  end
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module spi_slave3(
  input clk,
  input rst,
  input slave_in,
  input selected,
  output reg slave_out
);
  
  parameter idle = 1'b0,transmit = 1'b1;
  reg ps,ns;
  
  reg [7:0] storage = 8'b00000000;
  reg count;
  
  always @(negedge clk or negedge rst) begin
            
    if(rst) begin
      slave_out <= 1'd0;
      count <= 4'd9;
      ps <= idle;
      ns <= idle;
    end 
    else begin
      ps <= ns;
    end
  end
  reg select = selected;
  always@(negedge clk) begin
    case(ps)
      idle : begin
        if(!select) begin ns <= transmit; select <= 1; end
        else ns <= idle;
      end
      
      transmit : begin
        if(count > 0) begin
          slave_out <= storage[7];
          storage <= {storage[6:0], slave_in};
        end
      end
    endcase
  end
endmodule
