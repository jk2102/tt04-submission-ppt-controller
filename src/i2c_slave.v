

module i2c_slave(
    input wire scl,    // Clock line
    input wire sda,    // Data line
    output reg sda_out, // Output data
    input wire rstn
);

    localparam [2:0] 
        IDLE            = 3'b000,
        START           = 3'b001,
        ADDR            = 3'b010,
        ACK             = 3'b011,
        READ            = 3'b100,
        WRITE           = 3'b101,
        STOP            = 3'b110;


    // Start pattern detection
    reg start_pattern;
    always @ (negedge sda or negedge rstn) begin
        if(!rstn)
            start_pattern <= 1'b0;
        else if (scl)
            start_pattern <= 1'b1;
        else
            start_pattern <= 1'b0;
    end

    // Stop pattern detection
    reg stop_pattern;
    always @ (posedge sda or negedge rstn) begin
        if(!rstn)
            stop_pattern <= 1'b0;
        else if (scl)
            stop_pattern <= 1'b1;
        else
            stop_pattern <= 1'b0;
    end

    // proširiti s write reg address, write reg data
    // proširiti s write reg addr, read reg data

    // Repeated start ???

    reg [7:0] slave_address = 8'hAA; // Define your slave address here
    reg [7:0] data_in;
    reg [7:0] data_out;
    reg sda_read;
    reg sda_reg;

    reg [2:0] bit_count = 3'b000;
    reg [2:0] next_bit_count;
    reg [2:0] state, next_state;

    always @(posedge scl or negedge rstn) begin
            if (!rstn) begin
                sda_reg <= sda; 
            end else begin
                sda_reg <= sda; 
            end
        end

    always @(posedge scl or negedge rstn) begin
        if (!rstn) begin
            state <= IDLE;
            sda_out <= 1'b1; // High by default
            bit_count <= 3'b000;
        end else begin
            state <= next_state;
            sda_out <= sda_read;
            bit_count <= next_bit_count;

            if (state == ADDR)
        end
    end

    always @(state, sda, bit_count, data_in, data_out, start_pattern, stop_pattern) begin
        case(state)
            IDLE: begin
                if (start_pattern) begin
                    next_state = ADDR;
                    next_bit_count = 3'b000;
                    data_in[bit_count] = sda_reg;
                    next_bit_count = bit_count + 1;
                end else begin
                    next_state = IDLE;
                end
            end

            // needed ???
            START: begin
                next_state = ADDR;
                next_bit_count = 3'b000;
            end

            ADDR: begin
                data_in[bit_count] = sda_reg;
                if (bit_count == 3'b111) begin
                    if (data_in == slave_address) begin
                        next_state = ACK;
                    end else begin
                        next_state = IDLE;
                    end
                end else begin
                    next_bit_count = bit_count + 1;
                    next_state = ADDR;
                end
            end

            ACK: begin
                sda_read = 0; // Acknowledge by pulling line low
                next_state = (data_in[0] == 1'b0) ? WRITE : READ; 
            end

            READ: begin
                sda_read = data_out[bit_count];
                if (bit_count == 3'b111) begin
                    next_state = STOP;
                end else begin
                    next_bit_count = bit_count + 1;
                    next_state = READ;
                end
            end

            WRITE: begin
                data_out[bit_count] = sda_reg;
                if (bit_count == 3'b111) begin
                    next_state = STOP;
                end else begin
                    next_bit_count = bit_count + 1;
                    next_state = WRITE;
                end
            end

            STOP: begin
                if (stop_pattern) begin
                    next_state = IDLE;
                end else begin
                    next_state = STOP;
                end
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end

endmodule
