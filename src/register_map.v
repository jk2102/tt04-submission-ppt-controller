

module register_map (
    input [3:0] address,   // 4-bit address for 16 locations
    input [7:0] data_in,   // 8-bit data input
    output reg [7:0] data_out, // 8-bit data output
    input write_enable,    // write enable signal
    input clk,              // clock signal
    input rstn,

    // PPT side ports
    output [4:0]    clk_div,
    output [15:0]   period,
    output [15:0]   width,
    output [15:0]   count,
    output          run_ppt,
    input [15:0]    count_done,
    input           done

);

    // Declare a 16-location byte-wide memory array
    reg [7:0] memory [15:0];

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            // deafult values
            // ensure basic functionality if I2C interface is not working
            memory[0] <= 8'd9;      // CLK_DIV  --> With OSC 32k768 --> f = 32 Hz
            memory[1] <= 8'd128;    // PERIOD_L --> 128 --> F_PPT = 0.25 Hz
            memory[2] <= 8'd0;      // PERIOD_H --> 0
            memory[3] <= 8'd1;      // WIDTH_L  --> 1 --> deltaT = 1/32 Hz
            memory[4] <= 8'd0;      // WIDTH_H  --> 0 
            memory[5] <= 8'd16;     // COUNT_L  --> 16 firings
            memory[6] <= 8'd0;      // COUNT_H  --> 
            memory[7] <= 8'd0;      // RUN      --> 1 --> fallback if I2C not working
            memory[8] <= 8'd0;      // COUNT_DONE_L 
            memory[9] <= 8'd0;      // COUNT_DONE_H 
            memory[10] <= 8'd0;     // DONE
            memory[11] <= 8'd0;     // TBD
            memory[12] <= 8'd0;     // TBD
            memory[13] <= 8'd0;     // TBD
            memory[14] <= 8'd0;     // TBD
            memory[15] <= 8'd0;     // TBD
        end else if (write_enable) begin
            memory[address] <= data_in;
        end else begin
            // refresh with PPT controller side data
            memory[4'h8] <= count_done[7:0];
            memory[4'h9] <= count_done[15:8];
            memory[4'hA] <= {7'b0, done};
        end
    end

    // read towards the I2C interface
    always @(posedge clk or negedge rstn) begin
        if (!rstn) 
            data_out <= 8'b0;
        else
            data_out <= memory[address];

    end


    // read towards PPT controller
    assign clk_div  = memory[4'h0][4:0];
    assign period   = {memory[4'h2], memory[4'h1]};
    assign width    = {memory[4'h4], memory[4'h3]};
    assign count    = {memory[4'h6], memory[4'h5]};
    assign run_ppt  = memory[4'h7][0];


endmodule


