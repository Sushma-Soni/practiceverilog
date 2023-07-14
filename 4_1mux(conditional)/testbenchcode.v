// Code your testbench here
// or browse Examples
module mux4_1tb();
reg s1;
reg s0;
  reg [3:0]i;
wire y;
  mux4_1 uut(.s1(s1),.s0(s0),.i(i),.y(y));

initial 
 begin

      $dumpfile("mux4_1.vcd");
      $dumpvars(0,mux4_1tb);
 end
  initial begin

  s1 =0 ;s0=0 ; i= 4'b0000;
#10  s1 =0 ;s0=0 ; i= 4'b1101;
#10  s1 =0 ;s0=1 ; 
#10  s1 =1 ;s0=0 ;
#10  s1 =1 ;s0=1 ;
#10 $finish;

  end
endmodule
  

