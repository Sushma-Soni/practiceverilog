module mux2_1(input a,input b,input s,output y);

  wire m ;
  wire n;

  //structural modelling
  and a1(m,a,~s);
  and a2(n,b,s);
  or (y,m,n);

endmodule