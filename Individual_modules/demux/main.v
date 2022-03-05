`timescale 1ns / 1ps
module main(clk,A,S,C4,rst,Out0,Out1,Out2,Out3,Out4,Out5,Out6,Out7);

//clock and reset
input clk;
input rst;
input C4;
input [2:0] S;
input [3:0] A;
  //outputs of DEMUX
output reg [3:0] Out0;
output reg [3:0] Out1;
output reg [3:0] Out2;
output reg [3:0] Out3;
output reg [3:0] Out4;
output reg [3:0] Out5;
output reg [3:0] Out6;
output reg [3:0] Out7;

always@(posedge clk)
begin
    if(C4) // used as DEMUX
  begin
    if(rst==0)

    //if reset is 0 then only DEMUX works
    begin
        if(S==3'b000)
        begin
          Out0 <= A; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= 0;          
        end       
        else if (S==3'b001)
        begin
          Out0 <= 0; Out1 <= A; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= 0; 
        end       
        else if (S==3'b010)
        begin
          Out0 <= 0; Out1 <= 0; Out2 <= A; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= 0; 
        end       
        else if (S==3'b011)
        begin
          Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= A; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= 0; 
        end       
        else if (S==3'b100)
        begin
          Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= A; Out5 <= 0; Out6 <= 0; Out7 <= 0; 
        end       
        else if (S==3'b101)
        begin
          Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= A; Out6 <= 0; Out7 <= 0; 
        end       
        else if (S==3'b110)
        begin
          Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= A; Out7 <= 0; 
        end       
        else if (S==3'b111)
        begin
          Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= A; 
        end       
        else
        begin
          Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= 0;
        end
    end
    else if (rst==1)
    begin
      Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= 0;
    end
  end
  else
  begin
    Out0 <= 0; Out1 <= 0; Out2 <= 0; Out3 <= 0; Out4 <= 0; Out5 <= 0; Out6 <= 0; Out7 <= 0;
  end
end
endmodule
