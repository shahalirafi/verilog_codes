module DLD(A,B,C,X);
input A,B,C;
output X;
wire w1,w2;
nor g1(w1,A,B);
nand g2(w2,C,C);
nor g3(w3,w2,B);
nand g4(X,w3,w1);
endmodule
