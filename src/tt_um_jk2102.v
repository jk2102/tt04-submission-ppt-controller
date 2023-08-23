// Top module for Tiny Tapeout submission
// jkundrata, 22.08.2023.

module tt_um_jk2102 (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);


  assign uio_out = 8'b0;
  assign uio_oe = 8'b0;

  // if not enable, keep in reset
  assign rstn_int  = ena ? rst_n : 1'b0;

wire div_clk;
wire [15:0] top_count;

// 16-bit clock divider
clock_divider clk_div_inst (
    .clk      (clk),
    .rst_n    (rstn_int),
    .sel      (5'd0),
    .clk_out  (div_clk)
);

// I2C slave


// synchronizers
synchronizer #(.WIDTH(8)) sync_inst (
    .clk        (div_clk),
    .rst_n      (rstn_int),
    .in_data    (top_count[15:8]),
    .out_data   (uo_out)
);

// pulse generator
pulse_generator pulse_gen_inst (
    .clk          (div_clk),
    .rst_n        (rstn_int),
    .run          (ena),
    .pulse_period (16'd10),
    .pulse_width  (16'd2),
    .pulse_out    (pulse_out)
);

// pulse counter
pulse_counter pulse_counter_inst (
    .clk          (div_clk),
    .rst_n        (rstn_int),
    .in_pulse     (pulse_out),
    .run          (ena),
    .count        (top_count)
);

// control logic



endmodule
