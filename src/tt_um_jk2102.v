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

  // if not enable, gate the clock and keep it in reset
  assign rstn_int  = ena ? rst_n : 1'b0;

// 16-bit clock divider
clock_divider clk_div_inst (
    .clk      (clock),
    .rst_n    (rstn_int),
    .sel      (4'd1),
    .clk_out  (divided_clock)
);

// I2C slave


// synchronizers
synchronizer #(.WIDTH(8)) sync_inst (
    .clk        (divided_clock),
    .rst_n      (rstn_int),
    .in_data    (ui_in),
    .out_data   (uo_out)
);

// pulse generator


// pulse counter



endmodule
