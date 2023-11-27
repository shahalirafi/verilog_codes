module carry_adder(A,B,Cin,S,Carry);
input[3:0]A,B;
input Cin;
output [3:0]S;
output Carry;
wire w1,w2,w3;
FA M1(A[0],B[0],Cin,S[0],w1);
FA M2(A[1],B[1],w1,S[1],w2);
FA M3(A[2],B[2],w2,S[2],w3);
FA M4(A[3],B[3],w3,S[3],Carry);
endmodule

module FA(A,B,Cin,S,Carry);
input A,B,Cin;
output S,Carry;
assign S=(A^B^Cin);
assign Carry=((A&B)|(A^B));
endmodule
