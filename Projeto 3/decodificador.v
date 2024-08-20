// // decodificador.v

module decodificador (d3, d2, d1, d0, a, b, c, d, e, f, g);
    // Descrição das entradas e saídas
    input  d3, d2, d1, d0;        // d3, d2, d1, d0  são entradas de apenas 1bit
    output  a, b, c, d, e, f, g;        //a, b, c, d, e, f, g são saídas de apenas 1bit

    // Descrição do circuito - abordagem hierárquica
   assign  a = ~d3 & ~d2 & ~d1 & d0 | ~d3 & d2 & ~d1 & ~d0 | d3 & ~d2 & d1 & d0 | d3 & d2 & ~d1 & d0;
   assign  b = ~d3 & d2 & ~d1 & d0 | d2 & d1 & ~d0 | d3 & d1 &  d0 | d3 & d2 & ~d0;
   assign  c = ~d3 & ~d2 & d1 & ~d0 | d3 & d2 & ~d0 | d3 & d2 & d1;
   assign  d = ~d3 & ~d2 & ~d1 & d0 | ~d3 & d2 & ~d1 & ~d0 | d2 & d1 & d0 | d3 & ~d2 & d1 & ~d0;
   assign  e = ~d3 & d0 | ~d2 & ~d1 & d0 | ~d3 & d2 & ~d1;
   assign  f = ~d3 & ~d2 & d0 | ~d3 & ~d2 & d1 | ~d3 & d1 & d0 | d3 & d2 & ~d1 & d0;
   assign  g = ~d3 & ~d2 & ~d1 | ~d3 & d2 & d1 & d0 | d3 & d2 & ~d1 & ~d0;
endmodule