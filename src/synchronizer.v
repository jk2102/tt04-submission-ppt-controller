

module synchronizer (
    input        clk,            // Clock
    input        rst_n,          // Asynchronous reset (active low)
    input [WIDTH-1:0] in_data,   // Input data
    output [WIDTH-1:0] out_data  // Synchronized output data
);
parameter WIDTH = 8;             // Default width is 8 bits. Can be overridden during instantiation.

reg [WIDTH-1:0] stage1, stage2; // Two stages for the synchronizer

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        stage1 <= {WIDTH{1'b0}};
        stage2 <= {WIDTH{1'b0}};
    end else begin
        stage1 <= in_data;
        stage2 <= stage1;
    end
end

assign out_data = stage2;

endmodule
