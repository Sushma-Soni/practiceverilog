// Code your design here
module sequence_101(input in, input clk, input reset, output reg out );
 //mealy state machine
  reg [1:0]state, nextstate ;
  parameter s0= 0 ,s1=1, s2= 2 ;
  always@ (posedge clk )
    begin
    if(reset)
      begin 
        out<=0;
        state<=s0 ;end
  else begin
    state<=nextstate ; end
    end
  always @ (state or in) begin
    case(state)
  s0: if(in==1) begin 
    nextstate<= s1; out <=0;
         end
      else  
         begin 
         nextstate<= s0;out<=0;
         end
       s1: if(in==1) begin 
    nextstate<= s1; out <=0;
         end
      else  
         begin 
         nextstate<= s2;out<=0;
         end
       s2: if(in==1) begin 
    nextstate<= s1; out <=1;
         end
      else  
         begin 
         nextstate<= s0;out<=0;
         end
      default: begin nextstate<= s0;out<=0; end
    endcase
  
    end
endmodule
     