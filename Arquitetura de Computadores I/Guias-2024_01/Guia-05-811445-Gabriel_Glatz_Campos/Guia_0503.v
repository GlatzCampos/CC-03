// Guia_0503.v
// Nome: Gabriel Glatz Campos 
// Matricula: 811445
// ------------------------- 

module fGuia_0503 ( input wire a, input wire b, output wire result);

    wire not_a;
    wire nor_result;

    // Implementação da porta NOR (NOR2)
    assign not_a = ~a;
    assign nor_result = ~(not_a & ~b);
    assign result = nor_result;

endmodule

module Guia_0503;

    reg a, b;
    wire result;

    // Instanciar o módulo
    fGuia_0503 uut (.a(a), .b(b), .result(result) );
    // Simular o teste
    initial begin
        // Teste 1
        $display("Guia_0503 - Gabriel Glatz Campos - 811445");
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
Guia_0503 - Gabriel Glatz Campos - 811445
Resultado para a=1, b=0: 1
Resultado para a=0, b=1: 1
Resultado para a=0, b=0: 0
Resultado para a=1, b=1: 1
Guia_0503.v:51: $finish called at 4 (1s)
*/