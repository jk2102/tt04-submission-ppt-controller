

module pulse_generator (
    input        clk,
    input        rst_n,
    input        run,          // When high, the pulse generation begins
    input [14:0] pulse_period, // Defines the period for the pulse
    input [14:0] pulse_width,  // Defines the width of the pulse
    output       pulse_out
);

    reg [14:0] counter, pulse_period_r, pulse_width_r;
    reg pulse_active;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 15'b0;
            pulse_active <= 1'b0;
            pulse_period_r <= 15'd128;
            pulse_width_r  <= 15'b1;
        end else if (run) begin
            if (counter < pulse_width_r) begin
                counter <= counter + 1'b1;
                pulse_active <= 1'b1;
            end else if (counter < pulse_period_r) begin
                counter <= counter + 1'b1;
                pulse_active <= 1'b0;
            end else begin
                counter <= 15'b0;
                pulse_active <= 1'b1;
            end
        end else begin
            counter <= 15'b0;
            pulse_active <= 1'b0;
            pulse_period_r <= pulse_period;
            pulse_width_r  <= pulse_width;
        end
    end

    assign pulse_out = pulse_active;

endmodule
