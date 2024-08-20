// not4b.v
// not bit-wise de 4-bits em Verilog

module not4b (a, s);
    // Descrição das entradas e saídas
    input [3:0] a;   // a é uma entrada de 4-bits
    output [3:0] s;     // s é uma saída de 4-bits

    // Implementação do not bit-wise
    assign s = ~a;
endmodule
