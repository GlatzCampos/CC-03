/*
    Gabriel Glatz Campos
    811445
*/

module Guia_0701 ();

    reg a, b, select;
    wire out_and, out2_nand, selected_output;

    assign out_and = a & b;
    assign out2_nand = ~(a & b);
    assign selected_output = select ? out2_nand : out_and;

    initial begin
        $display("Guia_0701 - Gabriel Glatz Campos - 811445");
        $display("a    b    s    out");
        $monitor("%b    %b    %b    %b", a, b, select, selected_output);

        a = 0; b = 0; select = 0; // ---> 0 (AND)
        #1 a = 0; b = 0; select = 1; // ---> 1 (NAND)
        #1 a = 0; b = 1; select = 0; // ---> 0 (AND)
        #1 a = 0; b = 1; select = 1; // ---> 1 (NAND)
        #1 a = 1; b = 0; select = 0; // ---> 0 (AND)
        #1 a = 1; b = 0; select = 1; // ---> 1 (NAND)
        #1 a = 1; b = 1; select = 0; // ---> 1 (AND)
        #1 a = 1; b = 1; select = 1; // ---> 0 (NAND)
    end

endmodule

/*
Saida esperada:
Guia_0701 - Gabriel Glatz Campos - 811445

a   b   s  out
0   0   0   0
0   0   1   1
0   1   0   0
0   1   1   1
1   0   0   0
1   0   1   1
1   1   0   1
1   1   1   0
*/