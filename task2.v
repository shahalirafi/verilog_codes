module task2(x3,x2,x1,clk,Q);
input x3,x2,x1,clk;
output reg Q;
wire w1,w2,w4;
assign w1=x3^x2^x1;
assign w2=x1&x2&x3;
 reg w3;
always @(posedge clk)
begin 
  w3<=w2;
  end
 assign w4=w3|w1;
 always @(negedge clk)
 begin 
 Q<=w4;
 end
 endmodule
 