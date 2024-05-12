module seq_11011(i,clk,out);
input i,clk;
output reg out;
localparam S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11,S4=4'b0100;
reg [3:0]state;
always@(posedge clk)
begin 
case(state)
  S0:begin
    out<= i?0:0;
   state<=i?S1:S0;
end
 S1:begin
    out<= i?0:0;
   state<=i?S2:S0;
end
 S2:begin
    out<= i?0:0;
   state<=i?S0:S3;
end
 S3:begin
    out<= i?0:0;
   state<=i?S4:S0;
end
 S4:begin
   out<= i?1:0;
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



