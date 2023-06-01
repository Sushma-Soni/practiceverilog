// Code your testbench here
// or browse Examples
module FAtest();
  reg a;reg b; reg cin; wire sum; wire carry ;
  
  FA uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  initial begin
  
    #5 a = 2'b00 ; b = 2'b00 ; cin= 2'b00;
    #5 a = 2'b01 ; b = 2'b01 ; cin= 2'b01;
    #5 a = 2'b11 ; b = 2'b10 ; cin= 2'b10;
   #5 a = 2'b10 ; b = 2'b11 ; cin= 2'b11;
     #10 $finish;
  end
  initial begin
    $dumpfile(" FA.vcd");
    $dumpvars(0,FAtest);
    $monitor($time,"values a= %b, b= %b,cin=%b",a,b,cin);
  end
endmodule

