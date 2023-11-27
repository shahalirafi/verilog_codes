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
