// Guia_0503.v
// Nome: Gabriel Glatz Campos 
// Matricula: 811445
// ------------------------- 

module fGuia_0508 (input wire a,input wire b,output wire result);

    wire nand1, nand2, nand3;

    // Implementação de portas NAND (NAND2)
    assign nand1 = ~(~a & ~b);
    assign nand2 = ~(~a & nand1);
    assign nand3 = ~(~b & nand1);
    assign result = ~(nand2 & nand3);

endmodule


module Guia_0508;

    reg a, b;
    wire result;

    // Instanciar o módulo
    fGuia_0508 uut (.a(a), .b(b), .result(result) );
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
Guia_0508 - Gabriel Glatz Campos - 811445
Resultado para a=1, b=0: 1
Resultado para a=0, b=1: 1
Resultado para a=0, b=0: 0
Resultado para a=1, b=1: 0
Guia_0508.v:48: $finish called at 4 (1s)
*/