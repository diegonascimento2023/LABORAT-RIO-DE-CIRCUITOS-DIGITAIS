// and4b.v
// AND bit-wise de 4-bits em Verilog

module and4b (a, b, s);
    // Descrição das entradas e saídas
    input [3:0] a, b;   // a e b são entradas de 4-bits
    output [3:0] s;     // s é uma saída de 4-bits

    // Implementação do AND bit-wise
    assign s = a & b;
endmodule
