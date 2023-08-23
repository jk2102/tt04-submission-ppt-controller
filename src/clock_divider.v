

module clock_divider(
    input clk,             // Main clock input
    input rst_n,           // Asynchronous reset (active low)
    input [4:0] sel,      // Division factor input, select which bit to use as output
    output wire clk_out     // Divided clock output
);

reg [31:0] counter = 32'b0; // 16-bit counter

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        counter <= 32'b0;  // Reset the counter when reset goes low
    else
        counter <= counter + 1'b1; // Increment the counter on every rising edge of the clock
end

assign clk_out = counter[sel]; // Output the bit selected by the "sel" input

endmodule
