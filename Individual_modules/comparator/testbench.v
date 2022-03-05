`timescale 1ns / 1ps

module testbench;
  reg clk;
  reg rst;
  reg [3:0] A;
  reg [3:0] B;
  reg C3;
  wire [3:0] G;
  wire [3:0] L;
  wire [3:0] E;
  main testbench(.clk(clk),.A(A),.B(B),.G(G),.L(L),.E(E),.rst(rst),.C3(C3));
  always #5 clk=~clk;
  
  initial
   begin
     $dumpfile("testbench.vcd");
     $dumpvars(0,testbench);
     clk = 0;
     rst = 0;
     C3=1;
     A = 4'b0000;
     B = 4'b0000;
     #50
     rst = 1;
     #10
     rst = 0;
     #10 
     A = 4'b0000;
     B = 4'b0001;
     #10 
     A = 4'b0000;
     B = 4'b0000;
     #10 
     A = 4'b0000;
     B = 4'b0110;
     #10 rst = 1;
     A = 4'b0000;
     B = 4'b0110;
     #10 
     A = 4'b1000;
     B = 4'b0110;
     #10 
     A = 4'b0100;
     B = 4'b0110;
     #10 
     A = 4'b0000;
     B = 4'b1110;
     #10 rst = 0;
     A = 4'b0000;
     B = 4'b0110;
     #10 
     A = 4'b1000;
     B = 4'b0110;
     #10 
     A = 4'b0100;
     B = 4'b0110;
     #10 
     A = 4'b0000;
     B = 4'b1110;
     #10 C3=0;
     
     A = 4'b0000;
     B = 4'b0110;
     #10 
     A = 4'b1000;
     B = 4'b0110;
     #10 
     A = 4'b0100;
     B = 4'b0110;
     #10 
     A = 4'b0000;
     B = 4'b1110;
     #100
     $finish;
   end
      
endmodule
