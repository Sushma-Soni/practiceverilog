module muxtest2_1();
  	reg A; reg B; reg S;
  wire Y ;
  
  mux2_1 uut (.a(A),.b(B),.s(S),.y(Y));
  
  initial begin
    #5 A= 2'b00 ; B =  2'b00; S= 0;
    #5 A= 2'b10 ; B =  2'b01;S=1;
    #5 A= 2'b01 ; B =  2'b11; S= 0;
    #5 A= 2'b11 ; B =  2'b00;S=1;
    #5 $finish ;
   end
  initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars ;
  end
    endmodule