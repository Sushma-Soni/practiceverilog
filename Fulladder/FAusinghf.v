module FA(input a, input b, input cin, output sum , output carry);
  wire s,c,cout ;
 
  // structural using 2 HF
  HF a1(s,c,a,b);
  HF a2(sum,cout,s,cin); // <-- Missing semicolon
  or(carry,cout,cin);
  endmodule

module HF(input a, input b , output sum, output carry);
  assign s = (a^b);
  assign c = (a*b);
endmodule








