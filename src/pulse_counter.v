
module pulse_counter (
    input        clk,
    input        rst_n,
    input        in_pulse,    // Input pulse to be counted
    input        run,         // When high, the counter counts the pulses
    output [15:0] count       // 16-bit wide counter output
);

    reg [15:0] pulse_count = 16'b0;
    reg prev_pulse = 1'b0;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pulse_count <= 16'b0;
            prev_pulse <= 1'b0;
        end else begin
            if (run) begin
                // Check for a rising edge on in_pulse
                if (in_pulse && !prev_pulse) begin
                    pulse_count <= pulse_count + 1'b1;
                end
            end
            prev_pulse <= in_pulse;
        end
    end

    assign count = pulse_count;

endmodule
