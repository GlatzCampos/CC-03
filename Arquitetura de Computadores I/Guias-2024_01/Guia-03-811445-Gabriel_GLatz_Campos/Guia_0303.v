/* 
  Guia_0303.v 
  811445 - Gabriel Glatz Campos 
*/ 
module Guia_0303; 
// define data 
   reg signed [5:0] a = 8'b111_0111; // binary
	reg signed [6:0] b = 8'b11_10001; // binary
	reg signed [6:0] c = 8'b11_00101; // binary
	reg signed [7:0] d = 8'b1_011101; // binary
	reg signed [6:0] e = 8'b1_010011; // binary

   reg signed [7:0] x = 0 ; // binary
	reg signed [6:0] y = 0 ; // binary
// actions 
   initial 
   begin : main 
      $display ( "Guia_0303 - 811445 - Gabriel Glatz Campos" ); 
      
      x = ~a+1; 
      y = ~(a-1); 
      $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, x, x, y); 

      x = ~b+1; 
      y = ~(b-1); 
      $display ( "b = %8b -> C1(b) = %8b -> C2(b) = %8b = %d = %d", b, ~b, x, x, y ); 

      x = ~c+1;
	   y = ~(c-1);
	   $display ( "c = %8b -> C1(c) = %8b -> C2(c) = %8b = %8b", c, ~c, x, y );

	   x = ~d+1;
	   y = ~(d-1);
	   $display ( "d = %8b -> C1(d) = %8b -> C2(d) = %8b = %8b", d, ~d, x, y );

	   x = ~e+1;
	   y = ~(e-1);
	   $display ( "e = %8b -> C1(e) = %8b -> C2(e) = %8b = %h = %h", e, ~e, x, x, y ); 
   end // main    end // main 
 
endmodule // Guia_0303