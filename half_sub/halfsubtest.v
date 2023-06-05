module halfsubtest();
reg a;
reg b;
wire diff;
wire borrow;

halfsub uut (.a(a), .b(b), .diff(diff) , .borrow(borrow));
  initial begin
#5 a= 1; b =0 ;
#5 a= 1; b =1 ;
#5 a= 0; b =0 ;
#5 a= 0; b =1 ;
  end
initial begin
  $dumpfile("halfsub.vcd");
  $dumpvars(0,halfsubtest);
$monitor ($time , "a=%b,b= %b,diff= %b,borrow =%b",a,b,diff,borrow);
end
    
endmodule