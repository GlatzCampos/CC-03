/* 
Guia_0201.v 
811445 - Gabriel Glatz Campos 
*/ 
module Guia_0201;

    real      x    = 0.0;// decimal
    real      pow2 = 1.0; //potencia de 2
    integer   i    = 7;// contador
    reg [7:0] a    = 8'b00101000; //binario(parte fracionaria, Big Endian)
    reg [7:0] b    = 8'b01011000; //binario(parte fracionaria, Big Endian)
    reg [7:0] c    = 8'b10001000; //binario(parte fracionaria, Big Endian)
    reg [7:0] d    = 8'b11011000; //binario(parte fracionaria, Big Endian)
    reg [7:0] e    = 8'b10011000; //binario(parte fracionaria, Big Endian)

    initial 
    begin
        $display("Guia_0201 - Gabriel Glatz Campos - 811445");

        $display("a = 0.%8b", a);
        //$display("b = 0.%8b", b);
        //$display("c = 0.%8b", c);
        //$display("d = 0.%8b", d);
        //$display("e = 0.%8b", e);

        while(i >= 0)begin
            pow2 = pow2 / 2.0; 
            if(a[i] == 1)begin
                x = x + pow2;
            end
            
            i = i - 1;
        end
        $display("a) x(10) = %f", x);

        x = 0.0;
        pow2 = 1.0;
        i = 7;

        $display("b = 0.%8b", b);
        while(i >= 0)begin
            pow2 = pow2 / 2.0; 
            if(b[i] == 1)begin
                x = x + pow2;
            end
            i = i - 1;
        end
        $display("b) x(10) = %f", x);

        x = 0.0;
        pow2 = 1.0;
        i = 7;

        $display("c = 0.%8b", c);
        while(i >= 0)begin
            pow2 = pow2 / 2.0; 
            if(c[i] == 1)begin
                x = x + pow2;
            end
            i = i - 1;
        end
        $display("c) x(10) = %f", x);

        x = 0.0;
        pow2 = 1.0;
        i = 7;

        $display("d = 1.%8b", d);
        while(i >= 0)begin
            pow2 = pow2 / 2.0; 
            if(d[i] == 1)begin
                x = x + pow2;
            end
            i = i - 1;
        end
        $display("d) x(10) = %f", 1 + x);

        x = 0.0;
        pow2 = 1.0;
        i = 7;

        $display("e = 11.%8b", e);
        while(i >= 0)begin
            pow2 = pow2 / 2.0; 
            if(e[i] == 1)begin
                x = x + pow2;
            end
            i = i - 1;
        end
        $display("e) x(10) = %f", 3 + x);
        
    end
endmodule



