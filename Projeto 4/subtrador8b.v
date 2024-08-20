// subtrador8b.v
// Subtrador de 8-bits em Verilog
module subtrador8b (a, b, cin, s, cout);
    // Descrição das entradas e saídas
    input [7:0] a, b;        // a e b são entradas de 8-bits
    input cin;               // cin é de apenas um bit
    output [7:0] s;          // s é uma saída de 8-bits
    output cout;             // cout é uma saída de um bit

    // Declaracao dos fios intermediários
    wire c1, c2, c3, c4, c5, c6, c7;
    
    // Inversor para b
    wire [7:0] b_inv;
    assign b_inv = ~b + 8'b00000001;

    // Descrição do circuito - abordagem hierárquica
    somadorcompleto z0 (.a(a[0]), .b(b_inv[0]), .cin(cin), .s(s[0]), .cout(c1));
    somadorcompleto z1 (.a(a[1]), .b(b_inv[1]), .cin(c1), .s(s[1]), .cout(c2));
    somadorcompleto z2 (.a(a[2]), .b(b_inv[2]), .cin(c2), .s(s[2]), .cout(c3));
    somadorcompleto z3 (.a(a[3]), .b(b_inv[3]), .cin(c3), .s(s[3]), .cout(c4));
    somadorcompleto z4 (.a(a[4]), .b(b_inv[4]), .cin(c4), .s(s[4]), .cout(c5));
    somadorcompleto z5 (.a(a[5]), .b(b_inv[5]), .cin(c5), .s(s[5]), .cout(c6));
    somadorcompleto z6 (.a(a[6]), .b(b_inv[6]), .cin(c6), .s(s[6]), .cout(c7));
    somadorcompleto z7 (.a(a[7]), .b(b_inv[7]), .cin(c7), .s(s[7]), .cout(cout));
endmodule
