module FA(input a, input b, input cin, output sum , output carry);
  wire s,c,cout ;
  // data flow 
   assign sum = (a^b^cin);
  assign carry = ((a*b) |(a^b)*cin ); 
  
endmodule








