/*
    Gabriel Glatz Campos
    811445
*/

module Guia_0703;
    reg a, b, select, select1;
	wire result;
	wire out_or, out_nor, out_and,  out_nand;
	
	assign out_and = a & b;
	assign out_nand = ~(a & b);
	assign out_or = a | b;
	assign out_nor = ~(a | b);

	assign result = select ? (select1 ? out_nor : out_nand) : (select1 ? out_or : out_and);

    initial begin
        $display("Guia_0701 - Gabriel Glatz Campos - 811445");
        $display("a   b   s1  s2   out");
        $monitor("%b   %b     %b     %b     %b", a, b, select,select1,result);

           a = 0; b = 0; select = 0; select1 = 0; // 0 0 (AND)
		#1 a = 0; b = 0; select = 0; select1 = 1; // 0 1 (OR)
		#1 a = 0; b = 0; select = 1; select1 = 0; // 1 0 (NAND)
		#1 a = 0; b = 0; select = 1; select1 = 1; // 1 1 (NOR) 
		#1 a = 0; b = 1; select = 0; select1 = 0; // 0 0 (AND)
		#1 a = 0; b = 1; select = 0; select1 = 1; // 0 1 (OR)
		#1 a = 0; b = 1; select = 1; select1 = 0; // 1 0 (NAND)
		#1 a = 0; b = 1; select = 1; select1 = 1; // 1 1 (NOR) 
		#1 a = 1; b = 0; select = 0; select1 = 0; // 0 0 (AND)
		#1 a = 1; b = 0; select = 0; select1 = 1; // 0 1 (OR)
		#1 a = 1; b = 0; select = 1; select1 = 0; // 1 0 (NAND)
		#1 a = 1; b = 0; select = 1; select1 = 1; // 1 1 (NOR) 
		#1 a = 1; b = 1; select = 0; select1 = 0; // 0 0 (AND)
		#1 a = 1; b = 1; select = 0; select1 = 1; // 0 1 (OR)
		#1 a = 1; b = 1; select = 1; select1 = 0; // 1 0 (NAND)
		#1 a = 1; b = 1; select = 1; select1 = 1; // 1 1 (NOR)
    end

endmodule

/*
Guia_0701 - Gabriel Glatz Campos - 811445
a   b   s1  s2   out
0   0     0     0     0
0   0     0     1     0
0   0     1     0     1
0   0     1     1     1
0   1     0     0     0
0   1     0     1     1
0   1     1     0     1
0   1     1     1     0
1   0     0     0     0
1   0     0     1     1
1   0     1     0     1
1   0     1     1     0
1   1     0     0     1
1   1     0     1     1
1   1     1     0     0
1   1     1     1     0
*/