module G_B(input [2:0]G,output[2:0]B);
  //data modelling
  buf(B[2],G[2]);
  xor x1(B[1],G[2],G[1]);
  xor x2 (B[0],B[1],G[0]);
endmodule
  