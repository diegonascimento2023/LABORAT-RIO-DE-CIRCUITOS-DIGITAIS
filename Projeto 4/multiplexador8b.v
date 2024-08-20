// multiplexador8b.v
module multiplexador8b (a, b, p, s);
    // Descrição das entradas e saídas
    input [7:0] a, b;   // a e b são entradas de 8-bits
    input  p;            // p é entrada de 1-bit
    output [7:0] s;     // s é uma saída de 8-bits

    //Descricao do circuito - abordagem hierarquica
	 
    multiplexador m0 (.a(a[0]), .b(b[0]), .p(p), .s(s[0])); 
    multiplexador m1 (.a(a[1]), .b(b[1]), .p(p), .s(s[1])); 
    multiplexador m2 (.a(a[2]), .b(b[2]), .p(p), .s(s[2])); 
    multiplexador m3 (.a(a[3]), .b(b[3]), .p(p), .s(s[3])); 
    multiplexador m4 (.a(a[4]), .b(b[4]), .p(p), .s(s[4])); 
    multiplexador m5 (.a(a[5]), .b(b[5]), .p(p), .s(s[5])); 
    multiplexador m6 (.a(a[6]), .b(b[6]), .p(p), .s(s[6])); 
    multiplexador m7 (.a(a[7]), .b(b[7]), .p(p), .s(s[7])); 

endmodule