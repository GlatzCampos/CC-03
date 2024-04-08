// Guia_0503.v
// Nome: Gabriel Glatz Campos 
// Matricula: 811445
// ------------------------- 

module fGuia_0504 ( input wire a, input wire b, output wire result );

    wire not_b;
    wire nand_result;

    // Implementação da porta NAND (NAND2)
    assign not_b = ~b;
    assign nand_result = ~(a & not_b);
    assign result = nand_result;

endmodule

module Guia_0504;

    reg a, b;
    wire result;

    // Instanciar o módulo
    fGuia_0504 uut (.a(a), .b(b), .result(result) );
    // Simular o teste
    initial begin
        // Teste 1
        $display("Guia_0504 - Gabriel Glatz Campos - 811445");
        $monitor("Resultado para a=%b, b=%b: %b", a, b, result);

        a = 1; b = 0;
        // Teste 2
        #1 a = 0;b = 1;
        
        //$display("Resultado para a=%b, b=%b: %b", a, b, result);

        // Teste 3
        #1 a = 0; b = 0;
        
        //$display("Resultado para a=%b, b=%b: %b", a, b, result);

        // Teste 4
         #1 a = 1; b = 1;
         //$display("Resultado para a=%b, b=%b: %b", a, b, result);
         #1;
        // Encerrar a simulação
        $finish;
    end

endmodule

/*
Guia_0504 - Gabriel Glatz Campos - 811445
Resultado para a=1, b=0: 0
Resultado para a=0, b=1: 1
Resultado para a=0, b=0: 1
Resultado para a=1, b=1: 1
Guia_0504.v:47: $finish called at 4 (1s)
*/