module test ;
  reg en;
  reg [3:0]in;
  wire [1:0]out;
  encoder4_2 uut (en,in,out);
  
  initial begin
   
    en =0 ; in= 4'b0000;
    #5en =1 ; in= 4'b0010;
    #5 en =1 ; in= 4'b1000;
    #5 en =1 ; in= 4'b0100;
    
  end
  initial begin
    $dumpfile("encoder4_2.vcd");
    $dumpvars(0,test);
    $monitor($time,"in=%b out= %b",in,out);
  end
endmodule