/*
    Gabriel Glatz Campos
    811445
*/

module Pos_A (output s, input x, y, z);
    assign s = (X|Y|~Z) & (~X|Y| ~Z) & (~X|~Y|Z) & (~X|~Y|~Z);
endmodule // Pos_A

module Pos_B (output s, input x, y, z);
    assign s = (X|Y|Z) & (~X|Y|Z) & (~X|Y|~Z) & (~X|~Y|~Z);
endmodule // Pos_B

module Pos_C (output s, input x, y, w, z);
    assign s = (X|Y|W|Z) & (X|Y|W|~Z) & (X|~Y|W|~Z) & (X|~Y|~W|Z) & (~X|Y|W|Z) & (~X|Y|~W|Z) & (~X|~Y|W|~Z);
endmodule // Pos_C

module PoS_D (output S, input X, Y, W. Z);
    assign S = (X|Y|W|~Z) & (X|Y|~W|~Z) & (X|~Y|W|Z) & (X|~Y|~W|Z) & (~X|Y|W|Z) & (~X|Y|W|~Z) & (~X|~Y|~W|Z);
endmodule

module PoS_E (output S, input X, Y, W, Z);
    assign S = (X|Y|W|Z) & (X|Y|W|~Z) & (X|Y|~W|Z) &(X|Y|~W|~Z) & (X|~Y|W|~Z) & (~X|Y|~W|Z) & (~X|Y|~W|~Z);
endmodule

module Guia_0404;
    reg x, y, w, z;
    wire pA, pB, pC, pD, pE;
    PoS_A POS_A (pA, x, y, z);
    PoS_B POS_B (pB, x, y, z);
    PoS_C POS_C (pC, x, y, w, z);
    PoS_D POS_D (pD, x, y, w, z);
    PoS_E POS_E (pE, x, y, w, z);

    incial begin
        $display("PoS\n");

        $display("Guia_0404 - Gabriel Glatz Campos\n");
        $display("\nA) f (x,y,z)= ∏ M ( 1, 5, 6, 7 )");
        $display("\nB) f (x,y,z)= ∏ M ( 0, 4, 5, 7, 12)");
        $display("\nC) f (x,y,w,z) = ∏ M ( 0, 1, 2, 5, 6, 8, 11, 13 )");
        $display("\nD) f (x,y,w,z) = ∏ M ( 1, 2, 4, 6, 8, 9, 14 )");
        $display("\nE) f (x,y,w,z) = ∏ M ( 0, 1, 2, 3, 5, 10, 11 )\n");

        $display(" x  y  z  w = pA pB pC pD pE");
        $monitor("%2b %2b %2b %2b = %2b %2b %2b %2b %2b", x, y, w, z, pA, pB, pC, pD, pE);

        #1 x=0; y=0; w=0; z=0;
        #1 x=0; y=0; w=0; z=1;
        #1 x=0; y=0; w=1; z=0;
        #1 x=0; y=0; w=1; z=1;
        #1 x=0; y=1; w=0; z=0;
        #1 x=0; y=1; w=0; z=1;
        #1 x=0; y=1; w=1; z=0;
        #1 x=0; y=1; w=1; z=1;
        #1 x=1; y=0; w=0; z=0;
        #1 x=1; y=0; w=0; z=1;
        #1 x=1; y=0; w=1; z=0;
        #1 x=1; y=0; w=1; z=1;
        #1 x=1; y=1; w=0; z=0;
        #1 x=1; y=1; w=0; z=1;
        #1 x=1; y=1; w=1; z=0;
        #1 x=1; y=1; w=1; z=1;
    end


