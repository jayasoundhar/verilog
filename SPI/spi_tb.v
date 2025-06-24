module tb;

  reg clk, rst;
  reg s0, s1, s2, s3;

  spi_master uut (
    .clk(clk),
    .rst(rst),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .s3(s3)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock period
  end

  initial begin
    $dumpfile("spi.vcd");
    $dumpvars(0, tb);

    // Initial values
    rst = 1;
    s0 = 1;
    s1 = 1;
    s2 = 1;
    s3 = 1;

    #12 rst = 0;

    // Select slave 2
    #10 s2 = 0;

    // Wait for transfer
    #150;

    // Done
    $finish;
  end

endmodule
