module decoder2_4(input [1:0]in,input en,output reg[3:0]out);
  
  always@(in ,en)
    begin
      if (en==0) 
        begin
        out= 4'b0000;
        end
    else
      out = 4'b0000;
      case(in)
        2'b00:begin out = 4'b0001;end
          2'b01: begin out = 4'b0010;end
          2'b10:begin out = 4'b0100;end
          2'b11:begin out = 4'b1000;end
      default:  out = 4'b0000; 
        endcase
    end
endmodule