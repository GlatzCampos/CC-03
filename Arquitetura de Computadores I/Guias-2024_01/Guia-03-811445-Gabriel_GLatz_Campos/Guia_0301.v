/* 
Guia_0301.v 
999999 - Xxx Yyy Zzz 
*/ 
module Guia_0301; 
    // define data 
    reg [5:0] a = 5'b1100  ;    // binary 
    reg [7:0] b = 8'b1110  ;   // binary 
    reg [5:0] c = 6'b10_0101  ;  // binary          
    reg [7:0] d = 8'b0010_0101  ; // binary
    reg [7:0] e = 8'b0011_0101  ;// binary
    reg [7:0] x = 0         ;   // binary                   
    reg [7:0] y = 0        ;   // binary                      
    reg [7:0] z = 0      ;   // binary              
    // actions 
    initial 
    begin : main 
        
        $display ( "Guia_0301 - Gabriel Glatz Campos" ); 
        $display ( "a = %4b -> C1(a) = %4b", a, ~a ); 
        $display ( "b = %8b -> C1(b) = %8b", b, ~b ); 
        x = ~c + 1; 
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %5b", c, ~c, x ); 
        y = ~d + 1;
        $display ( "d = %8b -> C1(d) = %8b -> C2(d) = %8b", d, ~d, y );
        z = ~e + 1;
        $display ( "e = %8b -> C1(e) = %8b -> C2(e) = %8b", e, ~e, z );
    end // main 
endmodule // Guia_0301 