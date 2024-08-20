//CLCcorrecao.v
//Circuito lógico combinacional que identifica quando uma correção é necessária no processo de soma

module CLCcorrecao (z3, z2, z1, c4, cout);
    // Declaracao das portas
    input z3, z2, z1, c4;
    output cout;

    // Declaracao dos fios
    wire w1, w2, w3;

    // Funcionamento do circuito - Abordagem Estrutural
    and u0 (w1, z3, z2);
    and u1 (w2, z3, z1);
    or u3 (w3, w1, w2);
    or u4 (cout, c4, w3);
endmodule
