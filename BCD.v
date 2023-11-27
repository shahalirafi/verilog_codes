module BCD(A,B,Cin,Sum,Carry);
input [3:0]A,B;
input Cin;
output reg [3:0]Sum;
reg [4:0]temp;
output reg Carry;
always @(*)
begin
  temp= A+B+Cin;
   if(temp>9)
	begin
	   temp=temp+6;
		Carry=1;
		Sum=temp[3:0];
	end
   else
     begin
	   Carry=0;
		Sum=temp[3:0];
	 end
	end
endmodule

	