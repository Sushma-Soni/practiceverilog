// Code your design here
module halfsub(input a,
               input b,
               output reg  diff,
               output  reg borrow);
  //behavioural mpodelling
  always@ (a or b)
    
    case ({a,b})
     2'b00 : begin 
       diff = 1'b0 ;
       borrow =1'b0; 
     end
      2'b01 : begin 
        diff= 1'b1 ;
        borrow =1'b1 ; 
      end 
      2'b10 : begin 
        diff= 1'b1 ;
        borrow =1'b0 ;
      end 
      2'b11 : begin  
        diff= 1'b0 ;
        borrow =1'b0 ;
      end  
     endcase      
endmodule 