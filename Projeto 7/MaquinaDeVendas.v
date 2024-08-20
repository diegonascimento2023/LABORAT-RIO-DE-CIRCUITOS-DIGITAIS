module MaquinaDeVendas (
    input clk,
    input reset,
    input [1:0] moeda_in,
    input sensor_moedas,
    output reg bitP,
    output reg [2:0] estado
);

// Definições dos estados
parameter INIT = 3'd0;
parameter E1 = 3'd1;
parameter E2 = 3'd2;
parameter E3 = 3'd3;
parameter E4 = 3'd4;

// Declaração de variáveis
reg [2:0] estado_atual;
reg [3:0] saldo;

// Lógica de controle de estado
always @(posedge clk or posedge reset) begin
    if (reset) begin
        estado_atual <= INIT;
        saldo <= 0;
    end else begin
        case (estado_atual)
            INIT: begin
                if (sensor_moedas) begin
                    estado_atual <= E1;
                end
            end
            E1: begin
                saldo <= saldo + moeda_in;
                estado_atual <= E2;
            end
            E2: begin
                if (saldo >= 3'b110) begin // 1,50 em binário
                    estado_atual <= E4;
                end else begin
                    estado_atual <= E1;
                end
            end
            E3: begin
                // Lógica para atualizar o saldo
                estado_atual <= E4;
            end
            E4: begin
                // Lógica para atualizar o saldo
                estado_atual <= E1;
            end
        endcase
    end
end

// Lógica para determinar se o saldo é suficiente para a compra
always @* begin
    if (saldo >= 3'b110) begin // 1,50 em binário
        bitP = 1'b1;
    end else begin
        bitP = 1'b0;
    end
end

// Atribuição de saídas
always @(*) begin
    estado = estado_atual;
end


endmodule
