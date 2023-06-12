
module FAStest();
  reg a;
  reg en ;
  reg b;
  reg cin;
  wire diff;
  wire borrow;
wire sum;
wire carry ;
  
 FAS uut(.a(a),
         .b(b),
         .cin(cin),
         .en(en),
         .diff(diff),
         .borrow(borrow),
         .sum(sum),
         .carry(carry));
  initial begin
                                                                                    
   #5 a = 1'b0 ; b = 1'b0; cin = 1'b0 ;en=1;
   #5 a = 1'b0 ; b = 1'b0; cin = 1'b1 ;en=1;
  #5 a = 1'b0 ; b = 1'b1; cin = 1'b0 ;en=1;
   #5 a = 1'b0 ; b = 1'b1; cin = 1'b1 ;en=1;

   #5 a = 1'b1 ; b = 1'b0; cin = 1'b0 ;en=0;
   #5 a = 1'b1 ; b = 1'b0; cin = 1'b1 ;en=0;
   #5 a = 1'b1 ; b = 1'b1; cin = 1'b0 ;en=0;
  #5 a = 1'b1 ; b = 1'b1; cin = 1'b1 ;en=0;
  end
  initial begin
    $dumpfile(" FAS.vcd");
    $dumpvars(0, FAStest );
  end
endmodule
  