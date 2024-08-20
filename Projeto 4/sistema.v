//sistema.v

module sistema ( b, c,  cout, s);
	//Descricao das entradas e saidas
	 input [3:0] b, c;			//b e c sao entradas de 4-bits              
    output cout;				// cout é uma saida de 1-bit
	 output [7:0] s;            // s é uma saida de 8 bits
	

	//Declaracao dos fios intermediarios
	 wire [7:0] c1, c2, c4, c5;
    wire c3;
    
	//Descricao do circuito - abordagem hierarquica
    multiplicador4b multiplicador0 (.a(b), .b(b), .s(c1));
    multiplicador4b multiplicador1 (.a(c), .b(4'b0100), .s(c2));
	 comparador8b comparador2 (.a(c1), .b(c2), .s(c3));
	 multiplexador8b multiplexador3 (.a(c1), .b(c2), .p(c3), .s(c4));
    multiplexador8b multiplexador4 (.a(c2), .b(c1), .p(c3), .s(c5));
    subtrador8b subtrador5 (.a(c4), .b(c5), .cin(1'b0), .s(s), .cout(cout));

endmodule
