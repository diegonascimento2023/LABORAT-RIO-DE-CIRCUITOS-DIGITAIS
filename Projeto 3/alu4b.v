//alu4b.v
// unidade lógica aritmética (ALU) de 4 bit


module alu4b (a, b, s1, s0, cout_som, cout_sub, seg_out);
	//Descricao das entradas e saidas
	input [3:0] a, b;			//a e b sao entradas de 4-bits
	input s1, s0;					//entradas opcode de apenas um bit
	output cout_som, cout_sub;            //cout_som e cout_sub são saídas de um bit referente ao somador e subtrador respectivamente
	
	 // Saída para o display de 7 segmentos
    output [6:0] seg_out; 


	//Declaracao dos fios intermediarios
	wire [3:0] c1, c2, c3, c4;
	wire [3:0] r;
    
	//Descricao do circuito - abordagem hierarquica
	somador4b operacao_soma (.a(a), .b(b), .cin(1'b0), .cout_som(cout_som), .s(c1));
	subtrador4b operacao_subtracao (.a(a), .b(b), .cin(1'b0), .cout_sub(cout_sub), .s(c2));
	and4b operacao_and (.a(a), .b(b), .s(c3));
	or4b operacao_or  (.a(a), .b(b), .s(c4));
	
	// Seleciona o resultado com base no opcode
    mux_4x1_4b mux (.a0(c1), .a1(c2), .a2(c3), .a3(c4), .S0(s0), .S1(s1), .D(r));
	
	// Conecta o decodificador de 7 segmentos
    decodificador disp_dec (.d3(r[3]), .d2(r[2]), .d1(r[1]), .d0(r[0]), .a(seg_out[6]), .b(seg_out[5]), .c(seg_out[4]), .d(seg_out[3]), .e(seg_out[2]), .f(seg_out[1]), .g(seg_out[0]));

endmodule
