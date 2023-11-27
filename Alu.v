module Alu(A,B,F,opcode);
input [2:0]A,B;
input [1:0]opcode;
output reg [3:0]F;
always @(*)
begin 
case(opcode)
2'b00:F=A+B;
2'b01:F=B+1;
2'b10:F=-A;
2'b11:F=A^B;
default:F=0;
endcase
end
endmodule

