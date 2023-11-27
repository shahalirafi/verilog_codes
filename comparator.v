module comparator(A,B,y);
input [3:0]A,B;
output [2:0]y;
assign y[0]=(A>B);
assign y[1]=(A==B);
assign y[2]=(A<B);
endmodule 