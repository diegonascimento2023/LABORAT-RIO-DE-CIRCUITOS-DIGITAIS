// contador3b.v

module contador3b(clk, q);
	input clk;
	output reg [2:0] q;
	
	initial begin
		q = 3'b000;
	end
	
	always @(posedge clk) begin
		q = q + 3'd1;
	end
endmodule