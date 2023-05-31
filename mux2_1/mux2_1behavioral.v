module mux2_1(input a,input b,input s,output reg y);

 //behavioral modelling
  always @(a,b)
    
      case(s)
      0: begin y= a; end
      1: begin y= b; end
      endcase

endmodule