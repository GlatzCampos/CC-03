/*
    Gabriel Glatz Campos
    811445
*/

module fxyz_A (output s, input x, y, z);
    assign s =  x & ~( y|~z) ;
endmodule // fxyz
module fxyz_B (output s, input x, y, z);
    assign s =   ~( x | ~y ) & z ;
endmodule // fxyz
module fxyz_C (output s, input x, y, z);
    assign s =  ~( ~x & y ) & ~z ;
endmodule // fxyz
module fxyz_D (output s, input x, y, z);
    assign s =  ~(~x & ~y) & z ;
endmodule // fxyz
module fxyz_E (output s, input x, y, z);
    assign s =  (x | y) & ~(~y | z);
endmodule // fxyz

module Guia_0401;
    reg x, y, z;
    wire sA, sB, sC, sD, sE;
    // instancias
    fxyz_A fXYZ_A (sA, x, y, z);
    fxyz_B fXYZ_B (sB, x, y, z);
    fxyz_C fXYZ_C (sC, x, y, z);
    fxyz_D fXYZ_D (sD, x, y, z);
    fxyz_E fXYZ_E (sE, x, y, z);

    // valores iniciais
    initial begin: start
        x=1'bx; y=1'bx; z=1'bx;// indefinidos
    end

    // parte principal
    initial begin: main

    $display("Guia_0401 - Gabriel Glatz Campos\n");	
    $display("\nA) x . ( y+z')' ");
    $display("\nB) ( x +y' )' . z ");
    $display("\nC) ( x' . y )' . z' ");
    $display("\nD) ( x' . y' )' . z ");
    $display("\nE)  ( x + y ) . ( y' + z)' \n");

    // monitoramento
    $display(" x  y  z = sA sB sC sD sE");
    $monitor("%2b %2b %2b = %2b %2b %2b %2b %2b", x, y, z, sA, sB, sC, sD, sE);

    // sinalizacao
    #1 x=0; y=0; z=0;
    #1 x=0; y=0; z=1;
    #1 x=0; y=1; z=0;
    #1 x=0; y=1; z=1;
    #1 x=1; y=0; z=0;
    #1 x=1; y=0; z=1;
    #1 x=1; y=1; z=0;
    #1 x=1; y=1; z=1;
    end