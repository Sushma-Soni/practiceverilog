module full_subtest ();
  reg a;
  reg b;
  reg cin;
  wire diff;
  wire borrow;
  
  full_sub
  uut(.a(a),.b(b),.cin(cin),.diff(diff),.borrow(borrow));
  initial begin
   #5 a = 2'b00 ; b = 2'b11; cin = 2'b00 ;
   #5 a = 2'b01 ; b = 2'b10; cin = 2'b01 ;
   #5 a = 2'b10 ; b = 2'b01; cin = 2'b10 ;
   #5 a = 2'b11 ; b = 2'b00; cin = 2'b11 ;
  
  end
  initial begin
    $dumpfile("full-sub.vcd");
    $dumpvars(0,full_subtest );
  end
endmodule
  