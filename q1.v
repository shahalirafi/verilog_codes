module q1(A,B,C,D,clk,D0,D1);
  input A,B,C,D,clk;
  output  D0,D1;
  wire w1,w2;
  d_ff sm1(D,clk,w1);
  m_3 sm2(A,B,C,w2);
  m_1 sm3(w1,w2,D0,D1);
endmodule


module d_ff(D,clk,Q);
  input D,clk;
  output reg Q;
  always @(posedge clk)
  begin
    Q<=D;
  end
endmodule 
module m_3(A,B,C,Y);
  input A,B,C;
  output Y;
  assign Y = ~((A&B)|(~C));
endmodule

module m_1(I,S,Y0,Y1);
  input I,S;
  output reg Y0,Y1;
  always @(*)
  begin
    if(S==0)
      Y0=I;
    else
      Y1=I;
 end
   
  endmodule
  
  
