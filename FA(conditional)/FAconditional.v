module FA(input a,b, input c, output sum,output carry);
  
  assign sum = a?(b?(c?1:0):(c?0:1)):(b?(c?0:1):(c?1:0));
  assign carry = a?(b?(c?1:1):(c?1:0)):(b?(c?1:0):(c?0:0));
endmodule