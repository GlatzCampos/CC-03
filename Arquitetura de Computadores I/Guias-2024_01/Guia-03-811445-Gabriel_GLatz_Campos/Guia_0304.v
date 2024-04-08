/* 
  Guia_0304.v 
  811445 - Gabriel Glatz Campos 
*/ 
module Guia_0304; 
// define data 
   reg signed [4:0] a1 = 5'b11101; // binary 
   reg signed [4:0] a2 = 5'b01011; // binary 

   reg signed [7:0] b1 = 8'b1010101; // binary 
   reg signed [7:0] b2 = 8'b0101100; // binary 

   reg signed [5:0] c1 = 8'b111001; // 321 base 4 
   reg signed [5:0] c2 = 8'b100111; // 213 base 4

   reg signed [8:0] d1 = 9'o461; // octal 
   reg signed [8:0] d2 = 9'o247; // octal 

   reg signed [11:0] e1 = 12'h7c4; // hexadecimal 
   reg signed [11:0] e2 = 12'hb1d; // hexadecimal 

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
        $display ( "Guia_0304 - 811445 - Gabriel Glatz Campos" ); 

        x = (~a2) + 1; //complemento de 2
        rA = a1 + x;
        $display ( "a) %5b - %5b => %5b + %5b = %5b", a1, a2, a1, x, rA);

        y = (~b2) + 1; //complemento de 2
        rB = b1 + y;
        $display ( "b) %8b - %8b => %8b + %8b = %8b", b1, b2, b1, y, rB);

        z = (~c2) + 1; //complemento de 2
        rC = c1 + z;
        $display ("c) %o%o%o(4) - %o%o%o(4) => %8b(4) + %8b = %8b = %o%o%o", c1[5:4] , c1[3:2], c1[1:0], c2[5:4], c2[3:2], c2[1:0], c1, z, rC, rC[5:4],rC[3:2],rC[1:0]);

        w = (~d2) + 1; //complemento de 2
        rD = d1 + w;
        $display ("d) %o(8) - %o(8) => %9b(8) + %9b = %9b = %o", d1, d2, d1, w, rD, rD);

        q = (~e2) + 1; //complemento de 2
        rE = e1 + q;
        $display ("e) %h(16) - %h(16) => %12b(16) + %12b = %12b = %h", e1, e2, e1, q, rE, rE);
     
    end // main 
 
endmodule // Guia_0304

/*
Guia_0304 - 811445 - Gabriel Glatz Campos
a) 11101 - 01011 => 11101 + 10101 = 10010
b) 01010101 - 00101100 => 01010101 + 11010100 = 00101001
c) 321(4) - 213(4) =>   111001(4) +   011001 =   010010 = 102
d) 461(8) - 247(8) => 100110001(8) + 101011001 = 010001010 = 212
e) 7c4(16) - b1d(16) => 011111000100(16) + 010011100011 = 110010100111 = ca7
*/