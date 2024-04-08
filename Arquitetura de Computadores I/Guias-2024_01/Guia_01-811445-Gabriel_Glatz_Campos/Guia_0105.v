/*
Guia_0105.v
811445 - Gabriel Glatz Campos
*/
module Guia_0105;
// define data
	reg [0:8][7:0] a = "PUC-Minas"; // char array[9] (9x8 bits - little Endian)
	reg [0:6][7:0] b = "2023-02"; // char array[7] (7x8 bits - little Endian)
	reg [0:13][7:0] c = "Belo Horizonte";// char array[14] (14x8 bits - little Endian)
	reg [0:4][7:0] d = {8'o116, 8'o157, 8'o151, 8'o164, 8'o145};
	reg [0:4][7:0] e = 40'h4D2E20472E;
// actions
initial
begin : main
	$display ( "Guia_0105 - Gabriel Glatz Campos - 811445" );

	//5b.)a)
	$display("a) PUC-Minas = %h", a);
	//5b.)b)
	$display("b) 2023-02 = %h", b);
	//5b.)c)
	$display("c) Belo Horizonte = %b", c);
	//5b.)d)
	$display("d) 116 157 151 164 145 (8)= %s", d);
	//5b.)e)
	$display("d) 4D 2E 20 47 2E (16)= %s", e);
end // main
endmodule // Guia_0105
/*
Saídas:
Guia_0105 - Gabriel Glatz Campos - 811445
a) PUC-Minas = 5055432d4d696e6173
b) 2023-02 = 323032332d3032
c) Belo Horizonte = 010010000110111101110010011010010111101001101111011011100111010001100101
d) 116 157 151 164 145 (8)= Noite
d) 4D 2E 20 47 2E (16)= M. G.
*/