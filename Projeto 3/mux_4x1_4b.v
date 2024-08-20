// mux_4x1_4b.v
// Multiplexador 4x1 de 4 bit em Verilog

module mux_4x1_4b (a0, a1, a2, a3, S1, S0, D);
    // Descricao das entradas e saidas
    input [3:0] a0, a1, a2, a3;  // a0, a1, a2 e a3 sao entradas de 4-bits
    input S1, S0;                // S1 e S0 sao de apenas um bit
    output [3:0] D;              // D e uma saida de 4-bits
    
    // Descricao do circuito - abordagem hierarquica
    mux_4x1 z0 (.a0(a0[0]), .a1(a1[0]), .a2(a2[0]), .a3(a3[0]), .S0(S0), .S1(S1), .D(D[0]));
    mux_4x1 z1 (.a0(a0[1]), .a1(a1[1]), .a2(a2[1]), .a3(a3[1]), .S0(S0), .S1(S1), .D(D[1]));
    mux_4x1 z2 (.a0(a0[2]), .a1(a1[2]), .a2(a2[2]), .a3(a3[2]), .S0(S0), .S1(S1), .D(D[2]));
    mux_4x1 z3 (.a0(a0[3]), .a1(a1[3]), .a2(a2[3]), .a3(a3[3]), .S0(S0), .S1(S1), .D(D[3]));

endmodule

