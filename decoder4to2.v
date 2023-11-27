module decoder4to2(s,e,y);
input [1:0]s;
input e;
output reg[3:0]y;
integer k;
always @(s,e)
begin
for(k=0;k<=3;k=k+1)
    begin
	 if ((s==k)&&(e==1))
	 y[k]=1;
	 else
	 y[k]=0;
	 end
end
endmodule
