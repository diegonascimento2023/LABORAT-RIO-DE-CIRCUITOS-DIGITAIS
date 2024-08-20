//decodificador.v

module decodificador(entrada, display);

input [2:0] entrada;
output reg [6:0] display;

always @(*)
begin
 case(entrada)
            3'b000: display = 7'b1000001;  // U
            3'b001: display = 7'b0001110;  // F
            3'b010: display = 7'b0000110;  // E
            3'b011: display = 7'b0101111;  // R
            3'b100: display = 7'b0010010;  // S
            3'b101: display = 7'b0001000;  // A
            default: display = 7'b1111111;  // Apagado
        endcase
end

endmodule


