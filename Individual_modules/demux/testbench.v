`timescale 1ns / 1ps

module testbench;
  reg clk;
  reg rst;
  reg [3:0] A;
  reg [2:0] S;
  reg C4;
  wire [3:0] Out0;
  wire [3:0] Out1;
  wire [3:0] Out2;
  wire [3:0] Out3;
  wire [3:0] Out4;
  wire [3:0] Out5;
  wire [3:0] Out6;
  wire [3:0] Out7;
  
  main testbench(.clk(clk),.A(A),.Out0(Out0),.Out1(Out1),.Out2(Out2),.Out3(Out3),.Out4(Out4),.Out5(Out5),.Out6(Out6),.Out7(Out7),.rst(rst),.C4(C4),.S(S));
  always #5 clk=~clk;
  
  initial
   begin
     $dumpfile("testbench.vcd");
     $dumpvars(0,testbench);
     clk = 0;
     rst = 0;
     S = 3'b000;
     C4=1;
     A = 4'b0110;
     #50
     rst = 1;
     #10
     rst = 0;
     #10 
     S = 3'b001;
     #10 
     S = 3'b010;
     #10 
     S = 3'b011;
     #10 
     S = 3'b100;
     #10
     S = 3'b101;
     #10 
     S = 3'b110;
     #10 
     S = 3'b111;
     
     #10
     rst = 1;
     #10 
     S = 3'b001;
     #10 
     S = 3'b010;
     #10 
     S = 3'b011;
     #10 
     S = 3'b100;
     #10
     S = 3'b101;
     #10 
     S = 3'b110;
     #10 
     S = 3'b111;
          
     #10
     rst = 0;
     #10 
     S = 3'b001;
     #10 
     S = 3'b010;
     #10 
     S = 3'b011;
     #10 
     S = 3'b100;
     #10
     S = 3'b101;
     #10 
     S = 3'b110;
     #10 
     S = 3'b111;
          
     #10
     
     C4=0;
     #10 
     S = 3'b001;
     #10 
     S = 3'b010;
     #10 
     S = 3'b011;
     #10 
     S = 3'b100;
     #10
     S = 3'b101;
     #10 
     S = 3'b110;
     #10 
     S = 3'b111;
     
         
     
     #100
     $finish;
   end
      
endmodule
