`timescale 1ns/1ns

module somadorBCD_tb;

    // Definições dos sinais de entrada
    reg [3:0] A, B;
    reg [3:0] Cin;
    
    // Definições dos sinais de saída
    wire Cout;
    wire [6:0] hex; // Saída para o display de 7 segmentos

    // Instanciação do módulo somadorBCD
    somadorBCD dut (
        .a(A),
        .b(B),
        .cin(Cin),
        .cout(Cout),
        .hex(hex)
    );

    // Ativação dos sinais de entrada
    initial begin
        // Abre o arquivo VCD
        $dumpfile("simulacao.vcd");
        // Especifica as variáveis a serem registradas no VCD
        $dumpvars(0, somadorBCD_tb);

        // Teste caso (i): A = 3, B = 4
        A = 4'b0011; // 3 em BCD
        B = 4'b0100; // 4 em BCD
        Cin = 4'b0000; // Não há carry-in
        
        // Aguarda alguns ciclos
        #10;

        // Teste caso (ii): A = 6, B = 7
        A = 4'b0110; // 6 em BCD
        B = 4'b0111; // 7 em BCD
        Cin = 4'b0000; // Não há carry-in
        
        // Aguarda alguns ciclos
        #10;

        // Teste caso (iii): A = 7, B = 9
        A = 4'b0111; // 7 em BCD
        B = 4'b1001; // 9 em BCD
        Cin = 4'b0000; // Não há carry-in

        // Aguarda alguns ciclos
        #10;

        // Fim da simulação
        $finish;
    end

endmodule
