module encoder4_2(input en,[3:0]in, output reg [1:0]out);

  always@(en,in) 
 case(in)
      4'b0000 : out = 2'b00;
      4'b0010 : out = 2'b01;
      4'b0100 : out = 2'b10;
      4'b1000 : out = 2'b11;
      
    endcase 
  
endmodule