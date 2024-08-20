//mux2x1_3b.v

module mux2x1_3b(entrada1, entrada2, seletora, saida);
input seletora;
input [2:0] entrada1, entrada2;
output reg [2:0] saida;

always @(*)
begin
  saida = (seletora == 1'b0)?entrada1:entrada2; 
end

endmodule
