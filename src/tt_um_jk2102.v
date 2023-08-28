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

    // wires
    wire scl, sda, sda_out;

    wire [7:0] reg_data_in, reg_data_out, reg_data_addr, count_done, count;
    wire [13:0] period, width;

    wire reg_write, run_ppt, done, pulse_out;
    wire [4:0] clk_div;
    

    // if not enable, keep in reset
    wire rstn_int;
    assign rstn_int  = ena ? rst_n : 1'b0;

    wire div_clk;

    // 16-bit clock divider
    clock_divider clk_div_inst (
        .clk      (clk),
        .rst_n    (rstn_int),
        .sel      (clk_div),
        .clk_out  (div_clk)
    );

    // I2C slave
    i2c_slave i2c_slave_inst (
        .scl        (scl),     // Clock line
        .sda        (sda),     // Data line
        .sda_out    (sda_out), // Output data
        .rstn       (rstn_int),
        .slv_addr_in ({3'b101, ui_in[3:0]}),
        
        // data ports
        .reg_data_in        (reg_data_in),
        .reg_data_out       (reg_data_out),
        .reg_data_addr      (reg_data_addr),
        .reg_write          (reg_write)
    );

    // register map
    register_map register_map_inst (
        .address        (reg_data_addr[3:0]),
        .data_in        (reg_data_out),
        .data_out       (reg_data_in),
        .write_enable   (reg_write),
        .clk            (scl),
        .rstn           (rstn_int),

        .run_on_reset   (ui_in[4]),

        // PPT side ports
        .clk_div        (clk_div),
        .period         (period),
        .width          (width),
        .count          (count),
        .run_ppt        (run_ppt),
        .count_done     (count_done),
        .done           (done)
    );


    // pulse generator
    pulse_generator pulse_gen_inst (
        .clk          (div_clk),
        .rst_n        (rstn_int),
        .run          (ena & run_ppt & !done),
        .pulse_period (period),
        .pulse_width  (width),
        .pulse_out    (pulse_out)
    );

    // pulse counter
    pulse_counter pulse_counter_inst (
        .clk          (div_clk),
        .rst_n        (rstn_int),
        .in_pulse     (pulse_out),
        .run          (ena & run_ppt),
        .count        (count_done),
        .load_count   (count),
        .done         (done)
    );


    // IO port

    // inputs definition
    assign scl = uio_in[0];
    assign sda = uio_in[1];

    // outputs definition
    // uio[1] is sda - bidir
    assign uio_out    = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, sda_out, 1'b0};

    // output enable definition
    // uio[0] is scl - input
    // uio[1] is sda - bidir --> needs to activate only when SDA is low
    assign uio_oe     = {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, !sda_out, 1'b0};

    // output only port
    assign uo_out = pulse_out ?  {div_clk, 7'b0111111} : {div_clk, 7'b1000000};



endmodule
