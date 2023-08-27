
module pulse_counter (
    input        clk,
    input        rst_n,
    input        in_pulse,    // Input pulse to be counted
    input        run,         // When high, the counter counts the pulses
    input [7:0]    load_count,
    output [7:0]   count,       // 16-bit wide counter output
    output reg      done
);

    reg [7:0] pulse_count;
    reg prev_pulse;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pulse_count <= 8'd16;
            prev_pulse <= 1'b0;
            done <= 1'b0;
        end else begin
            if (run) begin
                // Check for a rising edge on in_pulse
                if (pulse_count == 8'b0) begin
                    done <= 1'b1;
                end else if (in_pulse && !prev_pulse) begin
                    pulse_count <= pulse_count - 1'b1;
                end
            end else begin
                pulse_count <= load_count;
                done <= 1'b0;
            end
            prev_pulse <= in_pulse;
        end
    end

    assign count = pulse_count;

endmodule
