`timescale 1ns/1ns

module sistema_tb;

    // Definições dos sinais de entrada
    reg [3:0] B, C;
    
    // Definições dos sinais de saída
    wire [7:0] S; 
    wire Cout; 


    // Instanciação do módulo sistema 
    sistema dut (
        .b(B),
        .c(C),
        .s(S),
        .cout(Cout)
    );

    // Ativação dos sinais de entrada
    initial begin
        // Abre o arquivo VCD
        $dumpfile("simulacao_sistema.vcd");
        // Especifica as variáveis a serem registradas no VCD
        $dumpvars(0, sistema_tb);

        // Testes
        // Teste 1: B = 5, C = 6 
        B = 4'b0101;     // 5 em decimal
        C = 4'b0110;     // 6 em decimal
        #10 

        // Teste 2: B = 1, C = 1
        B = 4'b0001;     // 1 em decimal
        C = 4'b0001;     // 1 em decimal
        #10 

        // Teste 3: B = 2, C = 1
        B = 4'b0010;     // 2 em decimal
        C = 4'b0001;     // 1 em decimal
        #10 

        
        // Finaliza a simulação
        $finish;
    end

endmodule
