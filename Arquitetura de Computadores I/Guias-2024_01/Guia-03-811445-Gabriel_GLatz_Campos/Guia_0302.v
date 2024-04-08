/* 
  Guia_0302.v 
  811445 - Gabriel Glatz Campos 
 
*/ 
module Guia_0302; 
// define data 
   reg [5:0] a = 8'b011110; // base 4
   reg [7:0] b = 8'h4B  ; // hexadecimal
   reg [5:0] c = 8'b100111; // base 4
   reg [5:0] d = 8'o154 ; // octal 
   reg [7:0] e = 8'hB8 ; // hexadecimal 

   reg [7:0] x = 0      ; // binary 
   reg [6:0] y = 0      ; // binary 
   reg [5:0] z  = 0     ; // binary 
// actions 
   initial 
   begin : main 
      $display ( "Guia_0302 - 811445 - Gabriel Glatz Campos" ); 
      $display ( "a = %o%o%o(4) -> C1,6(%6b) = %6b", a[5:4], a[3:2], a[1:0], a , ~a ); 
      $display ( "b = %h(16) -> C1,7(%7b) = 1%7b", b, b, ~b ); 
      x = ~c+1; 
      $display ( "c = %o%o%o(4) -> C2,6 = %6b -> C2,6 = %6b", c[5:4], c[3:2], c[1:0], ~c, x ); 
      y = ~d+1;
      $display ( "d = %o(8) -> C2,10 = %10b -> C2,10 = %10b", d, ~d, y );
      z = ~e+1;
      $display ( "e = %h(16) -> C2,8 = %8b -> C2,8 = %8b", e, ~e, z );
   end // main 
 
endmodule // Guia_0302

// Guia_0302 - 811445 - Gabriel Glatz Campos
// a = 132(4) -> C1,6(011110) = 100001
// b = 4b(16) -> C1,7(01001011) = 110110100
// c = 213(4) -> C2,6 = 011000 -> C2,6 = 11011001
// d = 54(8) -> C2,10 =     010011 -> C2,10 =    1010100
// e = b8(16) -> C2,8 = 01000111 -> C2,8 =   001000
