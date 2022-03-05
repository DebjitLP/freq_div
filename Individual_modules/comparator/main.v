`timescale 1ns / 1ps
module main(clk,A,B,G,L,E,C3,rst);

//clock and reset
input clk;
input rst;
input C3;
input [3:0] A;
input [3:0] B;
  //outputs of comparator
output reg [3:0] G;
output reg [3:0] L;
output reg [3:0] E;

always@(posedge clk)
begin
    if(C3) // used as comparator
  begin
    if(rst==0)

    //if reset is 0 then only comparator works
    begin
        if(A>B)
        begin
          G <= 1;
          L <= 0;
          E <= 0;
        end       
        else if (A<B)
        begin
          G <= 0;
          L <= 1;
          E <= 0;
        end
        else
        begin
          G <= 0;
          L <= 0;
          E <= 1;
        end
    end
    else if (rst==1)
    begin
        G <= 0;
        L <= 0;
        E <= 0;
    end
  end
  else
  begin
        G <= 0;
        L <= 0;
        E <= 0;
  end
end
endmodule
