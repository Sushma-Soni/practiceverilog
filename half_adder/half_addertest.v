
module half_addertest();
  //input declaration
  reg a;
  reg b;
  // output declaration
  wire sum;
  wire carry;
  half_adder dut (.a(a),.b(b),.sum(sum),.carry(carry));
  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_addertest);
  a ='b0 ; b ='b0 ;
  #10 a = 'b0 ; b ='b1 ;
  #10 a = 'b1 ; b ='b0 ;
  #10 a = 'b1 ; b ='b1 ;
 #30 $finish;
  end
endmodule
  
  