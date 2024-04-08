/*
Guia_0101.v
811445 - Gabriel Glatz Campos
*/
module Guia_0101;
// define data
  integer a = 26; // decimal
  integer b = 53; // decimal
  integer c = 723; // decimal
  integer d = 312; // decimal
  integer e = 365; // decimal
  reg [9:0] bin = 0; // binary (bits)
// actions
initial
begin : main
  $display ( "Guia_0101 - Gabriel Glatz Campos - 811445" );
  //1a.)a)
  bin = a;
  $display ( "a) 26(10) = %8b(2)", bin );
  //1a.)b)
  bin = b;
  $display ( "b) 53(10) = %8b(2)", bin );
  //1a.)c)
  bin = c;
  $display ( "c) 723(10) = %8b(2)", bin );
  //1a.)d)
  bin = d;
  $display ( "d) 312(10) = %8b(2)", bin );
  //1a.)e)
  bin = e;
  $display ( "e) 365(10) = %8b(2)", bin );
end // main
endmodule // Guia_0101

/* 
Saídas:
Guia_0101 - Gabriel Glatz Campos - 811445
a) 26(10) = 00011010(2)
b) 53(10) = 00110101(2)
c) 723(10) = 1011010011(2)
d) 312(10) = 00111000(2)
e) 365(10) = 01101101(2)
*/