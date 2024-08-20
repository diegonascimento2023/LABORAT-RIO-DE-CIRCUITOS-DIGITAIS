// letreiro_rotativo.v

module letreiro_rotativo(stop, clk50MHZ, display1, display2, display3, display4, display5, display6);
// Declaracao de entradas e saidas
input stop;
input clk50MHZ; // clock da fpga
output [6:0] display1, display2, display3, display4, display5, display6;


// Declaracao dos fios intermediarios
wire clk;
wire [2:0] d0, d1, d2, d3, d4, d5;
wire [2:0] q0, q1, q2, q3, q4, q5;

// Instanciação do módulo clkdiv
  clkdiv clk_div_inst (
    .clk (clk50MHZ),         // Sinal de clock da FPGA
    .clk2_5Hz (clk)       // Saída clk5Hz conectada ao sinal de clock Clk do letreiro_rotativo
  );

// Muxes, registradores e decodificadores
mux2x1_3b m0 (.entrada1(q5), .entrada2(3'b000), .seletora(stop), .saida(d0)); 
registrador3b r0 (.clk(clk), .d(d0), .q(q0));
decodificador de0 (.entrada(q0), .display(display1));

mux2x1_3b m1 (.entrada1(q0), .entrada2(3'b001), .seletora(stop), .saida(d1)); 
registrador3b r1 (.clk(clk), .d(d1), .q(q1));
decodificador de1 (.entrada(q1), .display(display2));

mux2x1_3b m2 (.entrada1(q1), .entrada2(3'b010), .seletora(stop), .saida(d2)); 
registrador3b r2 (.clk(clk), .d(d2), .q(q2));
decodificador de2 (.entrada(q2), .display(display3));

mux2x1_3b m3 (.entrada1(q2), .entrada2(3'b011), .seletora(stop), .saida(d3)); 
registrador3b r3 (.clk(clk), .d(d3), .q(q3));
decodificador de3 (.entrada(q3), .display(display4));

mux2x1_3b m4 (.entrada1(q3), .entrada2(3'b100), .seletora(stop), .saida(d4)); 
registrador3b r4 (.clk(clk), .d(d4), .q(q4));
decodificador de4 (.entrada(q4), .display(display5));

mux2x1_3b m5 (.entrada1(q4), .entrada2(3'b101), .seletora(stop), .saida(d5)); 
registrador3b r5 (.clk(clk), .d(d5), .q(q5));
decodificador de5 (.entrada(q5), .display(display6));


endmodule

