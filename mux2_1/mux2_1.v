module mux2_1(input a,input b,input s,output y);

//data flow
  assign y = (~s&a)|(s&b);
 
endmodule
  