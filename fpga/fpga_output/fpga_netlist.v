// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Aug 26 21:39:53 2023
// Host        : radna_stanica running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "259a055c" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module fpga_top_lvl
   (clk,
    btnC,
    scl,
    sda,
    led,
    sw);
  input clk;
  input btnC;
  input scl;
  inout sda;
  output [15:0]led;
  input [7:0]sw;

  wire btnC;
  wire btnC_IBUF;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire scl;
  wire scl_IBUF;
  wire scl_IBUF_BUFG;
  wire sda;
  wire sda_IBUF;
  wire sda_OBUF;
  wire [7:0]sw;
  wire [7:0]sw_IBUF;

  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  i2c_slave i2c_instance
       (.CLK(scl_IBUF_BUFG),
        .D(sw_IBUF),
        .btnC_IBUF(btnC_IBUF),
        .led_OBUF(led_OBUF),
        .sda_IBUF(sda_IBUF),
        .sda_OBUF(sda_OBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  BUFG scl_IBUF_BUFG_inst
       (.I(scl_IBUF),
        .O(scl_IBUF_BUFG));
  IBUF scl_IBUF_inst
       (.I(scl),
        .O(scl_IBUF));
  IOBUF sda_IOBUF_inst
       (.I(sda_OBUF),
        .IO(sda),
        .O(sda_IBUF),
        .T(sda_OBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
endmodule

module i2c_slave
   (sda_OBUF,
    led_OBUF,
    CLK,
    sda_IBUF,
    btnC_IBUF,
    D);
  output sda_OBUF;
  output [15:0]led_OBUF;
  input CLK;
  input sda_IBUF;
  input btnC_IBUF;
  input [7:0]D;

  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[0]_i_2_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[1]_i_2_n_0 ;
  wire \bit_count[1]_i_3_n_0 ;
  wire \bit_count[1]_i_4_n_0 ;
  wire \bit_count[1]_i_5_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[2]_i_2_n_0 ;
  wire \bit_count[2]_i_3_n_0 ;
  wire \bit_count[2]_i_4_n_0 ;
  wire \bit_count[2]_i_5_n_0 ;
  wire \bit_count[2]_i_6_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire btnC_IBUF;
  wire \data_in[0]_i_1_n_0 ;
  wire \data_in[1]_i_1_n_0 ;
  wire \data_in[2]_i_1_n_0 ;
  wire \data_in[3]_i_1_n_0 ;
  wire \data_in[4]_i_1_n_0 ;
  wire \data_in[5]_i_1_n_0 ;
  wire \data_in[6]_i_1_n_0 ;
  wire \data_in[7]_i_1_n_0 ;
  wire [7:0]data_out;
  wire data_out_0;
  wire [15:0]led_OBUF;
  wire [7:0]p_0_in;
  wire [6:0]p_0_in_1;
  wire p_1_in;
  wire reg_addr_or_data;
  wire reg_addr_or_data_i_1_n_0;
  wire reg_addr_or_data_reg_n_0;
  wire \reg_data_addr[7]_i_1_n_0 ;
  wire \reg_data_out[7]_i_1_n_0 ;
  wire sda_IBUF;
  wire sda_OBUF;
  wire sda_out_i_1_n_0;
  wire sda_out_i_2_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire sda_out_i_6_n_0;
  wire sda_out_i_7_n_0;
  wire sda_out_i_8_n_0;
  wire start_pattern;
  wire stop_pattern;

  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[6]_i_2_n_0 ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(data_out_0),
        .I5(\bit_count_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(stop_pattern),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(start_pattern),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04040F04)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(start_pattern),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(stop_pattern),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFC8C8C8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(start_pattern),
        .I2(\FSM_onehot_state[2]_i_3_n_0 ),
        .I3(data_out_0),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(reg_addr_or_data),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(start_pattern),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFAEAEAE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(reg_addr_or_data),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_state[5]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(start_pattern),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_1_in),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state[5]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(start_pattern),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(data_out_0),
        .I4(\FSM_onehot_state[6]_i_2_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state[6]_i_3_n_0 ),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[4]),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(p_0_in_1[5]),
        .I1(p_0_in_1[2]),
        .I2(p_0_in_1[3]),
        .I3(p_0_in_1[6]),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:1000000,READ:0100000,ACK_DATA:0001000,WRITE:0010000,IDLE:0000001,STOPorSTART:0000010,ADDR:0000100" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:1000000,READ:0100000,ACK_DATA:0001000,WRITE:0010000,IDLE:0000001,STOPorSTART:0000010,ADDR:0000100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:1000000,READ:0100000,ACK_DATA:0001000,WRITE:0010000,IDLE:0000001,STOPorSTART:0000010,ADDR:0000100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(data_out_0));
  (* FSM_ENCODED_STATES = "ACK_ADDR:1000000,READ:0100000,ACK_DATA:0001000,WRITE:0010000,IDLE:0000001,STOPorSTART:0000010,ADDR:0000100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(reg_addr_or_data));
  (* FSM_ENCODED_STATES = "ACK_ADDR:1000000,READ:0100000,ACK_DATA:0001000,WRITE:0010000,IDLE:0000001,STOPorSTART:0000010,ADDR:0000100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:1000000,READ:0100000,ACK_DATA:0001000,WRITE:0010000,IDLE:0000001,STOPorSTART:0000010,ADDR:0000100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:1000000,READ:0100000,ACK_DATA:0001000,WRITE:0010000,IDLE:0000001,STOPorSTART:0000010,ADDR:0000100" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \bit_count[0]_i_1 
       (.I0(\bit_count[0]_i_2_n_0 ),
        .I1(data_out_0),
        .I2(\FSM_onehot_state[6]_i_2_n_0 ),
        .I3(\bit_count[2]_i_3_n_0 ),
        .I4(\bit_count[2]_i_4_n_0 ),
        .I5(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5FFC4C4)) 
    \bit_count[0]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(start_pattern),
        .I3(\FSM_onehot_state[5]_i_2_n_0 ),
        .I4(data_out_0),
        .I5(\bit_count[2]_i_5_n_0 ),
        .O(\bit_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAFFAEAEAE00)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count[1]_i_2_n_0 ),
        .I1(\bit_count[1]_i_3_n_0 ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count[1]_i_4_n_0 ),
        .I4(\bit_count[2]_i_4_n_0 ),
        .I5(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \bit_count[1]_i_2 
       (.I0(\bit_count[2]_i_5_n_0 ),
        .I1(data_out_0),
        .I2(\FSM_onehot_state[5]_i_2_n_0 ),
        .I3(start_pattern),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\bit_count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_count[1]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(data_out_0),
        .O(\bit_count[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEEFAAAA)) 
    \bit_count[1]_i_4 
       (.I0(\bit_count[2]_i_5_n_0 ),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .I3(\bit_count[1]_i_5_n_0 ),
        .I4(data_out_0),
        .O(\bit_count[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \bit_count[1]_i_5 
       (.I0(p_0_in_1[4]),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .O(\bit_count[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count[2]_i_2_n_0 ),
        .I1(data_out_0),
        .I2(\FSM_onehot_state[6]_i_2_n_0 ),
        .I3(\bit_count[2]_i_3_n_0 ),
        .I4(\bit_count[2]_i_4_n_0 ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAEAEAEAEAFFFA)) 
    \bit_count[2]_i_2 
       (.I0(\bit_count[2]_i_5_n_0 ),
        .I1(start_pattern),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(data_out_0),
        .I4(\bit_count[2]_i_6_n_0 ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \bit_count[2]_i_3 
       (.I0(data_out_0),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(\bit_count[2]_i_5_n_0 ),
        .O(\bit_count[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEE0EEECEEE0)) 
    \bit_count[2]_i_4 
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(start_pattern),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(p_1_in),
        .O(\bit_count[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFC88)) 
    \bit_count[2]_i_5 
       (.I0(stop_pattern),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(start_pattern),
        .I4(reg_addr_or_data),
        .O(\bit_count[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_count[2]_i_6 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[2]_i_6_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_count[0]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\bit_count_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_count[1]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\bit_count_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_count[2]_i_1_n_0 ),
        .PRE(btnC_IBUF),
        .Q(\bit_count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_1_in),
        .I2(sda_IBUF),
        .O(\data_in[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000000E)) 
    \data_in[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(data_out_0),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in_1[0]),
        .I2(sda_IBUF),
        .O(\data_in[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04040400)) 
    \data_in[1]_i_2 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(data_out_0),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in_1[1]),
        .I2(sda_IBUF),
        .O(\data_in[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04040400)) 
    \data_in[2]_i_2 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(data_out_0),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[3]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in_1[2]),
        .I2(sda_IBUF),
        .O(\data_in[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    \data_in[3]_i_2 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(data_out_0),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in_1[3]),
        .I2(sda_IBUF),
        .O(\data_in[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000000A8)) 
    \data_in[4]_i_2 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(data_out_0),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(p_0_in_1[4]),
        .I2(sda_IBUF),
        .O(\data_in[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    \data_in[5]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(data_out_0),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[6]_i_1 
       (.I0(p_0_in[6]),
        .I1(p_0_in_1[5]),
        .I2(sda_IBUF),
        .O(\data_in[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    \data_in[6]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(data_out_0),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[7]_i_1 
       (.I0(p_0_in[7]),
        .I1(p_0_in_1[6]),
        .I2(sda_IBUF),
        .O(\data_in[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA8000000)) 
    \data_in[7]_i_2 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(data_out_0),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(p_0_in[7]));
  FDCE \data_in_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[0]_i_1_n_0 ),
        .Q(p_1_in));
  FDCE \data_in_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[1]_i_1_n_0 ),
        .Q(p_0_in_1[0]));
  FDCE \data_in_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[2]_i_1_n_0 ),
        .Q(p_0_in_1[1]));
  FDCE \data_in_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[3]_i_1_n_0 ),
        .Q(p_0_in_1[2]));
  FDCE \data_in_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[4]_i_1_n_0 ),
        .Q(p_0_in_1[3]));
  FDCE \data_in_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[5]_i_1_n_0 ),
        .Q(p_0_in_1[4]));
  FDCE \data_in_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[6]_i_1_n_0 ),
        .Q(p_0_in_1[5]));
  FDCE \data_in_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(\data_in[7]_i_1_n_0 ),
        .Q(p_0_in_1[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[0]),
        .Q(data_out[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[1]),
        .Q(data_out[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[2]),
        .Q(data_out[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[3]),
        .Q(data_out[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[4]),
        .Q(data_out[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[5]),
        .Q(data_out[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[6]),
        .Q(data_out[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(btnC_IBUF),
        .D(D[7]),
        .Q(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h152A)) 
    reg_addr_or_data_i_1
       (.I0(reg_addr_or_data),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(reg_addr_or_data_reg_n_0),
        .O(reg_addr_or_data_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    reg_addr_or_data_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(reg_addr_or_data_i_1_n_0),
        .Q(reg_addr_or_data_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data_addr[7]_i_1 
       (.I0(reg_addr_or_data),
        .I1(reg_addr_or_data_reg_n_0),
        .O(\reg_data_addr[7]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[0] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_1_in),
        .Q(led_OBUF[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[1] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[0]),
        .Q(led_OBUF[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[2] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[1]),
        .Q(led_OBUF[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[3] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[2]),
        .Q(led_OBUF[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[4] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[3]),
        .Q(led_OBUF[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[5] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[4]),
        .Q(led_OBUF[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[6] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[5]),
        .Q(led_OBUF[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[7] 
       (.C(CLK),
        .CE(\reg_data_addr[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[6]),
        .Q(led_OBUF[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_data_out[7]_i_1 
       (.I0(reg_addr_or_data),
        .I1(reg_addr_or_data_reg_n_0),
        .O(\reg_data_out[7]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[0] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_1_in),
        .Q(led_OBUF[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[1] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[0]),
        .Q(led_OBUF[9]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[2] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[1]),
        .Q(led_OBUF[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[3] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[2]),
        .Q(led_OBUF[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[4] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[3]),
        .Q(led_OBUF[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[5] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[4]),
        .Q(led_OBUF[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[6] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[5]),
        .Q(led_OBUF[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[7] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(btnC_IBUF),
        .D(p_0_in_1[6]),
        .Q(led_OBUF[15]));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    sda_out_i_1
       (.I0(sda_out_i_2_n_0),
        .I1(sda_out_i_3_n_0),
        .I2(sda_out_i_4_n_0),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .I4(\bit_count[1]_i_3_n_0 ),
        .I5(sda_OBUF),
        .O(sda_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFAFFFAFFBABABA)) 
    sda_out_i_2
       (.I0(\FSM_onehot_state[2]_i_3_n_0 ),
        .I1(p_1_in),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .I5(start_pattern),
        .O(sda_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    sda_out_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(sda_out_i_5_n_0),
        .I3(sda_out_i_6_n_0),
        .I4(sda_out_i_7_n_0),
        .I5(sda_out_i_8_n_0),
        .O(sda_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    sda_out_i_4
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state[6]_i_3_n_0 ),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[1]),
        .I4(p_0_in_1[4]),
        .I5(data_out_0),
        .O(sda_out_i_4_n_0));
  LUT5 #(
    .INIT(32'h08080C00)) 
    sda_out_i_5
       (.I0(data_out[6]),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(data_out[2]),
        .I4(\bit_count_reg_n_0_[2] ),
        .O(sda_out_i_5_n_0));
  LUT5 #(
    .INIT(32'h02030200)) 
    sda_out_i_6
       (.I0(data_out[4]),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(\bit_count_reg_n_0_[2] ),
        .I4(data_out[0]),
        .O(sda_out_i_6_n_0));
  LUT5 #(
    .INIT(32'h8080C000)) 
    sda_out_i_7
       (.I0(data_out[7]),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(data_out[3]),
        .I4(\bit_count_reg_n_0_[2] ),
        .O(sda_out_i_7_n_0));
  LUT5 #(
    .INIT(32'h08080C00)) 
    sda_out_i_8
       (.I0(data_out[5]),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(data_out[1]),
        .I4(\bit_count_reg_n_0_[2] ),
        .O(sda_out_i_8_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sda_out_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(sda_out_i_1_n_0),
        .PRE(btnC_IBUF),
        .Q(sda_OBUF));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    start_pattern_reg
       (.C(sda_IBUF),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(CLK),
        .Q(start_pattern));
  FDCE stop_pattern_reg
       (.C(sda_IBUF),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(CLK),
        .Q(stop_pattern));
endmodule
