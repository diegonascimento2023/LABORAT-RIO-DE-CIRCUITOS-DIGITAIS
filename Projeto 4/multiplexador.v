// multiplexador.v
module multiplexador (a, b, p, s);
    // Descrição das entradas e saídas
    input  a, b;   // a e b são entradas de 8-bits
    input  p;            // p é entrada de 1-bit
    output  s;     // s é uma saída de 8-bits

    // Implementação do multiplexador
    assign s = a&(~p) | b&(p);
endmodule