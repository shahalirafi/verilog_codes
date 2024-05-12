module seq_0110(i,clk,out);
input i,clk;
output reg out;
localparam S0=2'b00, S1=2'b01, S2=2'b10,S3=2'b11;
reg [1:0]state;
always@ (posedge clk)
begin
case (state)
S0: begin
out<=i?0:0;
 state<=i?S0:S1;
 end 
S1: begin 
out<=i?0:0;
 state<=i?S2:S1;
 end 
S2: begin 
out<=i?0:0;
 state<=i?S3:S1;
 end 
 S3:begin
   out<=i?0:1;
   state<=i?S0:S0;
 end
 default: 
 begin 
 out<=0;
 state<=S0; 
 end 
endcase
end
endmodule

