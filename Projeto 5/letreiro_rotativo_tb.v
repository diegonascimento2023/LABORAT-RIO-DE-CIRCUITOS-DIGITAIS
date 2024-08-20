`timescale 1ns / 1ps

module letreiro_rotativo_tb;

    // Declaração dos sinais
    reg clk;
    reg stop;
    reg rst;
    wire [6:0] saida0, saida1, saida2, saida3, saida4, saida5;

    // Instanciando o DUT (Dispositivo Sob Teste)
    letreiro_rotativo uut (
        .clk(clk),
        .stop(stop),
        .rst(rst),
        .saida0(saida0),
        .saida1(saida1),
        .saida2(saida2),
        .saida3(saida3),
        .saida4(saida4),
        .saida5(saida5)
    );

    // Geração do clock
    always begin
        #5 clk = ~clk;  // Inverte o clock a cada 5 unidades de tempo
    end

    initial begin
        // Inicialização
        clk = 0;  // Inicializa o clock
        stop = 1'b0;
        rst = 1'b1;
        #50;  // Espera 50 unidades de tempo para a inicialização

        // Caso de teste com stop ativo
        stop = 1'b1;
        #100;  // Espera 100 unidades de tempo
        $display("Caso de Teste com STOP: saida0 = %b, saida1 = %b, saida2 = %b, saida3 = %b, saida4 = %b, saida5 = %b", saida0, saida1, saida2, saida3, saida4, saida5);

        // Caso de teste com reset ativo
        stop = 1'b0;
        rst = 1'b0;
        #100;  // Espera 100 unidades de tempo
        $display("Caso de Teste com RESET: saida0 = %b, saida1 = %b, saida2 = %b, saida3 = %b, saida4 = %b, saida5 = %b", saida0, saida1, saida2, saida3, saida4, saida5);

        // Caso de teste sem stop e sem reset
        rst = 1'b0;
        #100;  // Espera 100 unidades de tempo
        $display("Caso de Teste sem STOP e RESET: saida0 = %b, saida1 = %b, saida2 = %b, saida3 = %b, saida4 = %b, saida5 = %b", saida0, saida1, saida2, saida3, saida4, saida5);

        // Encerra a simulação
        $finish;
    end
endmodule
