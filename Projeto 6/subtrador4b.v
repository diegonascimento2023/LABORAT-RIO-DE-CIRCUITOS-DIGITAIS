// subtrador4b.v
// Subtrador de 4-bits em Verilog
module subtrador4b (a, b, cin, s, cout_sub);
    // Descrição das entradas e saídas
    input [3:0] a, b;        // a e b são entradas de 4-bits
    input cin;               // cin é de apenas um bit
    output [3:0] s;          // s é uma saída de 4-bits
    output cout_sub;             // cout_sub é uma saída de um bit

    // Declaracao dos fios intermediários
    wire c1, c2, c3;
    
    // Inversor para b
    wire [3:0] b_inv;
    assign b_inv = ~b + 4'b0001;

    // Descrição do circuito - abordagem hierárquica
    somadorcompleto z0 (.a(a[0]), .b(b_inv[0]), .cin(cin), .s(s[0]), .cout(c1));
    somadorcompleto z1 (.a(a[1]), .b(b_inv[1]), .cin(c1), .s(s[1]), .cout(c2));
    somadorcompleto z2 (.a(a[2]), .b(b_inv[2]), .cin(c2), .s(s[2]), .cout(c3));
    somadorcompleto z3 (.a(a[3]), .b(b_inv[3]), .cin(c3), .s(s[3]), .cout(cout_sub));
endmodule

