// multiplicador4b.v


module multiplicador4b (a, b, s);
    // Descrição das entradas e saídas
    input [3:0] a, b;   // a e b são entradas de 4-bits
    output [7:0] s;     // s é uma saída de 8-bits

    // Implementação do multiplicador
    assign s = a * b;
endmodule
