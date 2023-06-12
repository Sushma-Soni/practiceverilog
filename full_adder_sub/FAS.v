module FAS (input a, input b, input cin, output sum, output carry,output diff, output borrow) ;

//en= 1 addition , en =0 subtraction

wire l;
assign l = (a^b);
assign sum = en?(a^b^cin):1'bx ;
assign carry =  en?((a*b)|l*cin):1'bx ;
  assign diff = en ? 1'bx: (a^b^cin) ;
  assign borrow = en?1'bx:((~a*b)|(~l&cin ) );
 
endmodule