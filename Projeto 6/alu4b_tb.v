// testbench

`timescale 1ns/1ns

module alu4b_tb;

    // Definições dos sinais de entrada
    reg [3:0] A, B;
    reg Clk;
    
    
    // Definições dos sinais de saída
    wire Cout_sub, Cout_som;           
    wire [6:0] seg_a_dez, seg_a_uni, seg_b_dez, seg_b_uni, seg_s_dez, seg_s_uni; // Saídas para os segmentos dos displays

    // Instanciação do módulo alu4b 
    alu4b dut (
        .a(A),
        .b(B),
        .clk(Clk),
        .cout_som(Cout_som),
        .cout_sub(Cout_sub),
        .seg_a_dez(seg_a_dez),
        .seg_a_uni(seg_a_uni),
        .seg_b_dez(seg_b_dez),
        .seg_b_uni(seg_b_uni),
        .seg_s_dez(seg_s_dez),
        .seg_s_uni(seg_s_uni)
    );

    // Ativação dos sinais de entrada
    initial begin
        // Abre o arquivo VCD
        $dumpfile("simulacao_alu4b.vcd");
        // Especifica as variáveis a serem registradas no VCD
        $dumpvars(0, alu4b_tb);

        // Teste 1: Soma (A = 9, B = 3)
        Clk = 1'b0;
        
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3

        #10;
        // Teste 2: Subtração (A = 9, B = 3)
        Clk = 1'b1;
        #1;
        Clk = 1'b0;
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3

        #10;
        // Teste 3: Deslocamento a esquerda (A = 9, B = 3)
        Clk = 1'b1;
        #1;
        Clk = 1'b0;
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3

        #10;
        // Teste 4: Deslocamento a direita (A = 9, B = 3)
        Clk = 1'b1;
        #1;
        Clk = 1'b0;
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3
        
        #10;
        // Teste 5: Porta OR (A = 9, B = 3)
        Clk = 1'b1;
        #1;
        Clk = 1'b0;
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3

        #10;
        // Teste 6: Porta AND (A = 9, B = 3)
        Clk = 1'b1;
        #1;
        Clk = 1'b0;
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3

        #10;
        // Teste 7: Porta XOR (A = 9, B = 3)
        Clk = 1'b1;
        #1;
        Clk = 1'b0;
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3

        #10;
        // Teste 8: Porta NOT (A = 9, B = 3)
        Clk = 1'b1;
        #1;
        Clk = 1'b0;
        A = 4'b1001;  // 9
        B = 4'b0011;  // 3

        #10;
        // Fim da simulação
        $finish;
    end

endmodule
