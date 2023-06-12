module B_Gtest();
  reg [2:0]B;
  wire [2:0]G ;
   B_G uut (.B(B),.G(G)) ;
  
  initial
    begin
      $display("Binary to Gray conversion is B =%b, G=%b",B,G);
      $dumpvars(0,B_Gtest);
      $dumpfile("B_G.vcd");
     #5 B= 3'b000 ;
      #5 B= 3'b001 ;
       #5 B= 3'b010 ;
       #5 B= 3'b011 ;
       #5 B= 3'b100 ;
       #5 B= 3'b101 ;
       #5 B= 3'b110 ;
       #5 B= 3'b111 ;
       #5 $finish ;
    end
endmodule