/* 
Guia_0203.v 
811445 - Gabriel Glatz Campos
*/ 
module Guia_0203; 
// define data 
real      x = 0.625;         // decimal 
reg [5:0] a = 8'b011010  ; // binary 
reg [5:0] b = 8'b101101  ; // binary 
reg [7:0] c = 8'b10011100 ; // binary 
reg [5:0] d = 8'b111001  ; // binary 
reg [7:0] e = 8'b11011101  ; // binary 
// actions 
initial 
begin : main 
$display ( "Guia_0203 - 811445 - Gabriel Glatz Campos\n" );
$display ( "a = 0.%6b", a ); 
$display ( "a) = 0.%o%o%o (4)\n", a[5:4],a[3:2],a[1:0] ); 
$display ( "b = 0.%6b", b ); 
$display ( "b) = 0.%o%o (8)\n", b[5:3],b[2:0] ); 
$display ( "c = 0.%8b", c ); 
$display ( "c) = 0.%x%x (4)\n", c[7:4],c[3:0] ); 
$display ( "d = 0.%6b", d ); 
$display ( "d) = 0.%o%o (4)\n", d[5:3],d[2:0] );
$display ( "e = 0.%8b", e ); 
$display ( "e) = %x.%x (4)\n", e[7:4],e[3:0] );
end // main 
endmodule // Guia_0203