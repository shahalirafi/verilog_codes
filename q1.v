module q1(A,L,M,Sum,Carry);
input [3:0]A;
reg V;
output Sum,Carry,L,M;
wire w1;
wire [1:0]w2;
pe m1(A,w1,w2);
HA m2(V,w1,L,Carry);
HA m3(w2[0],w2[1],Sum,M);
endmodule

module pe(D,Y,V);
input [3:0]D;
output reg[1:0]Y;
output reg V;
always @(*)
begin
casex(D)
 4'b0001:
  begin 
   Y=2'b00;
	V=1;
  end 
  4'b001x:
  begin 
   Y=2'b01;
	V=1;
  end
 4'b01xx:
  begin 
   Y=2'b10;
	V=1;
  end  
  4'b1xxx:
  begin 
   Y=2'b11;
	V=1;
  end 
  default :
   begin 
	Y=2'bx;
	V=0;
	end
endcase
	
end
endmodule

module HA(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule 
   