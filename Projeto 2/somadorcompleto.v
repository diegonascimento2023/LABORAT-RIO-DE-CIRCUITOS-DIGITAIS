module somadorcompleto (a, b, cin, s, cout);
	//Declaracao das portas
	input a, b, cin;
	output s, cout;
	
	//Declaracao dos fios
	wire w1, w2, w3;
	
	//Funcionamento do circuito - Abordagem Estrutural
	xor u0 (w1, a, b);
	xor u1 (s, w1, cin);
	and u2 (w2, cin, w1);
	and u3 (w3, a, b);
	or u4 (cout, w2, w3);
endmodule