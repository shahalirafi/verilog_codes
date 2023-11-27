module mux_4x1(I0,I1,I2,I3,S0,S1,Y);
input I0,I1,I2,I3,S0,S1;
output Y;
wire w1,w2;
mux_2x1 m1(I0,I1,S1,w1);
mux_2x1 m2(I2,I3,S1,w2);
mux_2x1 m3(w1,w2,S0,Y);
endmodule
module mux_2x1(I0,I1,S0,Y);
input I0,I1,S0;
output reg Y;
always @(*)
begin
case(S0)
0:Y=I0;
1:Y=I1;
endcase
end
endmodule
