module decoder (input en, input  [2:0]data, output reg [7:0]out);
  
  always @(data or en)
    begin
    if (en)
      begin
        out = 8'd0 ;
    case (data)
      3'b000 : begin out[0]= 1; end 
      3'b001 : begin out[1]= 1; end
      3'b010 : begin out[2]= 1; end
      3'b011 :  begin out[3]= 1; end
      3'b100 :  begin out[4]= 1; end 
      3'b101 : begin out[6]= 1; end
      3'b110 : begin out[6]= 1; end
      3'b111 : begin out[7]= 1; end
      default : out= 8'b00000000;
    endcase
      end
      else
        out= 8'd0 ;
      end
    
endmodule