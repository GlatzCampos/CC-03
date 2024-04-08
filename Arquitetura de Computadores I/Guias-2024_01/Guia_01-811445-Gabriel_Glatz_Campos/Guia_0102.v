/*
Guia_0102.v
811445 - Gabriel Glatz Campos
*/
module Guia_0102;
// define data
  integer decimal = 0; // decimal
  reg [7:0] a = 8'b0010110; // binary (bits - little endian)
  reg [7:0] b = 8'b0011011; // binary (bits - little endian)
  reg [7:0] c = 8'b0100100; // binary (bits - little endian)
  reg [7:0] d = 8'b0101001; // binary (bits - little endian)
  reg [7:0] e = 8'b0110111; // binary (bits - little endian)
// actions
initial
begin : main
  $display ( "Guia_0102 - Gabriel Glatz Campos - 811445" );

  //2b.)a)
  decimal = a;
  $display ( "a) 10110(2) = %2d(10)", decimal );
  //2b.)b)
  decimal = b;
  $display ( "b) 11011(2) = %2d(10)", decimal );
  //2b.)c)
  decimal = c;
  $display ( "c) 100100(2) = %2d(10)", decimal );
  //2b.)d)
  decimal = d;
  $display ( "d) 101001(2) = %2d(10)", decimal );
  //2b.)e)
  decimal = e;
  $display ( "e) 110111(2) = %2d(10)", decimal );
end // main
endmodule // Guia_0102
/*
Saída:
Guia_0102 - Gabriel Glatz Campos - 811445
a) 10110(2)  = 22(10)
b) 11011(2) = 27(10)
c) 100100(2) = 36(10)
d) 101001(2) = 41(10)
e) 110111(2) = 55(10)
*/