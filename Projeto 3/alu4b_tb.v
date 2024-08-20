`timescale 1ns/1ns

module alu4b_tb;

    // Definições dos sinais de entrada
    reg [3:0] A, B;
    reg S0, S1;
    
    // Definições dos sinais de saída
    wire Cout_som, Cout_sub; 
    wire [6:0] D; 

    // Instanciação do módulo alu4b 
    alu4b dut (
        .a(A),
        .b(B),
        .s0(S0),
        .s1(S1),
        .cout_som(Cout_som),
        .cout_sub(Cout_sub),
        .seg_out(D)
    );

    // Ativação dos sinais de entrada
    initial begin
        // Abre o arquivo VCD
        $dumpfile("simulacao_alu4b.vcd");
        // Especifica as variáveis a serem registradas no VCD
        $dumpvars(0, alu4b_tb);

        // Teste 1: Soma
        A = 4'b1010;  // 10
        B = 4'b0110;  // 6
        S0 = 1'b0;
        S1 = 1'b0;

        #10;

        // Teste 2: Subtração
        A = 4'b1010;  // 10
        B = 4'b0110;  // 6
        S0 = 1'b1;
        S1 = 1'b0;

        #10;

        // Teste 3: AND
        A = 4'b1010;  // 10
        B = 4'b0110;  // 6
        S0 = 1'b0;
        S1 = 1'b1;

        #10;

        // Teste 4: OR
        A = 4'b1010;  // 10
        B = 4'b0110;  // 6
        S0 = 1'b1;
        S1 = 1'b1;

        #10;

        // Fim da simulação
        $finish;
    end

endmodule
