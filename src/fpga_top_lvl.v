

module fpga_top_lvl (
    input   clk,        // board clock
    input   btnC,       // reset

    input   scl,
    inout   sda,

    output [15:0]       led,
    input [7:0]         sw

);

    // wires
    wire sda_signal, sda_out_signal;

    assign sda = !sda_out_signal ? 1'b0 : 1'bZ;
    assign sda_signal = sda;

    i2c_slave i2c_instance (
        .scl        (scl),                // Connect to an external or internal clock line
        .sda        (sda_signal),                // Connect to an external or internal data line
        .sda_out    (sda_out_signal),        // Connect to an external or internal output data line
        .rstn       (!btnC),              // Connect to an external or internal reset (active low)

        // data ports
        .reg_data_in    (sw),       // Connect to data source
        .reg_data_out   (led[15:8]),      // Connect to data sink or next module
        .reg_data_addr  (led[7:0]),     // Connect to address source or next module
        .reg_write      ()         // Connect to a write control signal
    );

    tt_um_jk2102 instance_name (
        .ui_in      (your_input_wire_or_bus),   // Dedicated inputs
        .uo_out     (your_output_wire_or_bus), // Dedicated outputs
        .uio_in     (your_bidir_input),        // IOs: Bidirectional Input path
        .uio_out    (your_bidir_output),      // IOs: Bidirectional Output path
        .uio_oe     (your_bidir_enable),       // IOs: Bidirectional Enable path
        .ena        (your_enable_signal),         // enable signal
        .clk        (your_clock_signal),          // clock signal
        .rst_n      (your_reset_signal)         // reset signal (active low)
    );

endmodule
