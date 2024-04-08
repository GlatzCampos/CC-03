/*
Guia_0103.v
811445 - Gabriel Glatz Campos
*/
module Guia_0103;
// define data
  integer a = 61; // decimal
  integer b = 54; // decimal
  integer c = 77; // decimal
  integer d = 151; // decimal
  integer e = 738; // decimal
  reg [7:0] aux = 0; // aux
// actions
initial
begin : main
  $display ( "Guia_0103 - Gabriel Glatz Campos - 811445" );
  //3b.)a)
  aux = a;
  $display ( "a) 61(10) = %8b(2) = %o%o%o%o(8)",aux , aux[7:6], aux[5:4], aux[3:2], aux[1:0]);
  //3b.)b)
  aux = b;
  $display ( "b) 54(10) = %o(8)", aux );
  //3b.)c)
  aux = c;
  $display ( "c) 77(10) = %x(16)", aux );
  //3b.)d)
  aux = d;
  $display ( "d) 151(10) = %x(16)", aux );
  //3b.)e)
  aux = e;
  $display ( "e) 738(10) = %3x(16)", aux );

end // main
endmodule // Guia_0103
/*
Saídas:
Guia_0103 - Gabriel Glatz Campos - 811445
a) 61(10) = 00111101(2) = 0331(8)
b) 54(10) = 066(8)
c) 77(10) = 4d(16)
d) 151(10) = 97(16)
e) 738(10) = 2e2(16)
*/