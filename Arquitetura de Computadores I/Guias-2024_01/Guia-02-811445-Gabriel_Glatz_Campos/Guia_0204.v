/* 
Guia_0204.v 
811445 - Gabriel Glatz Campos
*/ 

module Guia_0204; 
  
  reg [7:0]  a = 8'd213  ; // base-4
  reg [10:0] b = 16'h4a2 ; // hexadecimal 
  reg [8:0]  c = 12'o747 ; // octal 
  reg [9:0]  d = 12'd654 ; // base-4
  reg [11:0] e = 16'ha51 ; // hexadecimal 
  reg [15:0] bin = 16'b0;   

  initial begin : main 

    $display ( "Guia_0204 - 811445 - Gabriel Glatz Campos" );

    bin = a;
    $display ( "a = 0.%d (4) = 0.%o (2)" , a , a );
    bin = b;
    $display ( "b = 0.%x (16) = 0.%o (2)" , b , bin[9:0] );
    bin = c;
    $display ( "c = 0.%o (8) = 0.%b (2)" , c , bin[9:0] );
    bin = d;
    $display ( "d = 0.%d (4) = 0.%b (2) = 0.%d%d%d%d (4)" , d , bin[9:0], bin[7:6], bin[5:4], bin[3:2], bin[1:0] );
    bin = e; 
    $display ( "e = 0.%x (16) = 0.%b (2) = 0.%d%d%d%d (4)" , e , bin[9:0], bin[7:6], bin[5:4], bin[3:2], bin[1:0] );
    
  end // main 

endmodule // Guia_0204