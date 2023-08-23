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

  // quick test example
  reg [7:0] buffer;

  always @ (posedge clk or negedge rst_n)
    begin
      if (!rst_n)
        buffer <= 8'b0;
      else if(ena)
        buffer <= ui_in;
    end

  assign uo_out = buffer;

  assign uio_out = 8'b0;
  assign uio_oe = 8'b0;

  // if not enable, gate the clock and keep it in reset
  assign clock_int = ena ? clk : 1'b0;
  assign rstn_int  = ena ? rst_n : 1'b0;

// 16-bit clock divider


// I2C slave


// synchronizers


// pulse generator


// pulse counter



endmodule
