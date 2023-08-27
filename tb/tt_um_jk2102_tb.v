`timescale 1us/1ns

module tt_um_jk2102_tb();

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

    assign uio_out_tb[1] = sda_in_tb;
    assign uio_oe_tb[1] = sda_oe_tb;

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
        #15.259 clk_tb = ~clk_tb; // 32k768 clock
    end

    // Test sequences
    initial begin
        $dumpfile("simulation_output.vcd");
        $dumpvars(0, tt_um_jk2102_tb); 
        
        // Initial conditions
        clk_tb = 0;
        rst_n_tb = 0;
        ena_tb = 0;
        ui_in_tb = 8'h0A;
        sda_out_tb = 1'b1;
        scl_out_tb = 1'b1;
        #10;

        // Release reset and activate
        #10 rst_n_tb = 1;
        #10 ena_tb = 1;
        
        #70000000;

        // modify to use Start - ADDR - R/W - ACK - REG_ADDR - ACK - REG_DATA - Stop !!!
        // send RUN = 0
        write_register(8'h5A, 8'h7, 8'h0);

        // send PERIOD_L = 32
        write_register(8'h5A, 8'h1, 8'd32);
        
        // send WIDTH_L = 4
        write_register(8'h5A, 8'h3, 8'd4);
        
        // send COUNT_L = 50
        write_register(8'h5A, 8'h5, 8'd50);

        // wait
        #100000;

        // send RUN = 1
        write_register(8'h5A, 8'h7, 8'h1);
        
        #20000000;

        // read COUNT_DONE
        read_register(8'h5A, 8'h8);
        read_register(8'h5A, 8'h9);

        #50000000;

        // read DONE
        read_register(8'h5A, 8'hA);

        // Deactivate and reset
        ena_tb = 0;
        rst_n_tb = 0;
        #10;

        // Finish simulation
        $finish;
    end

    task send_byte;
        input [7:0] data;
        integer i;

        // Ensure that the initial condition meets the I2C requirements.
        // Typically, a START condition is necessary before sending a byte.
        // Here, we assume that a START condition has been signaled prior to sending the byte.

        begin
            for(i = 7; i >= 0; i = i - 1) begin
                #10 scl_out_tb = 1'b0; sda_out_tb = data[i];
                #10 scl_out_tb = 1'b1;
            end

            // ACKnowledge            
            #10 scl_out_tb = 1'b0; sda_out_tb = 1'b1;
            #10 scl_out_tb = 1'b1;
            #10 scl_out_tb = 1'b0;

        end
    endtask

    task write_register;
        input [7:0] addr_i, reg_addr_i, reg_data_i;
        begin
            // send START pattern
            #5 sda_out_tb = 1'b0;

            // send ADDR and write access
            send_byte({addr_i[6:0], 1'b0});

            // send DATA
            send_byte(reg_addr_i);
            
            // send STOP pattern           
            // #5 scl_out_tb = 1'b0; 
            // #5 sda_out_tb = 1'b0;            
            // #5 scl_out_tb = 1'b1; 
            // #5 sda_out_tb = 1'b1;

            // #25;

            // // send START pattern
            // #5 sda_out_tb = 1'b0;

            // send ADDR and write access
            //send_byte({addr_i[6:0], 1'b0});

            // send DATA
            send_byte(reg_data_i);

            // send STOP pattern           
            #5 scl_out_tb = 1'b0; 
            #5 sda_out_tb = 1'b0;            
            #5 scl_out_tb = 1'b1; 
            #5 sda_out_tb = 1'b1;

            #25;
        end
    endtask

    task read_register;
        input [7:0] addr_i, reg_addr_i;

        begin
            // send START pattern
            #5 sda_out_tb = 1'b0;

            // send ADDR and write access
            send_byte({addr_i[6:0], 1'b0});

            // send DATA
            send_byte(reg_addr_i);

            #25;

            // send START pattern
            #5 scl_out_tb = 1'b1;
            #5 sda_out_tb = 1'b0;

            // send ADDR and read access
            send_byte({addr_i[6:0], 1'b1});

            // send DATA all HIGH data to relase the bus
            send_byte(8'hFF);

            
            // send STOP pattern           
            #5 scl_out_tb = 1'b0; 
            #5 sda_out_tb = 1'b0;            
            #5 scl_out_tb = 1'b1; 
            #5 sda_out_tb = 1'b1;
        end
    endtask

endmodule
