//registrador3b.v

module registrador3b(clk, d, q);
input clk;
input [2:0] d;
output reg [2:0] q;

always @(posedge clk)
begin
   q<= d;
end

endmodule
