module task1(I0,I1,A,B,Carry,Y);
input I0,I1,A,B;
output Y,Carry;
wire w1;
HA m1(A,B,w1,Carry);
mux2x1 m2(I0,I1,w1,Y);
endmodule


module HA(A,B,Sum,Carry);
input A,B;
output Sum,Carry;
assign Sum=A^B;
assign Carry=A&B;
endmodule

module mux2x1(I0,I1,S,Y);
input I0,I1,S;
output reg Y;
//assign Y=(((~S)&I0)|(S&I1));
always @(*)
begin
  case(S)
    0: Y=I0;
    1: Y=I1;
    default:Y=0;
  endcase
end
endmodule
