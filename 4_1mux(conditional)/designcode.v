module mux4_1(input s1,s0, input[3:0]i,output y);
  assign y= s1?(s0?(i[3]):(i[2])):(s0?(i[1]):(i[0]));
endmodule