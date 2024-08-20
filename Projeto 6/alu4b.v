module alu4b (a, b, clk, cout_som, cout_sub, seg_a_dez, seg_a_uni, seg_b_dez, seg_b_uni, seg_s_dez, seg_s_uni);
    //Descricao das entradas e saidas
    input [3:0] a, b;			//a e b sao entradas de 4-bits
    input clk;					//entrada opcode de apenas um bit
    output cout_som, cout_sub;            //cout_som e cout_sub são saídas de um bit referente ao somador e subtrador respectivamente
    output [6:0] seg_a_dez, seg_a_uni, seg_b_dez, seg_b_uni, seg_s_dez, seg_s_uni; // Saídas para os segmentos dos displays

    //Declaracao dos fios intermediarios
    wire [3:0] w0, w1, w2, w3, w4, w5, w6, w7;
	wire [3:0] s;
    wire [2:0] q;
    
    //Descricao do circuito - abordagem hierarquica
    somador4b operacao_soma (.a(a), .b(b), .cin(1'b0), .cout_som(cout_som), .s(w0));
    subtrador4b operacao_subtracao (.a(a), .b(b), .cin(1'b0), .cout_sub(cout_sub), .s(w1));
    barrel_esquerda operacao_de (.a(a), .s(w2));
    barrel_direita operacao_dd (.a(a), .s(w3));
    or4b operacao_or  (.a(a), .b(b), .s(w4));
    and4b operacao_and (.a(a), .b(b), .s(w5));
    xor4b operacao_xor (.a(a), .b(b), .s(w6));
    not4b operacao_not (.a(a), .s(w7));

    contador3b contador(.clk(clk), .q(q));

    // Seleciona o resultado com base no opcode
    mux_8x1 mux8b (.i0(w0), .i1(w1), .i2(w2), .i3(w3), .i4(w4), .i5(w5), .i6(w6), .i7(w7), .sel(q), .s(s));

    // Instanciação dos módulos display_7seg
    display_7seg disp_a_dez (.num(a / 4'b1010), .seg(seg_a_dez));
    display_7seg disp_a_uni (.num(a % 4'b1010), .seg(seg_a_uni));
    display_7seg disp_b_dez (.num(b / 4'b1010), .seg(seg_b_dez));
    display_7seg disp_b_uni (.num(b % 4'b1010), .seg(seg_b_uni));
    display_7seg disp_s_dez (.num(s / 4'b1010), .seg(seg_s_dez));
    display_7seg disp_s_uni (.num(s % 4'b1010), .seg(seg_s_uni));
	
endmodule
