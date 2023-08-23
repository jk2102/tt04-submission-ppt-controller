

module pulse_generator (
    input        clk,
    input        rst_n,
    input        run,          // When high, the pulse generation begins
    input [15:0] pulse_period, // Defines the period for the pulse
    input [15:0] pulse_width,  // Defines the width of the pulse
    output       pulse_out
);

    reg [15:0] counter = 16'b0;
    reg pulse_active = 1'b0;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 16'b0;
            pulse_active <= 1'b0;
        end else if (run) begin
            if (counter < pulse_width) begin
                counter <= counter + 1'b1;
                pulse_active <= 1'b1;
            end else if (counter < pulse_period) begin
                counter <= counter + 1'b1;
                pulse_active <= 1'b0;
            end else begin
                counter <= 16'b0;
                pulse_active <= 1'b1;
            end
        end else begin
            counter <= 16'b0;
            pulse_active <= 1'b0;
        end
    end

    assign pulse_out = pulse_active;

endmodule
