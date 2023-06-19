module decoder2_4test();
  reg [1:0]in ;
  reg en;
  wire [3:0]out ;
  
   decoder2_4 uut (.in(in),.en(en),.out(out));
  
  initial 
    begin
       $dumpfile("decoder2_4.vcd");
       $dumpvars(0, decoder2_4test);
      $monitor ("en= %b, in= %b, out =%b",en,in,out);
       #5 en = 1; in=  2'b00;
       #5 en = 1; in= 2'b01;
       #5 en = 1; in= 2'b10;
       #5 en = 1; in= 2'b11;
      #5 $finish;
    end
endmodule