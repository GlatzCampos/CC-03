/*
    Gabriel Glatz Campos
    811445
*/

module test_Guia_0705;

	reg a, b;
	reg [2:0] select;
	output wire result;

	wire not_b, selected_gate;

	assign not_b = ~b;

	assign selected_gate = 
		(select == 3'b000) ?  (~a) :
	    (select == 3'b001) ?  (a & not_b) :
	    (select == 3'b010) ? ~(a & not_b) :
		(select == 3'b011) ?  (a | not_b) :
	 	(select == 3'b100) ? ~(a | not_b) :
	 	(select == 3'b101) ?  (a ^ not_b) :
		(select == 3'b110) ? ~(a ^ not_b) : 1'b0;

	assign result = selected_gate;
	
	initial begin
		$display("Guia_0705 - Ricardo Soares Cerqueira - 803833\n");
		$display("a   b   b' select  out");
		$monitor("%b   %b   %b    %3b    %b", a,b,not_b,select,result);
		
			 a = 0; b = 0; select = 3'b000; // ---> (NOT)
		#1 a = 0; b = 0; select = 3'b001; // ---> (AND)
		#1 a = 0; b = 0; select = 3'b010; // ---> (NAND)
		#1 a = 0; b = 0; select = 3'b011; // ---> (OR)
		#1 a = 0; b = 0; select = 3'b100; // ---> (NOR)
		#1 a = 0; b = 0; select = 3'b101; // ---> (XOR)
		#1 a = 0; b = 0; select = 3'b110; // ---> (XNOR)
		/*---------------------------------------------*/
		#1 a = 0; b = 1; select = 3'b000; // ---> (NOT)
		#1 a = 0; b = 1; select = 3'b001; // ---> (AND)
		#1 a = 0; b = 1; select = 3'b010; // ---> (NAND)
		#1 a = 0; b = 1; select = 3'b011; // ---> (OR)
		#1 a = 0; b = 1; select = 3'b100; // ---> (NOR)
		#1 a = 0; b = 1; select = 3'b101; // ---> (XOR)
		#1 a = 0; b = 1; select = 3'b110; // ---> (XNOR)
		/*----------------------------------------------*/
		#1 a = 1; b = 0; select = 3'b000; // ---> (NOT)
		#1 a = 1; b = 0; select = 3'b001; // ---> (AND)
		#1 a = 1; b = 0; select = 3'b010; // ---> (NAND)
		#1 a = 1; b = 0; select = 3'b011; // ---> (OR)
		#1 a = 1; b = 0; select = 3'b100; // ---> (NOR)
		#1 a = 1; b = 0; select = 3'b101; // ---> (XOR)
		#1 a = 1; b = 0; select = 3'b110; // ---> (XNOR)
		/*----------------------------------------------*/
		#1 a = 1; b = 1; select = 3'b000; // ---> (NOT)
		#1 a = 1; b = 1; select = 3'b001; // ---> (AND)
		#1 a = 1; b = 1; select = 3'b010; // ---> (NAND)
		#1 a = 1; b = 1; select = 3'b011; // ---> (OR)
		#1 a = 1; b = 1; select = 3'b100; // ---> (NOR)
		#1 a = 1; b = 1; select = 3'b101; // ---> (XOR)
		#1 a = 1; b = 1; select = 3'b110; // ---> (XNOR)
	end

endmodule