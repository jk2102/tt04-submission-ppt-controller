

module register_map (
    input [3:0] address,   // 4-bit address for 16 locations
    input [7:0] data_in,   // 8-bit data input
    output [7:0] data_out, // 8-bit data output
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

    // Declare the rgisters
    reg [4:0] CLK_DIV;
    reg [7:0] PERIOD_L;
    reg [7:0] PERIOD_H;
    reg [7:0] WIDTH_L;
    reg [7:0] WIDTH_H;
    reg [7:0] COUNT_L;
    reg [7:0] COUNT_H;
    reg       RUN;
    reg [7:0] COUNT_DONE_L;
    reg [7:0] COUNT_DONE_H;
    reg       DONE;

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            // deafult values
            // ensure basic functionality if I2C interface is not working
            CLK_DIV     <= 5'd9;      // CLK_DIV  --> With OSC 32k768 --> f = 32 Hz
            PERIOD_L    <= 8'd128;    // PERIOD_L --> 128 --> F_PPT = 0.25 Hz
            PERIOD_H    <= 8'd0;      // PERIOD_H --> 0
            WIDTH_L     <= 8'd1;      // WIDTH_L  --> 1 --> deltaT = 1/32 Hz
            WIDTH_H     <= 8'd0;      // WIDTH_H  --> 0 
            COUNT_L     <= 8'd16;     // COUNT_L  --> 16 firings
            COUNT_H     <= 8'd0;      // COUNT_H  --> 
            RUN         <= 1'd1;      // RUN      --> 1 --> fallback if I2C not working
            COUNT_DONE_L <= 8'd0;      // COUNT_DONE_L 
            COUNT_DONE_H <= 8'd0;      // COUNT_DONE_H 
            DONE        <= 1'd0;     // DONE
        end else if (write_enable) begin
            case(address) 
                4'h0:       CLK_DIV     <= data_in[4:0];
                4'h1:       PERIOD_L    <= data_in;
                4'h2:       PERIOD_H    <= data_in;
                4'h3:       WIDTH_L     <= data_in;
                4'h4:       WIDTH_H     <= data_in;
                4'h5:       COUNT_L     <= data_in;
                4'h6:       COUNT_H     <= data_in;
                4'h7:       RUN         <= data_in[0];

                default:    ;
            endcase

        end else begin
            // refresh with PPT controller side data
            COUNT_DONE_L    <= count_done[7:0];
            COUNT_DONE_H    <= count_done[15:8];
            DONE            <= done;
        end
    end

    // read towards the I2C interface   
    assign data_out =   (address == 4'h0) ? {3'b0, CLK_DIV} :
                        (address == 4'h1) ? PERIOD_L :
                        (address == 4'h2) ? PERIOD_H :
                        (address == 4'h3) ? WIDTH_L :
                        (address == 4'h4) ? WIDTH_H :
                        (address == 4'h5) ? COUNT_L :
                        (address == 4'h6) ? COUNT_H :             
                        (address == 4'h7) ? {7'b0, RUN} :
                        (address == 4'h8) ? COUNT_DONE_L :
                        (address == 4'h9) ? COUNT_DONE_H :
                        (address == 4'hA) ? {7'b0, DONE} :
                        8'b0;

    // read towards PPT controller
    assign clk_div  = CLK_DIV;
    assign period   = {PERIOD_H, PERIOD_L};
    assign width    = {WIDTH_H, WIDTH_L};
    assign count    = {COUNT_H, COUNT_L};
    assign run_ppt  = RUN;


endmodule


