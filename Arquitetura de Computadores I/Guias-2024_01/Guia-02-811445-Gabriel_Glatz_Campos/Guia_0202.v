/* 
Guia_0202.v 
811445 - Gabriel Glatz Campos 
*/ 
module Guia_0202; 
// define data 
real      a = 0.125;        // decimal 
real      b = 0.625;       // decimal 
real      c = 0.75;       // decimal 
real      d = 0.03125;   // decimal 
real      e = 0.875;    // decimal 

integer   i = 7  ;    // counter 
reg [7:0] x = 0  ;   // binary (Big Endian)
// actions 
    initial begin : main 
        $display ( "Guia_0202 - 811445 - Gabriel Glatz Campos " ); 
        $display ( "a(10) = %f" , a ); 
        while ( a > 0 && i >= 0 ) begin
            if( a*2 >= 1 ) begin 
                x[i] = 1; 
                a = a*2.0 - 1.0; 
            end 
            else begin
                x[i] = 0; 
                a = a*2.0; 
            end // end if 
            i=i-1; 
        end// end while 
        $display ( "a) x(2) = 0.%8b \n", x ); 

        i = 7;
        x = 0;

        $display ( "b(10) = %f" , b );
        while ( b > 0 && i >= 0 ) begin
            if( b*2 >= 1 ) begin 
                x[i] = 1; 
                b = b*2.0 - 1.0; 
            end 
            else begin
                x[i] = 0; 
                b = b*2.0; 
            end // end if 
            i=i-1; 
        end// end while 
        $display ( "b) x(2) = 10.%8b \n", x ); 

        i = 7;
        x = 0;

        i = 7;
        x = 0;

        $display ( "c(10) = %f" , c );
        while ( c > 0 && i >= 0 ) begin
            if( c*2 >= 1 ) begin 
                x[i] = 1; 
                c = c*2.0 - 1.0; 
            end 
            else begin
                x[i] = 0; 
                c = c*2.0; 
            end // end if 
            i=i-1; 
        end// end while 
        $display ( "c) x(2) = 11.%8b \n", x );

        i = 7;
        x = 0;

        $display ( "d(10) = %f" , d );
        while ( d > 0 && i >= 0 ) begin
            if( d*2 >= 1 ) begin 
                x[i] = 1; 
                d = d*2.0 - 1.0; 
            end 
            else begin
                x[i] = 0; 
                d = d*2.0; 
            end // end if 
            i=i-1; 
        end// end while 
        $display ( "d) x(2) = 110.%8b \n", x );

        i = 7;
        x = 0;

        $display ( "e(10) = %f" , e );
        while ( e > 0 && i >= 0 ) begin
            if( e*2 >= 1 ) begin 
                x[i] = 1; 
                e = e*2.0 - 1.0; 
            end 
            else begin
                x[i] = 0; 
                e = e*2.0; 
            end // end if 
            i=i-1; 
        end// end while 
        $display ( "e) x(2) = 1001.%8b \n", x );
    end// main 
endmodule// Guia_0202 
