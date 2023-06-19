module FAtest();
  reg a; reg b ; reg c;
  wire sum;wire carry ;
  //module instantiation
  FA uut (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  //  input vectors
  initial
    begin
      $monitor($time,"a=%b ,b=%b,c=%b,sum=%b,carry= %b",a,b,c,sum,carry);
      $dumpfile("FA.vcd");
      $dumpvars(0,FAtest);
      #5 a =1'b0 ; b=1'b0 ; c=1'b0 ;
       #5 a =1'b0 ; b=1'b0 ; c=1'b1 ;
       #5 a =1'b0 ; b=1'b1 ; c=1'b0 ;
       #5 a =1'b1 ; b=1'b1 ; c=1'b1 ;
       #5 a =1'b1 ; b=1'b1 ; c=1'b0 ;
       #5 a =1'b1 ; b=1'b0 ; c=1'b1 ;
      #5 $finish;
    end
endmodule