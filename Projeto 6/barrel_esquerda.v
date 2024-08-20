// barrel_esquerda.v
module barrel_esquerda(a, s);
	input [3:0] a;
	output [3:0] s;
	
	assign s = a << 1;
endmodule