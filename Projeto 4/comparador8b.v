//comparador8b.v

module comparador8b (a, b, s);
    // Descrição das entradas e saídas
    input [7:0] a, b;   // a e b são entradas de 8-bits
    output  s;     // s é uma saída de 1-bit

    // Declaracao variaveis intermediarias
    wire x7, x6, x5, x4, x3, x2, x1, x0;

    //Descricao do circuito 
    assign x7 = ~(a[7] ^ b[7]);
    assign x6 = ~(a[6] ^ b[6]);
    assign x5 = ~(a[5] ^ b[5]);
    assign x4 = ~(a[4] ^ b[4]);
    assign x3 = ~(a[3] ^ b[3]);
    assign x2 = ~(a[2] ^ b[2]);
    assign x1 = ~(a[1] ^ b[1]);
    assign x0 = ~(a[0] ^ b[0]);

    assign s = (~a[7])&(b[7]) | 
            x7&(~a[6])&(b[6]) | 
            x7&x6&(~a[5])&(b[5]) |
            x7&x6&x5&(~a[4])&(b[4]) |
            x7&x6&x5&x4&(~a[3])&(b[3]) |
            x7&x6&x5&x4&x3&(~a[2])&(b[2]) |
            x7&x6&x5&x4&x3&x2&(~a[1])&(b[1]) |
            x7&x6&x5&x4&x3&x2&x1&(~a[0])&(b[0]);
    
endmodule