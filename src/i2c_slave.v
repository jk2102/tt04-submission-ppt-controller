

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
        ACK_ADDR        = 3'b011,
        READ            = 3'b100,
        WRITE           = 3'b101,
        ACK_DATA        = 3'b110,
        STOPorSTART     = 3'b111;


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

    reg [6:0] slave_address = 8'h5A; // Define your slave address here
    reg [7:0] data_in;
    reg [7:0] data_out = 8'hBE;
    reg sda_read;

    reg [2:0] bit_count = 3'b111;
    reg [2:0] next_bit_count;
    reg [2:0] state, next_state;

    always @(negedge scl or negedge rstn) begin
        if (!rstn) begin
            state <= IDLE;
            bit_count <= 3'b111;
            sda_out <= 1'b1; // High by default
        end else begin
            state <= next_state;
            bit_count <= next_bit_count;
            // data setting
            sda_out <= sda_read;
        end
    end

    always @(posedge scl or negedge rstn) begin
        if (!rstn) begin
            data_in <= 8'b0;
        end else begin
            // data capturing
            if ( (state == ADDR) | (state == WRITE)) data_in[bit_count] <= sda;
        end
    end

    always @(state, sda, bit_count, data_in, data_out, start_pattern, stop_pattern) begin
        case(state)
            IDLE: begin
                sda_read = 1;
                if (start_pattern) begin
                    next_state = ADDR;
                    next_bit_count = 3'b111;
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
                sda_read = 1;
                if (bit_count == 3'b000) begin
                    if (data_in[7:1] == slave_address) begin
                        next_state = ACK_ADDR;
                        sda_read = 0; // Acknowledge by pulling line low
                        next_bit_count = 3'b111;
                    end else begin
                        next_state = IDLE;
                    end
                end else begin
                    next_bit_count = bit_count - 1;
                    next_state = ADDR;
                end
            end

            ACK_ADDR: begin
                sda_read = 1; // release SDA line from ACK
                if (data_in[0] == 1'b0) begin
                    next_state =  WRITE;
                end else begin
                    next_state =  READ;
                    sda_read = data_out[bit_count];
                    next_bit_count = bit_count - 1; 
                end
            end

            READ: begin
                sda_read = data_out[bit_count];
                if (bit_count == 3'b000) begin
                    next_state = STOPorSTART;
                end else begin
                    next_bit_count = bit_count - 1;
                    next_state = READ;
                end
            end

            WRITE: begin
                sda_read = 1;
                if (bit_count == 3'b000) begin
                    next_state = ACK_DATA;
                    sda_read = 0; // Acknowledge by pulling line low
                end else begin
                    next_bit_count = bit_count - 1;
                    next_state = WRITE;
                end
            end
            
            ACK_DATA: begin
                sda_read = 1; // release SDA line from ACK
                next_state = STOPorSTART;
            end

            STOPorSTART: begin
                sda_read = 1;
                if (start_pattern & stop_pattern) begin
                    next_state = ADDR;
                    next_bit_count = 3'b111;
                end else if (stop_pattern) begin
                    next_state = IDLE;
                    next_bit_count = 3'b111;
                end else
                if (start_pattern) begin
                    next_state = ADDR;
                    next_bit_count = 3'b111;
                end else begin
                    next_state = STOPorSTART;
                end
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end

endmodule
