`timescale 1ns / 1ps
module main(clk,clockout,rst,C1);

//clock and reset
input clk;
input rst;
input C1;

//output clk
output reg clockout;
  reg [3:0]num = 4'b1111;

always@(posedge clk)
begin
  if (C1) // used as Frequency divider
  begin
    if(rst==0)

    //if reset is 0 then only frequency divider works
    //Frequency gets 1/8 th ofits original value
    begin
        clockout<=num[2];
        num <= num-1;
    end
    else if (rst==1)
    begin
        clockout<=0;
        num<=4'b1111;
    end
  end
  else
  begin
      clockout<=0;
      num<=4'b1111;
  end
end

endmodule
