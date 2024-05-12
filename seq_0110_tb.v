`timescale 1ns/1ps
module seq_0110_tb;
reg i,clk;
wire out;
seq_0110 dut(i,clk,out);
initial
 clk=0; 
always
 #2 clk=~clk;
initial
begin
 #0 i=0;
 #5 i=1; #4 i=0; #4 i=1; #4 i=1;
 #4 i=0; #4 i=0; #4 i=0; #4 i=1;
 #4 i=1; #4 i=0; 
 #4 $finish;
end
endmodule
