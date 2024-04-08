/* 
  Guia_0305.v 
  811445 - Gabriel Glatz Campos 
*/ 
module Guia_0305; 
// define data 
   reg signed [5:0] a1 = 6'b110011; // binary 
   reg signed [5:0] a2 = 6'b001101; // binary 

   reg signed [7:0] b1 = 8'b0101_1101; // binary 
   reg signed [7:0] b2 = 8'b0011_1100; // binary 

   reg signed [5:0] c1 = 6'b101101; // 231 base 4 
   reg signed [5:0] c2 = 6'hE; // hexadecimal

    reg signed [8:0] d1 = 9'hD4; // hexadecimal
    reg signed [7:0] d2 = 8'b1011101; // binario

    reg signed [11:0] e1 = 12'h67; // hexadecimal 
    reg signed [11:0] e2 = 12'h3B; // hexadecimal 

   reg signed [4:0] rA = 0 ;  
   reg signed [4:0] x = 0 ;  

   reg signed [7:0] rB = 0 ; 
   reg signed [7:0] y = 0 ;  

   reg signed [5:0] rC = 0 ;  
   reg signed [5:0] z = 0 ;  

    reg signed [8:0] rD = 0 ;  
    reg signed [8:0] w = 0 ;  

    reg signed [11:0] rE = 0 ;  
    reg signed [11:0] q = 0 ; 

// actions 
   initial 
    begin : main 
    $display ( "Guia_0305 - 811445 - Gabriel Glatz Campos" ); 

        x = (~a2) + 1; //complemento de 2
        rA = a1 + x;
        $display ( "a) %5b - %5b => %5b + %5b = 1%5b", a1, a2, a1, x, a1+x);

        rB = b1 - b2;
        $display ( "b) %8b - %8b => %8b + %8b = %8b", b1, b2, b1, y, rB);

        rC = c1 - c2;
        $display ("c) %o%o%o(4) - %h(16) = %8b", c1[5:4] , c1[3:2], c1[1:0], c2, rC);

        rD = d1 - d2;
        $display ("d) %2h(16) - %8b(2) = %8b", d1, d2, rD); 
        
        rE = e1 - e2;
        $display ("d) %h(16) - %h(16) = %8b", e1, e2, rE); 
    end // main 
 
endmodule // Guia_0305

/*
Guia_0305 - 811445 - Gabriel Glatz Campos
a) 110011 - 001101 => 110011 + 10011 = 1100110
b) 01011101 - 00111100 => 01011101 + 00000000 = 00100001
c) 231(4) - 0e(16) =   011111
d) 0d4(16) - 01011101(2) = 001110111
d) 067(16) - 03b(16) = 000000101100
*/
