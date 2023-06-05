
module halfsub(input a,
               input b,
               output diff,
               output  borrow);

//structural modelling
  xor (diff,a,b);
  and (borrow,~a,b);
  
endmodule 