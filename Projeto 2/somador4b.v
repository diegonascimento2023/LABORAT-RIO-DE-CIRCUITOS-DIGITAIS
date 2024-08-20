//somador4b.v
//Somador de 4-bits em Verilog

module somador4b (a, b, cin, s, cout);
	//Descricao das entradas e saidas
	input [3:0] a, b;			//a e b sao entradas de 4-bits
	input cin;					//cin e de apenas um bit
	output [3:0] s;			//s e uma saida de 4-bits
	output cout;				//cout e uma saida de um bit
	
	//Declarar os fios intermediarios
	wire c1, c2, c3;
	
	//Descricao do circuito - abordagem hierarquica
	somadorcompleto z0 (.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1));
	somadorcompleto z1 (.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
	somadorcompleto z2 (.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
	somadorcompleto z3 (.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout));
endmodule
