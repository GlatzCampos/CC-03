/*
    Gabriel Glatz Campos
    811445
*/
module Guia_0704;
	reg a, b;
	reg [1:0] select;
	output wire result;

	wire out_or, out2_nor, out_xor,  out2_xnor;
	
	assign out_or = a | b;
	assign out2_nor = ~(a | b);
	assign out_xor = a ^ b;
	assign out2_xnor = ~(a ^ b);

	assign result = select[1] ? (select[0] ? out2_xnor : out_xor) : (select[0] ? out2_nor : out_or);

	initial begin
		$display("Gabriel Glatz Campos - 811445\n");
		$display("a    b    slt    out");
		$monitor("%b    %b    %b    %b", a, b, select, result);

		   a = 0; b = 0; select = 2'b00; // --> 0 0 (OR)
		#1 a = 0; b = 0; select = 2'b01; // --> 0 1 (NOR)
		#1 a = 0; b = 0; select = 2'b10; // --> 1 0 (XOR)
		#1 a = 0; b = 0; select = 2'b11; // --> 1 1 (XNOR) 
		#1 a = 0; b = 1; select = 2'b00; // --> 0 0 (OR)
		#1 a = 0; b = 1; select = 2'b01; // --> 0 1 (NOR)
		#1 a = 0; b = 1; select = 2'b10; // --> 1 0 (XOR)
		#1 a = 0; b = 1; select = 2'b11; // --> 1 1 (XNOR) 
		#1 a = 1; b = 0; select = 2'b00; // --> 0 0 (OR)
		#1 a = 1; b = 0; select = 2'b01; // --> 0 1 (NOR)
		#1 a = 1; b = 0; select = 2'b10; // --> 1 0 (XOR)
		#1 a = 1; b = 0; select = 2'b11; // --> 1 1 (XNOR) 
		#1 a = 1; b = 1; select = 2'b00; // --> 0 0 (OR)
		#1 a = 1; b = 1; select = 2'b01; // --> 0 1 (NOR)
		#1 a = 1; b = 1; select = 2'b10; // --> 1 0 (XOR)
		#1 a = 1; b = 1; select = 2'b11; // --> 1 1 (XNOR)
	end
endmodule

/*
Saida esperada:
Gabriel Glatz Campos - 811445

a   b   sel1  sel2   out
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