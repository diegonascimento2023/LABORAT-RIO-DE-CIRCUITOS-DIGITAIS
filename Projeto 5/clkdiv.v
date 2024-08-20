 // clkdiv.v
 
 module clkdiv(
    input clk,
    output reg clk2_5Hz
);

    reg [25:0] counter;

    initial begin
        counter <= 26'd0;
        clk2_5Hz <= 1'b0;
    end

    always @(negedge clk) begin
        counter <= counter + 1;
        if (counter == 26'd24999999) begin
            counter <= 26'd0;
            clk2_5Hz <= ~clk2_5Hz;
        end
    end

endmodule
