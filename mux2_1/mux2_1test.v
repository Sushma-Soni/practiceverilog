module muxtest2_1();
  	reg A; reg B; reg S;
  wire Y ;
  
  mux2_1 uut (.a(A),.b(B),.s(S),.y(Y));
  
  initial begin
    #5 A= 1'b0 ; B =  1'b0; S= 0;
    #5 A= 1'b1; B =  1'b1;S=1;
    #5 $finish ;
   end
  initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars ;
  end
    endmodule
