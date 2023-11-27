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
   