module add(output reg sum,input a,b);
  task adder(input a,b,output sum);begin
    sum = a+b;
    end
endtask
  always@(*) begin
    adder(a,b,sum);
  end
endmodule
