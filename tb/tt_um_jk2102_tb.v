module tb_tt_um_jk2102();

    reg [7:0] ui_in_tb;
    wire [7:0] uo_out_tb;
    reg [7:0] uio_in_tb;
    wire [7:0] uio_out_tb;
    wire [7:0] uio_oe_tb;
    reg ena_tb;
    reg clk_tb;
    reg rst_n_tb;

    // Instantiate the design module
    tt_um_jk2102 dut (
        .ui_in(ui_in_tb),
        .uo_out(uo_out_tb),
        .uio_in(uio_in_tb),
        .uio_out(uio_out_tb),
        .uio_oe(uio_oe_tb),
        .ena(ena_tb),
        .clk(clk_tb),
        .rst_n(rst_n_tb)
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
        uio_in_tb = 8'h00;
        #10;

        // Release reset
        rst_n_tb = 1;
        #10;

        // Activate and test
        ena_tb = 1;
        ui_in_tb = 8'hAA;
        uio_in_tb = 8'h55;
        #20;

        // Modify inputs
        ui_in_tb = 8'h5A;
        uio_in_tb = 8'hA5;
        #20;

        // Deactivate and reset
        ena_tb = 0;
        rst_n_tb = 0;
        #10;

        // Finish simulation
        $finish;
    end

endmodule
