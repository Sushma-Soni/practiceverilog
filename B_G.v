module B_G( input [2:0]B,output [2:0]G );
 // gate level modelling
  buf (G[2],B[2]);
  xor x1(G[1],B[2],B[1]);
  xor x2 (G[0],B[1],B[0]);
endmodule