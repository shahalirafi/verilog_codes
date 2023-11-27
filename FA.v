module FA(a,b,Cin,Sum,Carry);
input a,b,Cin;
output Sum,Carry;
wire w1,w2,w3;
HA m1(a,b,w1,w2);
HA m2(w1,Cin,Sum,w3);
assign Carry=w2|w3;
endmodule

module HA(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule
