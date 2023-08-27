

module clock_divider(
    input clk,             // Main clock input
    input rst_n,           // Asynchronous reset (active low)
    input [4:0] sel,      // Division factor input, select which bit to use as output
    output wire clk_out     // Divided clock output
);

reg [20:0] counter; // 26-bit counter --> enough to divide 50 MHz to 1 Hz
reg [4:0] sel_r; 

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        counter <= 21'b0;  // Reset the counter when reset goes low
        sel_r <= 5'd9;
    end else begin
        counter <= counter + 1'b1; // Increment the counter on every rising edge of the clock
        sel_r <= sel;
    end
end

assign clk_out = counter[(sel_r < 5'd21) ? sel_r : 5'd20]; // Output the bit selected by the "sel" input

endmodule
