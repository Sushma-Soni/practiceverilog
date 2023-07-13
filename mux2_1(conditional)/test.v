module tb();
  reg [3:0]in; reg [1:0] sel;
  wire out ;
  
  mux4_1 uut(.in(in),.sel(sel),.out(out));
  
  initial begin
    #5 sel =2'b00 ;in = 4'b1101;
     #5 sel =2'b01 ;in = 4'b1101;
     #5 sel =2'b10 ;
     #5 sel =2'b11 ;
    #5 $finish ;
   end
  initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars ;
    $monitor($time,"in=%b,sel=%b,out=%b",in,sel,out );
  end
    endmodule