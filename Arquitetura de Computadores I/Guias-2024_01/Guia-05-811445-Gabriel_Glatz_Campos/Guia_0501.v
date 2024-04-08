// Guia_0500.v - GATES 
// Nome: Gabriel Glatz Campos 
// Matricula: 811445
// ------------------------- 
 
// // ------------------------- 
// //  f5_gate 
// //  m  a  b  s 
// //  0  0  0  0 
// //  1  0  1  1 <- a'.b 
// //  2  1  0  0 
// //  3  1  1  0 
// // 
// // ------------------------- 
// module nor ( output s, input a, input b ); 
// // definir dado local 
//    wire not_b; 
// // descrever por portas 
//    nor norAB ( s, a, not_b ); 
//    nor norB  ( not_b, b, b ); 
// endmodule // f5a 
 

// module f5b ( output s, input a, input b ); 
// // descrever por expressao 
//    assign s = (a & ~b); 
// endmodule // f5b 
 
// module Guia_0501; 
// // ------------------------- definir dados 
//        reg  x; 
//        reg  y; 
//        wire a, b; 
 
//        f5a moduloA ( a, x, y ); 
//        f5b moduloB ( b, x, y ); 
 
// // ------------------------- parte principal 
 
//    initial 
//    begin : main 
//           $display("Guia_0501 - Gabriel Glatz Campos - 811445");
//           $display("   x     y    a    b"); 
 
//        // projetar testes do modulo 
//          $monitor("%4b %4b %4b %4b", x, y, a, b); 
//             x = 1'b0;  y = 1'b0; 
//    #1       x = 1'b0;  y = 1'b1; 
//    #1       x = 1'b1;  y = 1'b0; 
//    #1       x = 1'b1;  y = 1'b1; 
 
//    end 
 
// endmodule // Guia_0501


module fGuia_0501 ( input wire a, input wire b, output wire result );

    wire not_b;
    wire and_result;

    // Implementação da porta NOR (NOR2)
    assign not_b = ~b;
    assign and_result = ~(a | not_b);
    assign result = and_result;

endmodule

module Guia_0501_tb;

    reg a, b;
    wire result;

    // Instanciar o módulo
    fGuia_0501 uut (.a(a), .b(b), .result(result) );

    // Simular o teste
    initial begin
        // Teste 1
        $display("Guia_0502 - Gabriel Glatz Campos - 811445");
        $monitor("Resultado para a=%b, b=%b: %b", a, b, result);
            a = 1; b = 0;
        // Teste 2
         #1  a = 0; b = 1;
        

        // Teste 3
         #1  a = 0; b = 0;
        

        // Teste 4
         #1  a = 1; b = 1;
         
         #1
        // Encerrar a simulação
        $finish;
    end

endmodule

/*
Guia_0501 - Gabriel Glatz Campos - 811445
Resultado para a=1, b=0: 0
Resultado para a=0, b=1: 1
Resultado para a=0, b=0: 0
Resultado para a=1, b=1: 0
Guia_0501.v:104: $finish called at 40 (1s)
*/