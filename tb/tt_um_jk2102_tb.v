module tb_tt_um_jk2102();

    reg [7:0] ui_in_tb;
    wire [7:0] uo_out_tb;
    reg [7:0] uio_in_tb;
    wire [7:0] uio_out_tb;
    wire [7:0] uio_oe_tb;
    reg ena_tb;
    reg clk_tb;
    reg rst_n_tb;
    reg sda_out_tb, scl_out_tb;
    wire sda_in_tb, sda_oe_tb;

    // Instantiate the design module
    tt_um_jk2102 dut (
        .ui_in      (ui_in_tb),

        .uo_out     (uo_out_tb),

        .uio_in     ({6'b0, sda_out_tb, scl_out_tb}),
        .uio_out    ({uio_out_tb[7:2], sda_in_tb, uio_out_tb[0]}),
        .uio_oe     ({uio_oe_tb[7:2], sda_oe_tb, uio_oe_tb[0]}),

        .ena        (ena_tb),
        .clk        (clk_tb),
        .rst_n      (rst_n_tb)
    );

    // Clock generator
    always begin
        #5 clk_tb = ~clk_tb;
    end

    // Test sequences
    initial begin
        $dumpfile("simulation_output.vcd");
        $dumpvars(0, dut); 
        
        // Initial conditions
        clk_tb = 0;
        rst_n_tb = 0;
        ena_tb = 0;
        ui_in_tb = 8'h00;
        sda_out_tb = 1'b1;
        scl_out_tb = 1'b1;
        #10;

        // Release reset and activate
        #10 rst_n_tb = 1;
        #10 ena_tb = 1;
        

        // send START pattern
        #5 sda_out_tb = 1'b0;

        // send ADDR
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b1; 
        #5 scl_out_tb = 1'b1;
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b0; 
        #5 scl_out_tb = 1'b1;
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b1; 
        #5 scl_out_tb = 1'b1;
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b0; 
        #5 scl_out_tb = 1'b1;
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b1; 
        #5 scl_out_tb = 1'b1;
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b0; 
        #5 scl_out_tb = 1'b1;
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b1; 
        #5 scl_out_tb = 1'b1;
        #5 scl_out_tb = 1'b0; sda_out_tb = 1'b0; 
        #5 scl_out_tb = 1'b1;


        #1000;

        // Deactivate and reset
        ena_tb = 0;
        rst_n_tb = 0;
        #10;

        // Finish simulation
         $finish;
    end

endmodule
