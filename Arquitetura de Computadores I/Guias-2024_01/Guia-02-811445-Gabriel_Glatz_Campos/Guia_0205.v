/* 
Guia_0205.v 
811445 - Gabriel Glatz Campos
*/ 
module Guia_0205; 
// define data 
reg [7:0] a = 8'b000_1010 ; // binary 
reg [7:0] b = 8'b000_1100 ; // binary 
reg [16:0] c; 
// actions 
initial 
begin : main 
$display ( "Guia_0205 - 811445 - Gabriel Glatz Campos" ); 

a = 8'b101010;
b = 8'b011011;
c = a+b; 
$display ( "c = a+b = %4b,%3b", c[6:3], c[2:0] ); 

a = 8'b1001101;
b = 8'b0010110;
c = a-b; 
$display ( "c = a-b = %3b,%4b", c[6:4], c[3:0] );

a = 8'b100101;
b = 8'b011101;
c = a*b; 
$display ( "c = a*b = %4b,%6b", c[10:6],c[5:0] ); 

a = 8'b1011101;
b = 8'b1001100;
c = (a / b); 
$display ( "c = b/a = %8b", c[7:0] ); 

a = 7'b1101011;
b = 4'b1011;
c = b%a; 
$display ( "c = b%%a = %b", c[3:0] ); 
end // main
endmodule // Guia_0205