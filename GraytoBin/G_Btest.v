module G_Btest();
  reg[2:0] G;
  wire [2:0]B;
  
  G_B uut (.B(B),.G(G)) ;
  initial begin
    $dumpfile ("G_B.vcd");
    $dumpvars (0,G_Btest);
    $monitor ($time,"B=%b,G= %b",B,G);
     #5 G= 3'b000 ;
     #5 G= 3'b001 ;
     #5 G= 3'b011 ;
     #5 G= 3'b010 ;
     #5 G= 3'b110 ;
     #5 G= 3'b111 ;
     #5 G= 3'b101 ;
     #5 G= 3'b100;
    #5 $finish ;
  end 
endmodule