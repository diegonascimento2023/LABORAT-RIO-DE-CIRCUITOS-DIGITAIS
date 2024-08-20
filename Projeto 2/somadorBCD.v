module somadorBCD(a, b, cin, cout, hex);
    input [3:0] a, b; // Entradas BCD de 4 bits 8
    input [3:0] cin;  // Vai um de entrada (geralmente 0 para o primeiro dígito)
    output cout;      // Vai um de saída para indicar overflow
    output [6:0] hex; // Saída para o display de 7 segmentos

    wire [3:0] soma;   // Soma intermediária de 4 bits
    wire correcaoNecessaria; // Sinal para indicar se a correção é necessária
    wire [3:0] somaCorrigida; // Soma corrigida de 4 bits
    wire vaiUm1;          // Vai um intermediário

    // Primeira soma dos dígitos BCD
    somador4b primeiroSomador(.a(a), .b(b), .cin(cin[0]), .s(soma), .cout(vaiUm1));

    // Verificação da necessidade de correção
    CLCcorrecao verificacaoCorrecao(.z3(soma[3]), .z2(soma[2]), .z1(soma[1]), .c4(vaiUm1), .cout(correcaoNecessaria));

    // Lógica para adicionar 6 se a correção for necessária
    wire [3:0] seis = 4'b0110; // Representação BCD de 6
    wire vaiUm2; // Vai um intermediário para a correção

    // Somador BCD com ou sem correção
    somador4b somadorCorrecao(.a(soma), .b(correcaoNecessaria ? seis : 4'b0000), .cin(1'b0), .s(somaCorrigida), .cout(vaiUm2));

    // Definindo as saídas
    assign cout = vaiUm1 | vaiUm2; // O vai um de saída final é o OR dos vai um intermediários

    // Instanciando o módulo seteSeg
    seteSeg display (.s(somaCorrigida), .hex(hex));
endmodule
