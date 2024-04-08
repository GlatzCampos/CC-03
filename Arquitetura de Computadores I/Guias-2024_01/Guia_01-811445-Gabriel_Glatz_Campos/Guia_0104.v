/*
Guia_0104.v
811445 - Gabriel Glatz Campos
*/
module Guia_0104;
// define data
  reg [5:0] a = 8'b0010101; // binary
  reg [5:0] b = 8'b0011010; // binary
  reg [7:0] c = 8'b0100111; // binary
  reg [7:0] d = 8'b0101001; // binary
  reg [7:0] e = 8'b0101101; // binary
// actions
initial
begin : main
  $display ( "Guia_0104 - Gabriel Glatz Campos - 811445" );
  //4b.)a)
  $display( "a) 10101(2) = [%b][%b][%b] = %x%x%x(4)", a[5:4], a[3:2], a[1:0], a[5:4], a[3:2], a[1:0]);
  //4b.)b)
  $display( "b) 11010(2) = [%b][%b] = %x%x(8)", b[5:3], b[2:0], b[5:3], b[2:0]);
  //4b.)c)
  $display( "c) 100111(2) = [%b][%b] = %x%x(16)", c[7:4], c[3:0], c[7:4], c[3:0]);
  //4b.)d)
  $display( "d) 101001(2) = [%b][%b] = %x%x(8)", d[5:3], d[2:0], d[5:3], d[2:0]);
  //4b.)e)
  $display( "a) 101101(2) = [%b][%b][%b] = %x%x%x(4)", e[5:4], e[3:2], e[1:0], e[5:4], e[3:2], e[1:0]);
end // main
endmodule // Guia_0103
/*
Saídas:
Guia_0104 - Gabriel Glatz Campos - 811445
a) 10101(2) = [01][01][01] = 111(4)
b) 11010(2) = [011][010] = 32(8)
c) 100111(2) = [0010][0111] = 27(16)
d) 101001(2) = [101][001] = 51(8)
a) 101101(2) = [10][11][01] = 231(4)
*/