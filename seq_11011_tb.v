`timescale 1ns/1ps
module seq_11011_tb;
reg i,clk;
wire out;

seq_11011 dut(i,clk,out);
initial
 clk=0; 
always
 #2 clk=~clk;
initial
begin
  #2 i=0;#4 i=1;#4 i=1;#4 i=0;#4 i=1;#4 i=1;#4 i=1;#4 i=1;#4 i=1;#4 i=0;#4 i=1;#4 i=1;
  #4 $finish;
end
endmodule


