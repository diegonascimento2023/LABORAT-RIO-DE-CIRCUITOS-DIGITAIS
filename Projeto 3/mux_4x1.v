// mux_4x1.v
// Multiplexador 4x1 de 1 bit em Verilog

module mux_4x1 (a0, a1, a2, a3, S1, S0, D);
    // Declaração das entradas e saída
    input a0, a1, a2, a3;   // Entradas de dados de 1 bit
    input S1, S0;           // Entradas de seleção 
    output D;               // Saída 

    // Implementação do multiplexador 4x1 de 1 bit
    assign D = a0 & ~S1 & ~S0 | 
               a1 & ~S1 & S0  | 
               a2 & S1 & ~S0  | 
               a3 & S1 & S0;
endmodule

