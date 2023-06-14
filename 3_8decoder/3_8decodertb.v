// Code your testbench here
// or browse Examples
module decodertest ();
  reg en;
  reg [2:0]data;
  wire [7:0]out ;
  decoder uut (.en(en),.data(data),.out(out)) ;
  initial begin
    $monitor ("en= %b, data= %b, out =%b",en,data,out);
    #5  en= 1; data =3'b000 ;
     #5  en= 1; data =3'b001 ;
     #5  en= 1; data =3'b010 ;
     #5  en= 1; data =3'b011 ;
  end
endmodule