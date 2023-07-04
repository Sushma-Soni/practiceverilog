// Code your testbench here
// or browse Examples
module test();
  reg in; 
  reg clk;
  reg reset ;
  wire out ;
  
  sequence_101 uut (.in(in),.clk(clk),.reset(reset) ,.out(out)) ;
 
  initial begin
     in= 0 ; 
    clk= 1; 
    reset = 1 ;//initialise the input 
    #10 reset =0;
     
  end
   
  initial begin
      $dumpfile("sequence_101.vcd");
    $dumpvars (0,test) ;
    
    $monitor
    ($time,"in=%b ,out= %d, nextstate= %d",in,out,uut.nextstate); //uut.state is dot operator
  end
  initial begin // giving the input to test
     #10 in = 1 ;
     #10 in = 0;
     #10 in = 1;
     #10 in = 0;
     #10 in = 1;
    #10 in = 1;
   #10 $finish;
  end
  initial forever
     begin
       #5 clk=~clk ; 
     end
endmodule
    
    
    