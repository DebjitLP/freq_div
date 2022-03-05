`timescale 1ns / 1ps
module main(clk,A,B,Z,C2,rst);

//clock and reset
input clk;
input rst;
input C2;
input [3:0] A;
input [3:0] B;
  //outputs for bitwise XOR
output reg [3:0] Z;

always@(posedge clk)
begin
    if(C2) // used as Frequency divider
  begin
    if(rst==0)

    //if reset is 0 then only frequency divider works
    //Frequency gets 1/8 th ofits original value
    begin
        Z <= A ^ B; 
    end
    else if (rst==1)
    begin
        Z <= 0;
    end
  end
  else
  begin
      Z <= 0;
  end
end

endmodule

