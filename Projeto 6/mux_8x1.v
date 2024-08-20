 module mux_8x1 (i0, i1, i2, i3, i4, i5, i6, i7, sel, s);
	input [3:0] i0, i1, i2, i3, i4, i5, i6, i7;
	input [2:0] sel;
	output reg [3:0] s;
	always @* begin
		case(sel)
			3'b000: s = i0;
			3'b001: s = i1;
			3'b010: s = i2;
			3'b011: s = i3;
			3'b100: s = i4;
			3'b101: s = i5;
			3'b110: s = i6;
			3'b111: s = i7;
		endcase
	end
 endmodule