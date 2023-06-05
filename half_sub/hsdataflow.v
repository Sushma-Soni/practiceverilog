module halfsub(input a,
               input b,
               output reg  diff,
               output  reg borrow);
//data flow modelling
 assign diff = (a^b);
assign borrow = (~a*b); 
  
endmodule 