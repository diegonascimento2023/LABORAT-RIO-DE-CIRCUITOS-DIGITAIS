`timescale 1ns / 1ns // Define a escala de tempo para a simulação

module maquina_de_vendas_tb;

    // Definições de sinais de entrada
    reg clk; // Sinal de clock
    reg reset; // Sinal de reset
    reg [1:0] moeda_in; // Sinal de entrada das moedas (AB)
    reg sensor_moedas; // Sensor de moedas inseridas
    
    // Definições de sinais de saída
    wire bitP; // Sinal para indicar se o saldo é suficiente para a compra
    wire [2:0] estado; // Saída indicando o estado atual
    
    // Instância do módulo a ser testado
    MaquinaDeVendas dut (
        .clk(clk),
        .reset(reset),
        .moeda_in(moeda_in),
        .sensor_moedas(sensor_moedas),
        .bitP(bitP),
        .estado(estado)
    );
    
    // Clock alternante
    always #5 clk = ~clk;
    
    // Teste inicial
    initial begin
        // Abre o arquivo VCD
        $dumpfile("simulacao_maquina_de_vendas.vcd");
        // Especifica as variáveis a serem registradas no VCD
        $dumpvars(0, maquina_de_vendas_tb);
        
        // Inicializações
        clk = 0;
        reset = 1;
        moeda_in = 2'b00;
        sensor_moedas = 1'b0;

        // Ativação do reset
        #20 reset = 0;

        // Simula estados da máquina
        #30 sensor_moedas = 1'b1; // Ativa sensor de moedas
        #40 moeda_in = 2'b01; #1; // Adiciona moeda de 25 centavos (Estado E1)
        #50 moeda_in = 2'b10; #1; // Adiciona moeda de 50 centavos (Estado E2)
        #60 moeda_in = 2'b11; #1; // Adiciona moeda de R$1,00 (Estado E3)
        #70 moeda_in = 2'b00; #1; // Nenhuma moeda inserida (Estado E4)
        #80 sensor_moedas = 1'b0; #1; // Desativa sensor de moedas

         // destivação do reset
        #20 reset = 1;

        // Finaliza o teste
        #90 $finish;
    end
endmodule
