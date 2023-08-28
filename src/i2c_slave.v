

module i2c_slave(
    input wire scl,    // Clock line
    input wire sda,    // Data line
    output reg sda_out, // Output data
    input wire rstn,

    input [6:0] slv_addr_in,

    // data ports
    input wire  [7:0] reg_data_in,
    output reg  [7:0] reg_data_out,
    output reg  [7:0] reg_data_addr,
    output reg        reg_write
);

    localparam [2:0] 
        IDLE            = 3'b000,
        // START           = 3'b001,
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

    //reg [6:0] slave_address; // Define your slave address here
    reg [7:0] data_in;
    reg [7:0] data_out;
    reg reg_addr_or_data;

    reg [2:0] bit_count = 3'b111;
    reg [2:0] state;


    always @(negedge scl or negedge rstn) begin
        if (!rstn) begin
            // define address only on reset
            //slave_address <= 7'h5A;

            state <= IDLE;
            bit_count <= 3'b111;
            sda_out <= 1'b1; // High by default

            data_out <= 8'b0;

            reg_data_addr   <= 8'b0;
            reg_data_out    <= 8'b0;
            reg_addr_or_data <= 1'b0;
            reg_write <= 1'b0;

        end else begin

            //slave_address <= slv_addr_in;


            
            // sample the data from the register map whe rxing ADDR
            if (state == ADDR) data_out <= reg_data_in;

            // push the data to the register map, when ACKing data RX
            if (state == ACK_DATA) begin
                if (!reg_addr_or_data)  begin
                    reg_data_addr <= data_in;
                    reg_write <= 1'b0;
                end else begin
                    // also generate WRITE signal on data port
                    reg_data_out <= data_in;
                    reg_write <= 1'b1;
                end
                // toggle the reg_addr_or_data signal, first comes the reg addr then comes reg data
                reg_addr_or_data <= !reg_addr_or_data;
            end else 
                reg_write <= 1'b0;

            // handle if there was a I2C slave register read, reset the reg_addr_or_data signal
            // if ((state == READ) & (state == STOPorSTART)) reg_addr_or_data <= 1'b0;
            if ((state == ADDR)) reg_addr_or_data <= 1'b0;

            // FSM decoder
            case(state)
                IDLE: begin
                    sda_out <= 1;
                    if (start_pattern) begin
                        state <= ADDR;
                        bit_count <= 3'b111;
                    end else begin
                        state <= IDLE;
                    end
                end


                ADDR: begin
                    sda_out <= 1;
                    if (bit_count == 3'b000) begin
                        if (data_in[7:1] == slv_addr_in) begin
                            state <= ACK_ADDR;
                            sda_out <= 0; // Acknowledge by pulling line low
                            bit_count <= 3'b111;
                        end else begin
                            state <= IDLE;
                        end
                    end else begin
                        bit_count <= bit_count - 1;
                        state <= ADDR;
                    end
                end

                ACK_ADDR: begin
                    sda_out <= 1; // release SDA line from ACK
                    if (start_pattern) begin
                        state <= ADDR;
                        bit_count <= 3'b111;
                    end else if (data_in[0] == 1'b0) begin
                        state <=  WRITE;
                    end else begin
                        state <=  READ;
                        sda_out <= data_out[bit_count];
                        bit_count <= bit_count - 1; 
                    end
                end

                READ: begin
                    sda_out <= data_out[bit_count];
                    if (start_pattern) begin
                        state <= ADDR;
                        bit_count <= 3'b111;
                    end else if (bit_count == 3'b000) begin
                        state <= STOPorSTART;
                    end else begin
                        bit_count <= bit_count - 1;
                        state <= READ;
                    end
                end

                WRITE: begin
                    sda_out <= 1;
                    if (start_pattern) begin
                        state <= ADDR;
                        bit_count <= 3'b111;
                    end else if (bit_count == 3'b000) begin
                        state <= ACK_DATA;
                        sda_out <= 0; // Acknowledge by pulling line low
                    end else begin
                        bit_count <= bit_count - 1;
                        state <= WRITE;
                    end
                end
                
                ACK_DATA: begin
                    sda_out <= 1; // release SDA line from ACK
                    if (start_pattern) begin
                        state <= ADDR;
                        bit_count <= 3'b111;
                    end else if (start_pattern) state <= STOPorSTART;
                    else state <= WRITE;
                    bit_count <= 3'b111;
                end

                STOPorSTART: begin
                    sda_out <= 1;
                    if (start_pattern & stop_pattern) begin
                        state <= ADDR;
                        bit_count <= 3'b111;
                    end else if (stop_pattern) begin
                        state <= IDLE;
                        bit_count <= 3'b111;
                    end else if (start_pattern) begin
                        state <= ADDR;
                        bit_count <= 3'b111;
                    end else begin
                        state <= STOPorSTART;
                    end
                end

                default: begin
                    state <= IDLE;
                    bit_count <= 3'b111;
                end
            endcase

        end
    end

    // capture SDA on posedge of SCL
    always @(posedge scl or negedge rstn) begin
        if (!rstn) begin
            data_in <= 8'b0;
        end else begin
            // data capturing
            if ( (state == ADDR) | (state == WRITE)) data_in[bit_count] <= sda;
        end
    end


endmodule
