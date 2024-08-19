module projetoMaquinas (m1, m2, m3, m4, c1, c2, c3, c4);
    // Declaração das portas
    input m1, m2, m3, m4;
    output c1, c2, c3, c4;

    // Declarando os fios
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12;

    // Funcionamento do circuito - Abordagem Estrutural
	 assign c1 = m1; 
    assign c2 = m2;
    not u1 (w1, m1);
    not u2 (w2, m2);
    not u3 (w3, m3);
    and u4 (w4, w1, m3);
    and u5 (w5, w2, m3);
    or u6 (c3, w4, w5);
    and u7 (w6, w1, w2);
    and u8 (w7, w6, m4);
    and u9 (w8, w1, w3);
    and u11 (w9, w8, m4);
    or u10 (w11, w7, w9);
    and u12 (w10, w2, w3);
    and u13 (w12, w10, m4);
    or u14 (c4, w11, w12);
    
endmodule