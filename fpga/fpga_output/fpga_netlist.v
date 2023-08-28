// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Aug 28 15:59:26 2023
// Host        : radna_stanica running 64-bit major release  (build 9200)
// Command     : write_verilog -force ./fpga_output/fpga_netlist.v
// Design      : fpga_top_lvl
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_divider
   (\sel_r_reg[3]_0 ,
    \sel_r_reg[4]_0 ,
    \sel_r_reg[0]_0 ,
    Q);
  output \sel_r_reg[3]_0 ;
  input \sel_r_reg[4]_0 ;
  input \sel_r_reg[0]_0 ;
  input [4:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]Q;
  wire \counter[0]_i_2_n_0 ;
  wire [25:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \pulse_width_r[13]_i_10_n_0 ;
  wire \pulse_width_r[13]_i_11_n_0 ;
  wire \pulse_width_r[13]_i_12_n_0 ;
  wire \pulse_width_r[13]_i_13_n_0 ;
  wire \pulse_width_r[13]_i_4_n_0 ;
  wire \pulse_width_r[13]_i_8_n_0 ;
  wire \pulse_width_r[13]_i_9_n_0 ;
  wire \pulse_width_r_reg[13]_i_5_n_0 ;
  wire \pulse_width_r_reg[13]_i_6_n_0 ;
  wire \pulse_width_r_reg[13]_i_7_n_0 ;
  wire [4:0]sel_r;
  wire \sel_r_reg[0]_0 ;
  wire \sel_r_reg[3]_0 ;
  wire \sel_r_reg[4]_0 ;
  wire [3:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDCE \counter_reg[0] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\counter_reg[0]_i_1_n_0 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDCE \counter_reg[10] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE \counter_reg[11] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE \counter_reg[12] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDCE \counter_reg[13] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE \counter_reg[14] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[15] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE \counter_reg[16] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDCE \counter_reg[17] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE \counter_reg[18] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE \counter_reg[19] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE \counter_reg[1] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE \counter_reg[20] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDCE \counter_reg[21] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]));
  FDCE \counter_reg[22] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]));
  FDCE \counter_reg[23] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]));
  FDCE \counter_reg[24] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,counter_reg[25:24]}));
  FDCE \counter_reg[25] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]));
  FDCE \counter_reg[2] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDCE \counter_reg[5] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDCE \counter_reg[9] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pulse_width_r[13]_i_10 
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .I2(sel_r[1]),
        .I3(counter_reg[17]),
        .I4(sel_r[0]),
        .I5(counter_reg[16]),
        .O(\pulse_width_r[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pulse_width_r[13]_i_11 
       (.I0(counter_reg[23]),
        .I1(counter_reg[22]),
        .I2(sel_r[1]),
        .I3(counter_reg[21]),
        .I4(sel_r[0]),
        .I5(counter_reg[20]),
        .O(\pulse_width_r[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pulse_width_r[13]_i_12 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(sel_r[1]),
        .I3(counter_reg[1]),
        .I4(sel_r[0]),
        .I5(counter_reg[0]),
        .O(\pulse_width_r[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pulse_width_r[13]_i_13 
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(sel_r[1]),
        .I3(counter_reg[5]),
        .I4(sel_r[0]),
        .I5(counter_reg[4]),
        .O(\pulse_width_r[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pulse_width_r[13]_i_3 
       (.I0(\pulse_width_r[13]_i_4_n_0 ),
        .I1(\pulse_width_r_reg[13]_i_5_n_0 ),
        .I2(sel_r[3]),
        .I3(\pulse_width_r_reg[13]_i_6_n_0 ),
        .I4(sel_r[4]),
        .I5(\pulse_width_r_reg[13]_i_7_n_0 ),
        .O(\sel_r_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \pulse_width_r[13]_i_4 
       (.I0(counter_reg[25]),
        .I1(sel_r[2]),
        .I2(sel_r[0]),
        .I3(sel_r[1]),
        .I4(counter_reg[24]),
        .O(\pulse_width_r[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pulse_width_r[13]_i_8 
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(sel_r[1]),
        .I3(counter_reg[9]),
        .I4(sel_r[0]),
        .I5(counter_reg[8]),
        .O(\pulse_width_r[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pulse_width_r[13]_i_9 
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(sel_r[1]),
        .I3(counter_reg[13]),
        .I4(sel_r[0]),
        .I5(counter_reg[12]),
        .O(\pulse_width_r[13]_i_9_n_0 ));
  MUXF7 \pulse_width_r_reg[13]_i_5 
       (.I0(\pulse_width_r[13]_i_8_n_0 ),
        .I1(\pulse_width_r[13]_i_9_n_0 ),
        .O(\pulse_width_r_reg[13]_i_5_n_0 ),
        .S(sel_r[2]));
  MUXF7 \pulse_width_r_reg[13]_i_6 
       (.I0(\pulse_width_r[13]_i_10_n_0 ),
        .I1(\pulse_width_r[13]_i_11_n_0 ),
        .O(\pulse_width_r_reg[13]_i_6_n_0 ),
        .S(sel_r[2]));
  MUXF7 \pulse_width_r_reg[13]_i_7 
       (.I0(\pulse_width_r[13]_i_12_n_0 ),
        .I1(\pulse_width_r[13]_i_13_n_0 ),
        .O(\pulse_width_r_reg[13]_i_7_n_0 ),
        .S(sel_r[2]));
  FDPE \sel_r_reg[0] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .D(Q[0]),
        .PRE(\sel_r_reg[0]_0 ),
        .Q(sel_r[0]));
  FDCE \sel_r_reg[1] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(Q[1]),
        .Q(sel_r[1]));
  FDCE \sel_r_reg[2] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(Q[2]),
        .Q(sel_r[2]));
  FDPE \sel_r_reg[3] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .D(Q[3]),
        .PRE(\sel_r_reg[0]_0 ),
        .Q(sel_r[3]));
  FDCE \sel_r_reg[4] 
       (.C(\sel_r_reg[4]_0 ),
        .CE(\<const1> ),
        .CLR(\sel_r_reg[0]_0 ),
        .D(Q[4]),
        .Q(sel_r[4]));
endmodule

(* ECO_CHECKSUM = "29dd287c" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module fpga_top_lvl
   (clk,
    btnC,
    scl,
    sda,
    clk_32768Hz,
    pulse_out,
    seg,
    sw,
    dp,
    an);
  input clk;
  input btnC;
  input scl;
  inout sda;
  output clk_32768Hz;
  output pulse_out;
  output [6:0]seg;
  input [8:0]sw;
  output dp;
  output [3:0]an;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]an;
  wire btnC;
  wire btnC_IBUF;
  wire clk;
  wire clk_32768Hz;
  wire clk_32768Hz_OBUF;
  wire clk_32768Hz_OBUF_BUFG;
  wire clk_32768Hz_i_1_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [11:0]counter;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[11]_i_4_n_0 ;
  wire \counter[11]_i_5_n_0 ;
  wire \counter_reg[4]_i_2__0_n_0 ;
  wire \counter_reg[8]_i_2__0_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [11:1]data0;
  wire div_clk;
  wire dp;
  wire instance_name_n_3;
  wire lopt;
  wire lopt_1;
  wire pulse_out;
  wire scl;
  wire scl_IBUF;
  wire scl_IBUF_BUFG;
  wire sda;
  wire sda_IBUF;
  wire sda_OBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [8:0]sw;
  wire [8:0]sw_IBUF;
  wire [3:0]\NLW_counter_reg[4]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_2__0_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  OBUF \an_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(an[3]));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  BUFG clk_32768Hz_OBUF_BUFG_inst
       (.I(clk_32768Hz_OBUF),
        .O(clk_32768Hz_OBUF_BUFG));
  OBUF clk_32768Hz_OBUF_inst
       (.I(clk_32768Hz_OBUF_BUFG),
        .O(clk_32768Hz));
  (* \PinAttr:I1:HOLD_DETOUR  = "178" *) 
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h9)) 
    clk_32768Hz_i_1
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(clk_32768Hz_OBUF),
        .O(clk_32768Hz_i_1_n_0));
  FDCE clk_32768Hz_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(clk_32768Hz_i_1_n_0),
        .Q(clk_32768Hz_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[10]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[10]),
        .O(counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[11]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[11]),
        .O(counter[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \counter[11]_i_2 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[6] ),
        .I5(\counter[11]_i_5_n_0 ),
        .O(\counter[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[11]_i_4 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter_reg_n_0_[11] ),
        .O(\counter[11]_i_4_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[11]_i_5 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\counter[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[1]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[2]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[2]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[3]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[3]),
        .O(counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[4]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[4]),
        .O(counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[5]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[5]),
        .O(counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[6]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[6]),
        .O(counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[7]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[7]),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \counter[9]_i_1__0 
       (.I0(\counter[11]_i_2_n_0 ),
        .I1(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[11]_i_3 
       (.CI(\counter_reg[8]_i_2__0_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[11:9]),
        .S({\<const0> ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[4]_i_2__0 
       (.CI(\<const0> ),
        .CO({\counter_reg[4]_i_2__0_n_0 ,\NLW_counter_reg[4]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[8]_i_2__0 
       (.CI(\counter_reg[4]_i_2__0_n_0 ),
        .CO({\counter_reg[8]_i_2__0_n_0 ,\NLW_counter_reg[8]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(btnC_IBUF),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
  OBUF dp_OBUF_inst
       (.I(\<const1> ),
        .O(dp));
  tt_um_jk2102 instance_name
       (.AR(btnC_IBUF),
        .CLK(scl_IBUF_BUFG),
        .div_clk(div_clk),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .sda_IBUF(sda_IBUF),
        .sda_OBUF(sda_OBUF),
        .seg_OBUF(seg_OBUF[0]),
        .\sel_r_reg[3] (instance_name_n_3),
        .\sel_r_reg[4] (clk_32768Hz_OBUF_BUFG),
        .sw_IBUF({sw_IBUF[8],sw_IBUF[4:0]}));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF pulse_out_OBUF_inst
       (.I(lopt),
        .O(pulse_out));
  BUFG \pulse_width_r_reg[13]_i_2 
       (.I(instance_name_n_3),
        .O(div_clk));
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
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \seg_OBUF[6]_inst 
       (.I(lopt_1),
        .O(seg[6]));
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
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
endmodule

module i2c_slave
   (sda_OBUF,
    \reg_data_out_reg[0]_0 ,
    Q,
    \reg_data_addr_reg[2]_0 ,
    E,
    \reg_data_addr_reg[3]_0 ,
    \reg_data_addr_reg[3]_1 ,
    \reg_data_addr_reg[3]_2 ,
    \reg_data_addr_reg[3]_3 ,
    \reg_data_addr_reg[3]_4 ,
    reg_write_reg_0,
    CLK,
    sda_out_reg_0,
    sda_IBUF,
    run_ppt_reg,
    \data_out_reg[7]_0 ,
    \data_out_reg[7]_1 ,
    \data_out_reg[6]_0 ,
    \data_out_reg[5]_0 ,
    \data_out_reg[4]_0 ,
    \data_out_reg[3]_0 ,
    \data_out_reg[2]_0 ,
    \data_out_reg[1]_0 ,
    \data_out_reg[0]_0 ,
    \data_out_reg[0]_1 ,
    DONE,
    sw_IBUF);
  output sda_OBUF;
  output \reg_data_out_reg[0]_0 ;
  output [7:0]Q;
  output [2:0]\reg_data_addr_reg[2]_0 ;
  output [0:0]E;
  output [0:0]\reg_data_addr_reg[3]_0 ;
  output [0:0]\reg_data_addr_reg[3]_1 ;
  output [0:0]\reg_data_addr_reg[3]_2 ;
  output [0:0]\reg_data_addr_reg[3]_3 ;
  output [0:0]\reg_data_addr_reg[3]_4 ;
  output [0:0]reg_write_reg_0;
  input CLK;
  input sda_out_reg_0;
  input sda_IBUF;
  input run_ppt_reg;
  input [7:0]\data_out_reg[7]_0 ;
  input \data_out_reg[7]_1 ;
  input \data_out_reg[6]_0 ;
  input \data_out_reg[5]_0 ;
  input \data_out_reg[4]_0 ;
  input \data_out_reg[3]_0 ;
  input \data_out_reg[2]_0 ;
  input \data_out_reg[1]_0 ;
  input \data_out_reg[0]_0 ;
  input \data_out_reg[0]_1 ;
  input DONE;
  input [3:0]sw_IBUF;

  wire \<const1> ;
  wire CLK;
  wire DONE;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [7:0]Q;
  wire RUN_i_2_n_0;
  wire \bit_count[0]_i_1_n_0 ;
  wire \bit_count[0]_i_2_n_0 ;
  wire \bit_count[0]_i_3_n_0 ;
  wire \bit_count[1]_i_1_n_0 ;
  wire \bit_count[1]_i_2_n_0 ;
  wire \bit_count[2]_i_1_n_0 ;
  wire \bit_count[2]_i_2_n_0 ;
  wire \bit_count[2]_i_3_n_0 ;
  wire \bit_count[2]_i_4_n_0 ;
  wire \bit_count[2]_i_5_n_0 ;
  wire \bit_count[2]_i_6_n_0 ;
  wire \bit_count[2]_i_7_n_0 ;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire \bit_count_reg_n_0_[2] ;
  wire [7:1]data_in;
  wire \data_in[0]_i_1_n_0 ;
  wire \data_in[0]_i_2_n_0 ;
  wire \data_in[1]_i_1_n_0 ;
  wire \data_in[1]_i_2_n_0 ;
  wire \data_in[2]_i_1_n_0 ;
  wire \data_in[2]_i_2_n_0 ;
  wire \data_in[3]_i_1_n_0 ;
  wire \data_in[3]_i_2_n_0 ;
  wire \data_in[4]_i_1_n_0 ;
  wire \data_in[4]_i_2_n_0 ;
  wire \data_in[5]_i_1_n_0 ;
  wire \data_in[5]_i_2_n_0 ;
  wire \data_in[6]_i_1_n_0 ;
  wire \data_in[6]_i_2_n_0 ;
  wire \data_in[7]_i_1_n_0 ;
  wire \data_in[7]_i_2_n_0 ;
  wire [7:0]data_out;
  wire \data_out[0]_i_2_n_0 ;
  wire data_out_0;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[0]_1 ;
  wire \data_out_reg[1]_0 ;
  wire \data_out_reg[2]_0 ;
  wire \data_out_reg[3]_0 ;
  wire \data_out_reg[4]_0 ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[6]_0 ;
  wire [7:0]\data_out_reg[7]_0 ;
  wire \data_out_reg[7]_1 ;
  wire [7:0]p_0_out;
  wire p_1_in;
  wire reg_addr_or_data_i_1_n_0;
  wire reg_addr_or_data_reg_n_0;
  wire [3:3]reg_data_addr;
  wire \reg_data_addr[3]_i_1_n_0 ;
  wire [2:0]\reg_data_addr_reg[2]_0 ;
  wire [0:0]\reg_data_addr_reg[3]_0 ;
  wire [0:0]\reg_data_addr_reg[3]_1 ;
  wire [0:0]\reg_data_addr_reg[3]_2 ;
  wire [0:0]\reg_data_addr_reg[3]_3 ;
  wire [0:0]\reg_data_addr_reg[3]_4 ;
  wire \reg_data_out[7]_i_1_n_0 ;
  wire \reg_data_out_reg[0]_0 ;
  wire reg_write;
  wire [0:0]reg_write_reg_0;
  wire run_ppt_reg;
  wire sda_IBUF;
  wire sda_OBUF;
  wire sda_out_i_10_n_0;
  wire sda_out_i_1_n_0;
  wire sda_out_i_2_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire sda_out_i_6_n_0;
  wire sda_out_i_8_n_0;
  wire sda_out_i_9_n_0;
  wire sda_out_reg_0;
  wire sda_out_reg_i_7_n_0;
  wire start_pattern;
  wire stop_pattern;
  wire [3:0]sw_IBUF;

  LUT5 #(
    .INIT(32'h00010000)) 
    \CLK_DIV[4]_i_1 
       (.I0(reg_data_addr),
        .I1(\reg_data_addr_reg[2]_0 [1]),
        .I2(\reg_data_addr_reg[2]_0 [0]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_write),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_DONE_L[7]_i_1 
       (.I0(reg_write),
        .O(reg_write_reg_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    \COUNT_L[7]_i_1 
       (.I0(reg_data_addr),
        .I1(\reg_data_addr_reg[2]_0 [1]),
        .I2(\reg_data_addr_reg[2]_0 [0]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_write),
        .O(\reg_data_addr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F444F444F44)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(data_out_0),
        .I2(start_pattern),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(stop_pattern),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FFFFFE00FE00)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(data_out_0),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(start_pattern),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(data_out_0),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state[2]_i_3_n_0 ),
        .I1(\FSM_onehot_state[2]_i_4_n_0 ),
        .I2(data_in[5]),
        .I3(data_in[6]),
        .I4(data_in[7]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h66F666F6FFFF66F6)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(sw_IBUF[3]),
        .I1(data_in[4]),
        .I2(sw_IBUF[0]),
        .I3(data_in[1]),
        .I4(sw_IBUF[2]),
        .I5(data_in[3]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h66F666F6FFFF66F6)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(sw_IBUF[1]),
        .I1(data_in[2]),
        .I2(data_in[1]),
        .I3(sw_IBUF[0]),
        .I4(data_in[3]),
        .I5(sw_IBUF[2]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4544555545444544)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(start_pattern),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(p_1_in),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[6]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(start_pattern),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008F88)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_1_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(start_pattern),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00F40044)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(stop_pattern),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .I3(start_pattern),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\bit_count_reg_n_0_[2] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:0000100,READ:0100000,ACK_DATA:0010000,WRITE:0001000,IDLE:0000001,STOPorSTART:1000000,ADDR:0000010" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(sda_out_reg_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:0000100,READ:0100000,ACK_DATA:0010000,WRITE:0001000,IDLE:0000001,STOPorSTART:1000000,ADDR:0000010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(data_out_0));
  (* FSM_ENCODED_STATES = "ACK_ADDR:0000100,READ:0100000,ACK_DATA:0010000,WRITE:0001000,IDLE:0000001,STOPorSTART:1000000,ADDR:0000010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:0000100,READ:0100000,ACK_DATA:0010000,WRITE:0001000,IDLE:0000001,STOPorSTART:1000000,ADDR:0000010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:0000100,READ:0100000,ACK_DATA:0010000,WRITE:0001000,IDLE:0000001,STOPorSTART:1000000,ADDR:0000010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:0000100,READ:0100000,ACK_DATA:0010000,WRITE:0001000,IDLE:0000001,STOPorSTART:1000000,ADDR:0000010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "ACK_ADDR:0000100,READ:0100000,ACK_DATA:0010000,WRITE:0001000,IDLE:0000001,STOPorSTART:1000000,ADDR:0000010" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \PERIOD_H[5]_i_1 
       (.I0(reg_data_addr),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_write),
        .O(\reg_data_addr_reg[3]_2 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \PERIOD_L[7]_i_1 
       (.I0(reg_data_addr),
        .I1(\reg_data_addr_reg[2]_0 [1]),
        .I2(\reg_data_addr_reg[2]_0 [0]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_write),
        .O(\reg_data_addr_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    RUN_i_1
       (.I0(Q[0]),
        .I1(reg_data_addr),
        .I2(RUN_i_2_n_0),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_write),
        .I5(run_ppt_reg),
        .O(\reg_data_out_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    RUN_i_2
       (.I0(\reg_data_addr_reg[2]_0 [0]),
        .I1(\reg_data_addr_reg[2]_0 [1]),
        .O(RUN_i_2_n_0));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \WIDTH_H[5]_i_1 
       (.I0(reg_data_addr),
        .I1(\reg_data_addr_reg[2]_0 [1]),
        .I2(\reg_data_addr_reg[2]_0 [0]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_write),
        .O(\reg_data_addr_reg[3]_4 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \WIDTH_L[7]_i_1 
       (.I0(reg_data_addr),
        .I1(\reg_data_addr_reg[2]_0 [1]),
        .I2(\reg_data_addr_reg[2]_0 [0]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_write),
        .O(\reg_data_addr_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hA8A8A8FFFFAAFF00)) 
    \bit_count[0]_i_1 
       (.I0(\bit_count[0]_i_2_n_0 ),
        .I1(\bit_count[0]_i_3_n_0 ),
        .I2(start_pattern),
        .I3(\bit_count[2]_i_4_n_0 ),
        .I4(\bit_count[2]_i_5_n_0 ),
        .I5(\bit_count_reg_n_0_[0] ),
        .O(\bit_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \bit_count[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_pattern),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\bit_count[0]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bit_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \bit_count[0]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(start_pattern),
        .I2(stop_pattern),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\bit_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count[2]_i_3_n_0 ),
        .I1(\FSM_onehot_state[2]_i_1_n_0 ),
        .I2(\bit_count[1]_i_2_n_0 ),
        .I3(\bit_count[2]_i_4_n_0 ),
        .I4(\bit_count[2]_i_5_n_0 ),
        .I5(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFA00000000FFF8)) 
    \bit_count[1]_i_2 
       (.I0(data_out_0),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\bit_count[2]_i_6_n_0 ),
        .I4(\bit_count_reg_n_0_[0] ),
        .I5(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count[2]_i_2_n_0 ),
        .I1(\bit_count[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state[2]_i_1_n_0 ),
        .I3(\bit_count[2]_i_4_n_0 ),
        .I4(\bit_count[2]_i_5_n_0 ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFE00000000FC)) 
    \bit_count[2]_i_2 
       (.I0(data_out_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\bit_count[2]_i_6_n_0 ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\bit_count_reg_n_0_[0] ),
        .I5(\bit_count_reg_n_0_[2] ),
        .O(\bit_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    \bit_count[2]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\bit_count[0]_i_3_n_0 ),
        .I5(start_pattern),
        .O(\bit_count[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA2)) 
    \bit_count[2]_i_4 
       (.I0(data_out_0),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\bit_count_reg_n_0_[0] ),
        .I4(\bit_count_reg_n_0_[1] ),
        .O(\bit_count[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFEFFFEFFFAA)) 
    \bit_count[2]_i_5 
       (.I0(\bit_count[2]_i_7_n_0 ),
        .I1(start_pattern),
        .I2(\FSM_onehot_state[6]_i_3_n_0 ),
        .I3(\bit_count[0]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bit_count[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \bit_count[2]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(stop_pattern),
        .I4(start_pattern),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\bit_count[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFC88)) 
    \bit_count[2]_i_7 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_pattern),
        .I2(p_1_in),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bit_count[2]_i_7_n_0 ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_count[0]_i_1_n_0 ),
        .PRE(sda_out_reg_0),
        .Q(\bit_count_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_count[1]_i_1_n_0 ),
        .PRE(sda_out_reg_0),
        .Q(\bit_count_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \bit_count_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\bit_count[2]_i_1_n_0 ),
        .PRE(sda_out_reg_0),
        .Q(\bit_count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[0]_i_1 
       (.I0(\data_in[0]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(sda_IBUF),
        .O(\data_in[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01010100)) 
    \data_in[0]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(data_out_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\data_in[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[1]_i_1 
       (.I0(\data_in[1]_i_2_n_0 ),
        .I1(data_in[1]),
        .I2(sda_IBUF),
        .O(\data_in[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004440)) 
    \data_in[1]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(data_out_0),
        .I4(\bit_count_reg_n_0_[2] ),
        .O(\data_in[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[2]_i_1 
       (.I0(\data_in[2]_i_2_n_0 ),
        .I1(data_in[2]),
        .I2(sda_IBUF),
        .O(\data_in[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004440)) 
    \data_in[2]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(data_out_0),
        .I4(\bit_count_reg_n_0_[2] ),
        .O(\data_in[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[3]_i_1 
       (.I0(\data_in[3]_i_2_n_0 ),
        .I1(data_in[3]),
        .I2(sda_IBUF),
        .O(\data_in[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008880)) 
    \data_in[3]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(data_out_0),
        .I4(\bit_count_reg_n_0_[2] ),
        .O(\data_in[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[4]_i_1 
       (.I0(\data_in[4]_i_2_n_0 ),
        .I1(data_in[4]),
        .I2(sda_IBUF),
        .O(\data_in[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10101000)) 
    \data_in[4]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(data_out_0),
        .O(\data_in[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[5]_i_1 
       (.I0(\data_in[5]_i_2_n_0 ),
        .I1(data_in[5]),
        .I2(sda_IBUF),
        .O(\data_in[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40404000)) 
    \data_in[5]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(data_out_0),
        .O(\data_in[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[6]_i_1 
       (.I0(\data_in[6]_i_2_n_0 ),
        .I1(data_in[6]),
        .I2(sda_IBUF),
        .O(\data_in[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40404000)) 
    \data_in[6]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(data_out_0),
        .O(\data_in[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \data_in[7]_i_1 
       (.I0(\data_in[7]_i_2_n_0 ),
        .I1(data_in[7]),
        .I2(sda_IBUF),
        .O(\data_in[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \data_in[7]_i_2 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(\bit_count_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(data_out_0),
        .O(\data_in[7]_i_2_n_0 ));
  FDCE \data_in_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[0]_i_1_n_0 ),
        .Q(p_1_in));
  FDCE \data_in_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[1]_i_1_n_0 ),
        .Q(data_in[1]));
  FDCE \data_in_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[2]_i_1_n_0 ),
        .Q(data_in[2]));
  FDCE \data_in_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[3]_i_1_n_0 ),
        .Q(data_in[3]));
  FDCE \data_in_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[4]_i_1_n_0 ),
        .Q(data_in[4]));
  FDCE \data_in_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[5]_i_1_n_0 ),
        .Q(data_in[5]));
  FDCE \data_in_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[6]_i_1_n_0 ),
        .Q(data_in[6]));
  FDCE \data_in_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\data_in[7]_i_1_n_0 ),
        .Q(data_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_out[0]_i_1 
       (.I0(\data_out[0]_i_2_n_0 ),
        .I1(reg_data_addr),
        .I2(\data_out_reg[0]_0 ),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(\data_out_reg[0]_1 ),
        .O(p_0_out[0]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \data_out[0]_i_2 
       (.I0(\reg_data_addr_reg[2]_0 [0]),
        .I1(\data_out_reg[7]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(DONE),
        .I4(\reg_data_addr_reg[2]_0 [2]),
        .O(\data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \data_out[1]_i_1 
       (.I0(\data_out_reg[7]_0 [1]),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_data_addr),
        .I5(\data_out_reg[1]_0 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \data_out[2]_i_1 
       (.I0(\data_out_reg[7]_0 [2]),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_data_addr),
        .I5(\data_out_reg[2]_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \data_out[3]_i_1 
       (.I0(\data_out_reg[7]_0 [3]),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_data_addr),
        .I5(\data_out_reg[3]_0 ),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \data_out[4]_i_1 
       (.I0(\data_out_reg[7]_0 [4]),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_data_addr),
        .I5(\data_out_reg[4]_0 ),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \data_out[5]_i_1 
       (.I0(\data_out_reg[7]_0 [5]),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_data_addr),
        .I5(\data_out_reg[5]_0 ),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \data_out[6]_i_1 
       (.I0(\data_out_reg[7]_0 [6]),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_data_addr),
        .I5(\data_out_reg[6]_0 ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \data_out[7]_i_1 
       (.I0(\data_out_reg[7]_0 [7]),
        .I1(\reg_data_addr_reg[2]_0 [0]),
        .I2(\reg_data_addr_reg[2]_0 [1]),
        .I3(\reg_data_addr_reg[2]_0 [2]),
        .I4(reg_data_addr),
        .I5(\data_out_reg[7]_1 ),
        .O(p_0_out[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[0]),
        .Q(data_out[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[1]),
        .Q(data_out[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[2]),
        .Q(data_out[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[3]),
        .Q(data_out[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[4]),
        .Q(data_out[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[5]),
        .Q(data_out[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[6]),
        .Q(data_out[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(data_out_0),
        .CLR(sda_out_reg_0),
        .D(p_0_out[7]),
        .Q(data_out[7]));
  LUT3 #(
    .INIT(8'h14)) 
    reg_addr_or_data_i_1
       (.I0(data_out_0),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(reg_addr_or_data_reg_n_0),
        .O(reg_addr_or_data_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    reg_addr_or_data_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(reg_addr_or_data_i_1_n_0),
        .Q(reg_addr_or_data_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_data_addr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(reg_addr_or_data_reg_n_0),
        .O(\reg_data_addr[3]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[0] 
       (.C(CLK),
        .CE(\reg_data_addr[3]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(p_1_in),
        .Q(\reg_data_addr_reg[2]_0 [0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[1] 
       (.C(CLK),
        .CE(\reg_data_addr[3]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[1]),
        .Q(\reg_data_addr_reg[2]_0 [1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[2] 
       (.C(CLK),
        .CE(\reg_data_addr[3]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[2]),
        .Q(\reg_data_addr_reg[2]_0 [2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_addr_reg[3] 
       (.C(CLK),
        .CE(\reg_data_addr[3]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[3]),
        .Q(reg_data_addr));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_data_out[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(reg_addr_or_data_reg_n_0),
        .O(\reg_data_out[7]_i_1_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[0] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(p_1_in),
        .Q(Q[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[1] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[1]),
        .Q(Q[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[2] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[2]),
        .Q(Q[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[3] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[3]),
        .Q(Q[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[4] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[4]),
        .Q(Q[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[5] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[5]),
        .Q(Q[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[6] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[6]),
        .Q(Q[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \reg_data_out_reg[7] 
       (.C(CLK),
        .CE(\reg_data_out[7]_i_1_n_0 ),
        .CLR(sda_out_reg_0),
        .D(data_in[7]),
        .Q(Q[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    reg_write_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(\reg_data_out[7]_i_1_n_0 ),
        .Q(reg_write));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    sda_out_i_1
       (.I0(sda_out_i_2_n_0),
        .I1(sda_out_i_3_n_0),
        .I2(sda_out_i_4_n_0),
        .I3(sda_out_i_5_n_0),
        .I4(sda_out_i_6_n_0),
        .I5(sda_OBUF),
        .O(sda_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_out_i_10
       (.I0(data_out[7]),
        .I1(data_out[6]),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(data_out[5]),
        .I4(\bit_count_reg_n_0_[0] ),
        .I5(data_out[4]),
        .O(sda_out_i_10_n_0));
  LUT4 #(
    .INIT(16'hAA8A)) 
    sda_out_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(sda_out_reg_i_7_n_0),
        .I2(p_1_in),
        .I3(start_pattern),
        .O(sda_out_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    sda_out_i_3
       (.I0(data_out_0),
        .I1(\bit_count_reg_n_0_[2] ),
        .I2(\bit_count_reg_n_0_[0] ),
        .I3(\bit_count_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(sda_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    sda_out_i_4
       (.I0(\FSM_onehot_state[6]_i_3_n_0 ),
        .I1(start_pattern),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(sda_out_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sda_out_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(sda_out_reg_i_7_n_0),
        .O(sda_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sda_out_i_6
       (.I0(data_out_0),
        .I1(sda_out_i_8_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(sda_out_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sda_out_i_8
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(sda_out_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_out_i_9
       (.I0(data_out[3]),
        .I1(data_out[2]),
        .I2(\bit_count_reg_n_0_[1] ),
        .I3(data_out[1]),
        .I4(\bit_count_reg_n_0_[0] ),
        .I5(data_out[0]),
        .O(sda_out_i_9_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sda_out_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(sda_out_i_1_n_0),
        .PRE(sda_out_reg_0),
        .Q(sda_OBUF));
  MUXF7 sda_out_reg_i_7
       (.I0(sda_out_i_9_n_0),
        .I1(sda_out_i_10_n_0),
        .O(sda_out_reg_i_7_n_0),
        .S(\bit_count_reg_n_0_[2] ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    start_pattern_reg
       (.C(sda_IBUF),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(CLK),
        .Q(start_pattern));
  FDCE stop_pattern_reg
       (.C(sda_IBUF),
        .CE(\<const1> ),
        .CLR(sda_out_reg_0),
        .D(CLK),
        .Q(stop_pattern));
endmodule

module pulse_counter
   (done,
    Q,
    \pulse_count_reg[3]_0 ,
    \pulse_count_reg[4]_0 ,
    \pulse_count_reg[5]_0 ,
    \pulse_count_reg[6]_0 ,
    \pulse_count_reg[7]_0 ,
    \pulse_count_reg[1]_0 ,
    \pulse_count_reg[2]_0 ,
    prev_pulse_reg_0,
    div_clk,
    prev_pulse_reg_1,
    sw_IBUF,
    I2C_active,
    run_ppt_reg,
    D);
  output done;
  output [7:0]Q;
  output \pulse_count_reg[3]_0 ;
  output \pulse_count_reg[4]_0 ;
  output \pulse_count_reg[5]_0 ;
  output \pulse_count_reg[6]_0 ;
  output \pulse_count_reg[7]_0 ;
  output \pulse_count_reg[1]_0 ;
  output \pulse_count_reg[2]_0 ;
  input prev_pulse_reg_0;
  input div_clk;
  input prev_pulse_reg_1;
  input [1:0]sw_IBUF;
  input I2C_active;
  input run_ppt_reg;
  input [7:0]D;

  wire \<const1> ;
  wire [7:0]D;
  wire I2C_active;
  wire [7:0]Q;
  wire div_clk;
  wire done;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire prev_pulse;
  wire prev_pulse_reg_0;
  wire prev_pulse_reg_1;
  wire \pulse_count[6]_i_3_n_0 ;
  wire \pulse_count[7]_i_1_n_0 ;
  wire \pulse_count[7]_i_3_n_0 ;
  wire \pulse_count[7]_i_5_n_0 ;
  wire \pulse_count[7]_i_6_n_0 ;
  wire \pulse_count[7]_i_7_n_0 ;
  wire \pulse_count_reg[1]_0 ;
  wire \pulse_count_reg[2]_0 ;
  wire \pulse_count_reg[3]_0 ;
  wire \pulse_count_reg[4]_0 ;
  wire \pulse_count_reg[5]_0 ;
  wire \pulse_count_reg[6]_0 ;
  wire \pulse_count_reg[7]_0 ;
  wire run_ppt_reg;
  wire [1:0]sw_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFA0A0000C8080000)) 
    done_i_1
       (.I0(sw_IBUF[0]),
        .I1(done_i_2_n_0),
        .I2(I2C_active),
        .I3(run_ppt_reg),
        .I4(sw_IBUF[1]),
        .I5(done),
        .O(done_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    done_i_2
       (.I0(Q[6]),
        .I1(\pulse_count[7]_i_7_n_0 ),
        .I2(Q[7]),
        .O(done_i_2_n_0));
  FDCE done_reg
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(prev_pulse_reg_1),
        .D(done_i_1_n_0),
        .Q(done));
  FDCE prev_pulse_reg
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(prev_pulse_reg_1),
        .D(prev_pulse_reg_0),
        .Q(prev_pulse));
  LUT2 #(
    .INIT(4'h9)) 
    \pulse_count[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\pulse_count_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \pulse_count[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\pulse_count_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \pulse_count[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\pulse_count_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \pulse_count[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\pulse_count_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \pulse_count[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\pulse_count_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA9AA)) 
    \pulse_count[6]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\pulse_count[6]_i_3_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\pulse_count_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pulse_count[6]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\pulse_count[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCDFDFFFF)) 
    \pulse_count[7]_i_1 
       (.I0(sw_IBUF[0]),
        .I1(\pulse_count[7]_i_3_n_0 ),
        .I2(I2C_active),
        .I3(run_ppt_reg),
        .I4(sw_IBUF[1]),
        .O(\pulse_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0F0F0E2)) 
    \pulse_count[7]_i_3 
       (.I0(\pulse_count[7]_i_5_n_0 ),
        .I1(Q[5]),
        .I2(prev_pulse_reg_0),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(prev_pulse),
        .O(\pulse_count[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hCCB8)) 
    \pulse_count[7]_i_4 
       (.I0(\pulse_count[7]_i_6_n_0 ),
        .I1(Q[7]),
        .I2(\pulse_count[7]_i_7_n_0 ),
        .I3(Q[6]),
        .O(\pulse_count_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \pulse_count[7]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(prev_pulse_reg_0),
        .O(\pulse_count[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pulse_count[7]_i_6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\pulse_count[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_count[7]_i_7 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\pulse_count[7]_i_7_n_0 ));
  FDCE \pulse_count_reg[0] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .CLR(prev_pulse_reg_1),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \pulse_count_reg[1] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .CLR(prev_pulse_reg_1),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \pulse_count_reg[2] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .CLR(prev_pulse_reg_1),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \pulse_count_reg[3] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .CLR(prev_pulse_reg_1),
        .D(D[3]),
        .Q(Q[3]));
  FDPE \pulse_count_reg[4] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .D(D[4]),
        .PRE(prev_pulse_reg_1),
        .Q(Q[4]));
  FDCE \pulse_count_reg[5] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .CLR(prev_pulse_reg_1),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \pulse_count_reg[6] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .CLR(prev_pulse_reg_1),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \pulse_count_reg[7] 
       (.C(div_clk),
        .CE(\pulse_count[7]_i_1_n_0 ),
        .CLR(prev_pulse_reg_1),
        .D(D[7]),
        .Q(Q[7]));
endmodule

module pulse_generator
   (seg_OBUF,
    CO,
    \counter_reg[13]_0 ,
    Q,
    counter0,
    pulse_active,
    div_clk,
    pulse_active_reg_0,
    E,
    D,
    \pulse_period_r_reg[13]_0 ,
    \counter_reg[13]_1 ,
    .lopt(pulse_active_reg_lopt_replica_1),
    .lopt_1(pulse_active_reg_lopt_replica_2_1));
  output [1:0]seg_OBUF;
  output [0:0]CO;
  output [0:0]\counter_reg[13]_0 ;
  output [0:0]Q;
  output [12:0]counter0;
  input pulse_active;
  input div_clk;
  input pulse_active_reg_0;
  input [0:0]E;
  input [13:0]D;
  input [13:0]\pulse_period_r_reg[13]_0 ;
  input [13:0]\counter_reg[13]_1 ;
  output pulse_active_reg_lopt_replica_1;
  output pulse_active_reg_lopt_replica_2_1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]CO;
  wire [13:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [12:0]counter0;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_i_5_n_0;
  wire counter1_carry__0_i_6_n_0;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_i_5_n_0;
  wire counter1_carry_i_6_n_0;
  wire counter1_carry_i_7_n_0;
  wire counter1_carry_i_8_n_0;
  wire counter1_carry_n_0;
  wire \counter1_inferred__0/i__carry_n_0 ;
  wire \counter_reg[12]_i_2_n_0 ;
  wire [0:0]\counter_reg[13]_0 ;
  wire [13:0]\counter_reg[13]_1 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire div_clk;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire pulse_active;
  wire pulse_active_reg_0;
  wire pulse_active_reg_lopt_replica_1;
  wire pulse_active_reg_lopt_replica_2_1;
  wire [13:0]pulse_period_r;
  wire [13:0]\pulse_period_r_reg[13]_0 ;
  wire [13:0]pulse_width_r;
  wire [1:0]seg_OBUF;
  wire [3:0]NLW_counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_counter1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[4]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_2_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter1_carry
       (.CI(\<const0> ),
        .CO({counter1_carry_n_0,NLW_counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}),
        .S({counter1_carry_i_5_n_0,counter1_carry_i_6_n_0,counter1_carry_i_7_n_0,counter1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({CO,NLW_counter1_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0}),
        .S({\<const0> ,counter1_carry__0_i_4_n_0,counter1_carry__0_i_5_n_0,counter1_carry__0_i_6_n_0}));
  LUT4 #(
    .INIT(16'h7510)) 
    counter1_carry__0_i_1
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(pulse_period_r[12]),
        .I3(pulse_period_r[13]),
        .O(counter1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    counter1_carry__0_i_2
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(pulse_period_r[10]),
        .I3(pulse_period_r[11]),
        .O(counter1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    counter1_carry__0_i_3
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(pulse_period_r[8]),
        .I3(pulse_period_r[9]),
        .O(counter1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    counter1_carry__0_i_4
       (.I0(\counter_reg_n_0_[13] ),
        .I1(pulse_period_r[12]),
        .I2(\counter_reg_n_0_[12] ),
        .I3(pulse_period_r[13]),
        .O(counter1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    counter1_carry__0_i_5
       (.I0(\counter_reg_n_0_[11] ),
        .I1(pulse_period_r[10]),
        .I2(\counter_reg_n_0_[10] ),
        .I3(pulse_period_r[11]),
        .O(counter1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    counter1_carry__0_i_6
       (.I0(\counter_reg_n_0_[9] ),
        .I1(pulse_period_r[8]),
        .I2(\counter_reg_n_0_[8] ),
        .I3(pulse_period_r[9]),
        .O(counter1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    counter1_carry_i_1
       (.I0(pulse_period_r[7]),
        .I1(\counter_reg_n_0_[6] ),
        .I2(pulse_period_r[6]),
        .I3(\counter_reg_n_0_[7] ),
        .O(counter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    counter1_carry_i_2
       (.I0(pulse_period_r[5]),
        .I1(\counter_reg_n_0_[4] ),
        .I2(pulse_period_r[4]),
        .I3(\counter_reg_n_0_[5] ),
        .O(counter1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    counter1_carry_i_3
       (.I0(pulse_period_r[3]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(pulse_period_r[2]),
        .I3(\counter_reg_n_0_[3] ),
        .O(counter1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    counter1_carry_i_4
       (.I0(Q),
        .I1(pulse_period_r[0]),
        .I2(pulse_period_r[1]),
        .I3(\counter_reg_n_0_[1] ),
        .O(counter1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    counter1_carry_i_5
       (.I0(pulse_period_r[7]),
        .I1(pulse_period_r[6]),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .O(counter1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    counter1_carry_i_6
       (.I0(pulse_period_r[5]),
        .I1(pulse_period_r[4]),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .O(counter1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    counter1_carry_i_7
       (.I0(pulse_period_r[3]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(pulse_period_r[2]),
        .I3(\counter_reg_n_0_[3] ),
        .O(counter1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    counter1_carry_i_8
       (.I0(pulse_period_r[0]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(pulse_period_r[1]),
        .I3(Q),
        .O(counter1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter1_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\counter1_inferred__0/i__carry_n_0 ,\NLW_counter1_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter1_inferred__0/i__carry__0 
       (.CI(\counter1_inferred__0/i__carry_n_0 ),
        .CO({\counter_reg[13]_0 ,\NLW_counter1_inferred__0/i__carry__0_CO_UNCONNECTED [1:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}),
        .S({\<const0> ,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  FDCE \counter_reg[0] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [0]),
        .Q(Q));
  FDCE \counter_reg[10] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE \counter_reg[11] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE \counter_reg[12] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [12]),
        .Q(\counter_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\NLW_counter_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(counter0[11:8]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDCE \counter_reg[13] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [13]),
        .Q(\counter_reg_n_0_[13] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[13]_i_4 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(counter0[12]),
        .S({\<const0> ,\<const0> ,\<const0> ,\counter_reg_n_0_[13] }));
  FDCE \counter_reg[1] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE \counter_reg[2] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE \counter_reg[3] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE \counter_reg[4] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [4]),
        .Q(\counter_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\counter_reg[4]_i_2_n_0 ,\NLW_counter_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(Q),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(counter0[3:0]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDCE \counter_reg[5] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE \counter_reg[6] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE \counter_reg[7] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE \counter_reg[8] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [8]),
        .Q(\counter_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\NLW_counter_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(counter0[7:4]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDCE \counter_reg[9] 
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(\counter_reg[13]_1 [9]),
        .Q(\counter_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h7510)) 
    i__carry__0_i_1
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(pulse_width_r[12]),
        .I3(pulse_width_r[13]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    i__carry__0_i_2
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(pulse_width_r[10]),
        .I3(pulse_width_r[11]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    i__carry__0_i_3
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(pulse_width_r[8]),
        .I3(pulse_width_r[9]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_4
       (.I0(\counter_reg_n_0_[13] ),
        .I1(pulse_width_r[12]),
        .I2(\counter_reg_n_0_[12] ),
        .I3(pulse_width_r[13]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_5
       (.I0(\counter_reg_n_0_[11] ),
        .I1(pulse_width_r[10]),
        .I2(\counter_reg_n_0_[10] ),
        .I3(pulse_width_r[11]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry__0_i_6
       (.I0(\counter_reg_n_0_[9] ),
        .I1(pulse_width_r[8]),
        .I2(\counter_reg_n_0_[8] ),
        .I3(pulse_width_r[9]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry_i_1
       (.I0(pulse_width_r[7]),
        .I1(\counter_reg_n_0_[6] ),
        .I2(pulse_width_r[6]),
        .I3(\counter_reg_n_0_[7] ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry_i_2
       (.I0(pulse_width_r[5]),
        .I1(\counter_reg_n_0_[4] ),
        .I2(pulse_width_r[4]),
        .I3(\counter_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    i__carry_i_3
       (.I0(pulse_width_r[3]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(pulse_width_r[2]),
        .I3(\counter_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_4
       (.I0(Q),
        .I1(pulse_width_r[0]),
        .I2(pulse_width_r[1]),
        .I3(\counter_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_5
       (.I0(pulse_width_r[7]),
        .I1(pulse_width_r[6]),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[7] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_6
       (.I0(pulse_width_r[5]),
        .I1(\counter_reg_n_0_[4] ),
        .I2(pulse_width_r[4]),
        .I3(\counter_reg_n_0_[5] ),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_7
       (.I0(pulse_width_r[3]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(pulse_width_r[2]),
        .I3(\counter_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    i__carry_i_8
       (.I0(pulse_width_r[0]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(pulse_width_r[1]),
        .I3(Q),
        .O(i__carry_i_8_n_0));
  FDCE pulse_active_reg
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(pulse_active),
        .Q(seg_OBUF[1]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    pulse_active_reg_lopt_replica
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(pulse_active),
        .Q(pulse_active_reg_lopt_replica_1));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    pulse_active_reg_lopt_replica_2
       (.C(div_clk),
        .CE(\<const1> ),
        .CLR(pulse_active_reg_0),
        .D(pulse_active),
        .Q(pulse_active_reg_lopt_replica_2_1));
  FDCE \pulse_period_r_reg[0] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [0]),
        .Q(pulse_period_r[0]));
  FDCE \pulse_period_r_reg[10] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [10]),
        .Q(pulse_period_r[10]));
  FDCE \pulse_period_r_reg[11] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [11]),
        .Q(pulse_period_r[11]));
  FDCE \pulse_period_r_reg[12] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [12]),
        .Q(pulse_period_r[12]));
  FDCE \pulse_period_r_reg[13] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [13]),
        .Q(pulse_period_r[13]));
  FDCE \pulse_period_r_reg[1] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [1]),
        .Q(pulse_period_r[1]));
  FDCE \pulse_period_r_reg[2] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [2]),
        .Q(pulse_period_r[2]));
  FDCE \pulse_period_r_reg[3] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [3]),
        .Q(pulse_period_r[3]));
  FDCE \pulse_period_r_reg[4] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [4]),
        .Q(pulse_period_r[4]));
  FDCE \pulse_period_r_reg[5] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [5]),
        .Q(pulse_period_r[5]));
  FDCE \pulse_period_r_reg[6] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [6]),
        .Q(pulse_period_r[6]));
  FDPE \pulse_period_r_reg[7] 
       (.C(div_clk),
        .CE(E),
        .D(\pulse_period_r_reg[13]_0 [7]),
        .PRE(pulse_active_reg_0),
        .Q(pulse_period_r[7]));
  FDCE \pulse_period_r_reg[8] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [8]),
        .Q(pulse_period_r[8]));
  FDCE \pulse_period_r_reg[9] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(\pulse_period_r_reg[13]_0 [9]),
        .Q(pulse_period_r[9]));
  FDPE \pulse_width_r_reg[0] 
       (.C(div_clk),
        .CE(E),
        .D(D[0]),
        .PRE(pulse_active_reg_0),
        .Q(pulse_width_r[0]));
  FDCE \pulse_width_r_reg[10] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[10]),
        .Q(pulse_width_r[10]));
  FDCE \pulse_width_r_reg[11] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[11]),
        .Q(pulse_width_r[11]));
  FDCE \pulse_width_r_reg[12] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[12]),
        .Q(pulse_width_r[12]));
  FDCE \pulse_width_r_reg[13] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[13]),
        .Q(pulse_width_r[13]));
  FDCE \pulse_width_r_reg[1] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[1]),
        .Q(pulse_width_r[1]));
  FDCE \pulse_width_r_reg[2] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[2]),
        .Q(pulse_width_r[2]));
  FDCE \pulse_width_r_reg[3] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[3]),
        .Q(pulse_width_r[3]));
  FDCE \pulse_width_r_reg[4] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[4]),
        .Q(pulse_width_r[4]));
  FDCE \pulse_width_r_reg[5] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[5]),
        .Q(pulse_width_r[5]));
  FDCE \pulse_width_r_reg[6] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[6]),
        .Q(pulse_width_r[6]));
  FDCE \pulse_width_r_reg[7] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[7]),
        .Q(pulse_width_r[7]));
  FDCE \pulse_width_r_reg[8] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[8]),
        .Q(pulse_width_r[8]));
  FDCE \pulse_width_r_reg[9] 
       (.C(div_clk),
        .CE(E),
        .CLR(pulse_active_reg_0),
        .D(D[9]),
        .Q(pulse_width_r[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(seg_OBUF[1]),
        .O(seg_OBUF[0]));
endmodule

module register_map
   (DONE,
    btnC,
    run_ppt_reg,
    RUN_reg_0,
    pulse_active,
    D,
    RUN_reg_1,
    \COUNT_L_reg[7]_0 ,
    \WIDTH_H_reg[5]_0 ,
    \PERIOD_H_reg[5]_0 ,
    \COUNT_L_reg[6]_0 ,
    \WIDTH_H_reg[5]_1 ,
    \WIDTH_H_reg[4]_0 ,
    \CLK_DIV_reg[4]_0 ,
    \WIDTH_H_reg[3]_0 ,
    \WIDTH_H_reg[2]_0 ,
    \WIDTH_H_reg[1]_0 ,
    RUN_reg_2,
    \WIDTH_L_reg[0]_0 ,
    \COUNT_DONE_L_reg[7]_0 ,
    E,
    done,
    CLK,
    RUN_reg_3,
    AR,
    sw_IBUF,
    CO,
    Q,
    counter0,
    I2C_active,
    pulse_active_reg,
    \pulse_count_reg[3] ,
    \pulse_count_reg[4] ,
    \pulse_count_reg[5] ,
    \pulse_count_reg[6] ,
    \pulse_count_reg[7] ,
    \pulse_count_reg[1] ,
    \COUNT_DONE_L_reg[7]_1 ,
    \pulse_count_reg[2] ,
    \data_out_reg[7] ,
    \CLK_DIV_reg[4]_1 ,
    \PERIOD_L_reg[7]_0 ,
    \PERIOD_L_reg[7]_1 ,
    \PERIOD_H_reg[5]_1 ,
    \WIDTH_L_reg[7]_0 ,
    \WIDTH_H_reg[5]_2 ,
    \COUNT_L_reg[7]_1 );
  output DONE;
  output btnC;
  output run_ppt_reg;
  output [13:0]RUN_reg_0;
  output pulse_active;
  output [7:0]D;
  output [0:0]RUN_reg_1;
  output \COUNT_L_reg[7]_0 ;
  output [13:0]\WIDTH_H_reg[5]_0 ;
  output [13:0]\PERIOD_H_reg[5]_0 ;
  output \COUNT_L_reg[6]_0 ;
  output \WIDTH_H_reg[5]_1 ;
  output \WIDTH_H_reg[4]_0 ;
  output [4:0]\CLK_DIV_reg[4]_0 ;
  output \WIDTH_H_reg[3]_0 ;
  output \WIDTH_H_reg[2]_0 ;
  output \WIDTH_H_reg[1]_0 ;
  output RUN_reg_2;
  output \WIDTH_L_reg[0]_0 ;
  output [7:0]\COUNT_DONE_L_reg[7]_0 ;
  input [0:0]E;
  input done;
  input CLK;
  input RUN_reg_3;
  input [0:0]AR;
  input [1:0]sw_IBUF;
  input [0:0]CO;
  input [0:0]Q;
  input [12:0]counter0;
  input I2C_active;
  input [0:0]pulse_active_reg;
  input \pulse_count_reg[3] ;
  input \pulse_count_reg[4] ;
  input \pulse_count_reg[5] ;
  input \pulse_count_reg[6] ;
  input \pulse_count_reg[7] ;
  input \pulse_count_reg[1] ;
  input [7:0]\COUNT_DONE_L_reg[7]_1 ;
  input \pulse_count_reg[2] ;
  input [2:0]\data_out_reg[7] ;
  input [0:0]\CLK_DIV_reg[4]_1 ;
  input [7:0]\PERIOD_L_reg[7]_0 ;
  input [0:0]\PERIOD_L_reg[7]_1 ;
  input [0:0]\PERIOD_H_reg[5]_1 ;
  input [0:0]\WIDTH_L_reg[7]_0 ;
  input [0:0]\WIDTH_H_reg[5]_2 ;
  input [0:0]\COUNT_L_reg[7]_1 ;

  wire \<const1> ;
  wire [0:0]AR;
  wire CLK;
  wire [4:0]\CLK_DIV_reg[4]_0 ;
  wire [0:0]\CLK_DIV_reg[4]_1 ;
  wire [0:0]CO;
  wire [7:0]\COUNT_DONE_L_reg[7]_0 ;
  wire [7:0]\COUNT_DONE_L_reg[7]_1 ;
  wire [7:0]COUNT_L;
  wire \COUNT_L_reg[6]_0 ;
  wire \COUNT_L_reg[7]_0 ;
  wire [0:0]\COUNT_L_reg[7]_1 ;
  wire [7:0]D;
  wire DONE;
  wire [0:0]E;
  wire I2C_active;
  wire [13:0]\PERIOD_H_reg[5]_0 ;
  wire [0:0]\PERIOD_H_reg[5]_1 ;
  wire [7:0]\PERIOD_L_reg[7]_0 ;
  wire [0:0]\PERIOD_L_reg[7]_1 ;
  wire [0:0]Q;
  wire [13:0]RUN_reg_0;
  wire [0:0]RUN_reg_1;
  wire RUN_reg_2;
  wire RUN_reg_3;
  wire \WIDTH_H_reg[1]_0 ;
  wire \WIDTH_H_reg[2]_0 ;
  wire \WIDTH_H_reg[3]_0 ;
  wire \WIDTH_H_reg[4]_0 ;
  wire [13:0]\WIDTH_H_reg[5]_0 ;
  wire \WIDTH_H_reg[5]_1 ;
  wire [0:0]\WIDTH_H_reg[5]_2 ;
  wire \WIDTH_L_reg[0]_0 ;
  wire [0:0]\WIDTH_L_reg[7]_0 ;
  wire btnC;
  wire [12:0]counter0;
  wire \counter[13]_i_2_n_0 ;
  wire \counter[13]_i_3_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[4]_i_3_n_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire [2:0]\data_out_reg[7] ;
  wire done;
  wire pulse_active;
  wire [0:0]pulse_active_reg;
  wire \pulse_count_reg[1] ;
  wire \pulse_count_reg[2] ;
  wire \pulse_count_reg[3] ;
  wire \pulse_count_reg[4] ;
  wire \pulse_count_reg[5] ;
  wire \pulse_count_reg[6] ;
  wire \pulse_count_reg[7] ;
  wire run_ppt_reg;
  wire [1:0]sw_IBUF;

  FDPE \CLK_DIV_reg[0] 
       (.C(CLK),
        .CE(\CLK_DIV_reg[4]_1 ),
        .D(\PERIOD_L_reg[7]_0 [0]),
        .PRE(btnC),
        .Q(\CLK_DIV_reg[4]_0 [0]));
  FDCE \CLK_DIV_reg[1] 
       (.C(CLK),
        .CE(\CLK_DIV_reg[4]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [1]),
        .Q(\CLK_DIV_reg[4]_0 [1]));
  FDCE \CLK_DIV_reg[2] 
       (.C(CLK),
        .CE(\CLK_DIV_reg[4]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [2]),
        .Q(\CLK_DIV_reg[4]_0 [2]));
  FDPE \CLK_DIV_reg[3] 
       (.C(CLK),
        .CE(\CLK_DIV_reg[4]_1 ),
        .D(\PERIOD_L_reg[7]_0 [3]),
        .PRE(btnC),
        .Q(\CLK_DIV_reg[4]_0 [3]));
  FDCE \CLK_DIV_reg[4] 
       (.C(CLK),
        .CE(\CLK_DIV_reg[4]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [4]),
        .Q(\CLK_DIV_reg[4]_0 [4]));
  FDCE \COUNT_DONE_L_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [0]),
        .Q(\COUNT_DONE_L_reg[7]_0 [0]));
  FDCE \COUNT_DONE_L_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [1]),
        .Q(\COUNT_DONE_L_reg[7]_0 [1]));
  FDCE \COUNT_DONE_L_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [2]),
        .Q(\COUNT_DONE_L_reg[7]_0 [2]));
  FDCE \COUNT_DONE_L_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [3]),
        .Q(\COUNT_DONE_L_reg[7]_0 [3]));
  FDCE \COUNT_DONE_L_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [4]),
        .Q(\COUNT_DONE_L_reg[7]_0 [4]));
  FDCE \COUNT_DONE_L_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [5]),
        .Q(\COUNT_DONE_L_reg[7]_0 [5]));
  FDCE \COUNT_DONE_L_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [6]),
        .Q(\COUNT_DONE_L_reg[7]_0 [6]));
  FDCE \COUNT_DONE_L_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(\COUNT_DONE_L_reg[7]_1 [7]),
        .Q(\COUNT_DONE_L_reg[7]_0 [7]));
  FDCE \COUNT_L_reg[0] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [0]),
        .Q(COUNT_L[0]));
  FDCE \COUNT_L_reg[1] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [1]),
        .Q(COUNT_L[1]));
  FDCE \COUNT_L_reg[2] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [2]),
        .Q(COUNT_L[2]));
  FDCE \COUNT_L_reg[3] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [3]),
        .Q(COUNT_L[3]));
  FDPE \COUNT_L_reg[4] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .D(\PERIOD_L_reg[7]_0 [4]),
        .PRE(btnC),
        .Q(COUNT_L[4]));
  FDCE \COUNT_L_reg[5] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [5]),
        .Q(COUNT_L[5]));
  FDCE \COUNT_L_reg[6] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [6]),
        .Q(COUNT_L[6]));
  FDCE \COUNT_L_reg[7] 
       (.C(CLK),
        .CE(\COUNT_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [7]),
        .Q(COUNT_L[7]));
  FDCE DONE_reg
       (.C(CLK),
        .CE(E),
        .CLR(btnC),
        .D(done),
        .Q(DONE));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(AR),
        .I1(sw_IBUF[1]),
        .O(btnC));
  FDCE \PERIOD_H_reg[0] 
       (.C(CLK),
        .CE(\PERIOD_H_reg[5]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [0]),
        .Q(\PERIOD_H_reg[5]_0 [8]));
  FDCE \PERIOD_H_reg[1] 
       (.C(CLK),
        .CE(\PERIOD_H_reg[5]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [1]),
        .Q(\PERIOD_H_reg[5]_0 [9]));
  FDCE \PERIOD_H_reg[2] 
       (.C(CLK),
        .CE(\PERIOD_H_reg[5]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [2]),
        .Q(\PERIOD_H_reg[5]_0 [10]));
  FDCE \PERIOD_H_reg[3] 
       (.C(CLK),
        .CE(\PERIOD_H_reg[5]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [3]),
        .Q(\PERIOD_H_reg[5]_0 [11]));
  FDCE \PERIOD_H_reg[4] 
       (.C(CLK),
        .CE(\PERIOD_H_reg[5]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [4]),
        .Q(\PERIOD_H_reg[5]_0 [12]));
  FDCE \PERIOD_H_reg[5] 
       (.C(CLK),
        .CE(\PERIOD_H_reg[5]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [5]),
        .Q(\PERIOD_H_reg[5]_0 [13]));
  FDCE \PERIOD_L_reg[0] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [0]),
        .Q(\PERIOD_H_reg[5]_0 [0]));
  FDCE \PERIOD_L_reg[1] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [1]),
        .Q(\PERIOD_H_reg[5]_0 [1]));
  FDCE \PERIOD_L_reg[2] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [2]),
        .Q(\PERIOD_H_reg[5]_0 [2]));
  FDCE \PERIOD_L_reg[3] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [3]),
        .Q(\PERIOD_H_reg[5]_0 [3]));
  FDCE \PERIOD_L_reg[4] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [4]),
        .Q(\PERIOD_H_reg[5]_0 [4]));
  FDCE \PERIOD_L_reg[5] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [5]),
        .Q(\PERIOD_H_reg[5]_0 [5]));
  FDCE \PERIOD_L_reg[6] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [6]),
        .Q(\PERIOD_H_reg[5]_0 [6]));
  FDPE \PERIOD_L_reg[7] 
       (.C(CLK),
        .CE(\PERIOD_L_reg[7]_1 ),
        .D(\PERIOD_L_reg[7]_0 [7]),
        .PRE(btnC),
        .Q(\PERIOD_H_reg[5]_0 [7]));
  FDCE RUN_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(btnC),
        .D(RUN_reg_3),
        .Q(run_ppt_reg));
  VCC VCC
       (.P(\<const1> ));
  FDCE \WIDTH_H_reg[0] 
       (.C(CLK),
        .CE(\WIDTH_H_reg[5]_2 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [0]),
        .Q(\WIDTH_H_reg[5]_0 [8]));
  FDCE \WIDTH_H_reg[1] 
       (.C(CLK),
        .CE(\WIDTH_H_reg[5]_2 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [1]),
        .Q(\WIDTH_H_reg[5]_0 [9]));
  FDCE \WIDTH_H_reg[2] 
       (.C(CLK),
        .CE(\WIDTH_H_reg[5]_2 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [2]),
        .Q(\WIDTH_H_reg[5]_0 [10]));
  FDCE \WIDTH_H_reg[3] 
       (.C(CLK),
        .CE(\WIDTH_H_reg[5]_2 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [3]),
        .Q(\WIDTH_H_reg[5]_0 [11]));
  FDCE \WIDTH_H_reg[4] 
       (.C(CLK),
        .CE(\WIDTH_H_reg[5]_2 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [4]),
        .Q(\WIDTH_H_reg[5]_0 [12]));
  FDCE \WIDTH_H_reg[5] 
       (.C(CLK),
        .CE(\WIDTH_H_reg[5]_2 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [5]),
        .Q(\WIDTH_H_reg[5]_0 [13]));
  FDPE \WIDTH_L_reg[0] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .D(\PERIOD_L_reg[7]_0 [0]),
        .PRE(btnC),
        .Q(\WIDTH_H_reg[5]_0 [0]));
  FDCE \WIDTH_L_reg[1] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [1]),
        .Q(\WIDTH_H_reg[5]_0 [1]));
  FDCE \WIDTH_L_reg[2] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [2]),
        .Q(\WIDTH_H_reg[5]_0 [2]));
  FDCE \WIDTH_L_reg[3] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [3]),
        .Q(\WIDTH_H_reg[5]_0 [3]));
  FDCE \WIDTH_L_reg[4] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [4]),
        .Q(\WIDTH_H_reg[5]_0 [4]));
  FDCE \WIDTH_L_reg[5] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [5]),
        .Q(\WIDTH_H_reg[5]_0 [5]));
  FDCE \WIDTH_L_reg[6] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [6]),
        .Q(\WIDTH_H_reg[5]_0 [6]));
  FDCE \WIDTH_L_reg[7] 
       (.C(CLK),
        .CE(\WIDTH_L_reg[7]_0 ),
        .CLR(btnC),
        .D(\PERIOD_L_reg[7]_0 [7]),
        .Q(\WIDTH_H_reg[5]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \counter[0]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(Q),
        .O(RUN_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[10]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[9]),
        .O(RUN_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[11]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[10]),
        .O(RUN_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[12]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[11]),
        .O(RUN_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[13]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[12]),
        .O(RUN_reg_0[13]));
  LUT6 #(
    .INIT(64'h000000008A008000)) 
    \counter[13]_i_2 
       (.I0(sw_IBUF[1]),
        .I1(run_ppt_reg),
        .I2(I2C_active),
        .I3(pulse_active_reg),
        .I4(sw_IBUF[0]),
        .I5(done),
        .O(\counter[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \counter[13]_i_3 
       (.I0(sw_IBUF[1]),
        .I1(run_ppt_reg),
        .I2(I2C_active),
        .I3(sw_IBUF[0]),
        .I4(done),
        .O(\counter[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[1]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[0]),
        .O(RUN_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[2]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[1]),
        .O(RUN_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[3]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[2]),
        .O(RUN_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[4]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[3]),
        .O(RUN_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[5]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[4]),
        .O(RUN_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[6]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[5]),
        .O(RUN_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[7]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[6]),
        .O(RUN_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[8]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[7]),
        .O(RUN_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \counter[9]_i_1 
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .I3(counter0[8]),
        .O(RUN_reg_0[9]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \data_out[0]_i_3 
       (.I0(run_ppt_reg),
        .I1(\data_out_reg[7] [1]),
        .I2(COUNT_L[0]),
        .I3(\data_out_reg[7] [0]),
        .I4(\WIDTH_H_reg[5]_0 [8]),
        .O(RUN_reg_2));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_4 
       (.I0(\WIDTH_H_reg[5]_0 [0]),
        .I1(\PERIOD_H_reg[5]_0 [8]),
        .I2(\data_out_reg[7] [1]),
        .I3(\PERIOD_H_reg[5]_0 [0]),
        .I4(\data_out_reg[7] [0]),
        .I5(\CLK_DIV_reg[4]_0 [0]),
        .O(\WIDTH_L_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \data_out[1]_i_2 
       (.I0(\WIDTH_H_reg[5]_0 [9]),
        .I1(\data_out_reg[7] [0]),
        .I2(COUNT_L[1]),
        .I3(\data_out_reg[7] [1]),
        .I4(\data_out_reg[7] [2]),
        .I5(\data_out[1]_i_3_n_0 ),
        .O(\WIDTH_H_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_3 
       (.I0(\WIDTH_H_reg[5]_0 [1]),
        .I1(\PERIOD_H_reg[5]_0 [9]),
        .I2(\data_out_reg[7] [1]),
        .I3(\PERIOD_H_reg[5]_0 [1]),
        .I4(\data_out_reg[7] [0]),
        .I5(\CLK_DIV_reg[4]_0 [1]),
        .O(\data_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \data_out[2]_i_2 
       (.I0(\WIDTH_H_reg[5]_0 [10]),
        .I1(\data_out_reg[7] [0]),
        .I2(COUNT_L[2]),
        .I3(\data_out_reg[7] [1]),
        .I4(\data_out_reg[7] [2]),
        .I5(\data_out[2]_i_3_n_0 ),
        .O(\WIDTH_H_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_3 
       (.I0(\WIDTH_H_reg[5]_0 [2]),
        .I1(\PERIOD_H_reg[5]_0 [10]),
        .I2(\data_out_reg[7] [1]),
        .I3(\PERIOD_H_reg[5]_0 [2]),
        .I4(\data_out_reg[7] [0]),
        .I5(\CLK_DIV_reg[4]_0 [2]),
        .O(\data_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \data_out[3]_i_2 
       (.I0(\WIDTH_H_reg[5]_0 [11]),
        .I1(\data_out_reg[7] [0]),
        .I2(COUNT_L[3]),
        .I3(\data_out_reg[7] [1]),
        .I4(\data_out_reg[7] [2]),
        .I5(\data_out[3]_i_3_n_0 ),
        .O(\WIDTH_H_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_3 
       (.I0(\WIDTH_H_reg[5]_0 [3]),
        .I1(\PERIOD_H_reg[5]_0 [11]),
        .I2(\data_out_reg[7] [1]),
        .I3(\PERIOD_H_reg[5]_0 [3]),
        .I4(\data_out_reg[7] [0]),
        .I5(\CLK_DIV_reg[4]_0 [3]),
        .O(\data_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \data_out[4]_i_2 
       (.I0(\WIDTH_H_reg[5]_0 [12]),
        .I1(\data_out_reg[7] [0]),
        .I2(COUNT_L[4]),
        .I3(\data_out_reg[7] [1]),
        .I4(\data_out_reg[7] [2]),
        .I5(\data_out[4]_i_3_n_0 ),
        .O(\WIDTH_H_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_3 
       (.I0(\WIDTH_H_reg[5]_0 [4]),
        .I1(\PERIOD_H_reg[5]_0 [12]),
        .I2(\data_out_reg[7] [1]),
        .I3(\PERIOD_H_reg[5]_0 [4]),
        .I4(\data_out_reg[7] [0]),
        .I5(\CLK_DIV_reg[4]_0 [4]),
        .O(\data_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \data_out[5]_i_2 
       (.I0(\WIDTH_H_reg[5]_0 [13]),
        .I1(\data_out_reg[7] [0]),
        .I2(COUNT_L[5]),
        .I3(\data_out_reg[7] [1]),
        .I4(\data_out_reg[7] [2]),
        .I5(\data_out[5]_i_3_n_0 ),
        .O(\WIDTH_H_reg[5]_1 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \data_out[5]_i_3 
       (.I0(\WIDTH_H_reg[5]_0 [5]),
        .I1(\PERIOD_H_reg[5]_0 [13]),
        .I2(\data_out_reg[7] [1]),
        .I3(\PERIOD_H_reg[5]_0 [5]),
        .I4(\data_out_reg[7] [0]),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30BB308800000000)) 
    \data_out[6]_i_2 
       (.I0(COUNT_L[6]),
        .I1(\data_out_reg[7] [2]),
        .I2(\WIDTH_H_reg[5]_0 [6]),
        .I3(\data_out_reg[7] [1]),
        .I4(\PERIOD_H_reg[5]_0 [6]),
        .I5(\data_out_reg[7] [0]),
        .O(\COUNT_L_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h30BB308800000000)) 
    \data_out[7]_i_2 
       (.I0(COUNT_L[7]),
        .I1(\data_out_reg[7] [2]),
        .I2(\WIDTH_H_reg[5]_0 [7]),
        .I3(\data_out_reg[7] [1]),
        .I4(\PERIOD_H_reg[5]_0 [7]),
        .I5(\data_out_reg[7] [0]),
        .O(\COUNT_L_reg[7]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    pulse_active_i_1
       (.I0(\counter[13]_i_2_n_0 ),
        .I1(CO),
        .I2(\counter[13]_i_3_n_0 ),
        .O(pulse_active));
  LUT6 #(
    .INIT(64'h4F7FFFFF0B080000)) 
    \pulse_count[0]_i_1 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\COUNT_DONE_L_reg[7]_1 [0]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF4F7FFFFB0800000)) 
    \pulse_count[1]_i_1 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\pulse_count_reg[1] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF4F7FFFFB0800000)) 
    \pulse_count[2]_i_1 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\pulse_count_reg[2] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF4F7FFFFB0800000)) 
    \pulse_count[3]_i_1 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\pulse_count_reg[3] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF4F7FFFFB0800000)) 
    \pulse_count[4]_i_1 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\pulse_count_reg[4] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF4F7FFFFB0800000)) 
    \pulse_count[5]_i_1 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\pulse_count_reg[5] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hF4F7FFFFB0800000)) 
    \pulse_count[6]_i_1 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\pulse_count_reg[6] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hF4F7FFFFB0800000)) 
    \pulse_count[7]_i_2 
       (.I0(run_ppt_reg),
        .I1(I2C_active),
        .I2(\pulse_count_reg[7] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(COUNT_L[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFF757F)) 
    \pulse_width_r[13]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(run_ppt_reg),
        .I2(I2C_active),
        .I3(sw_IBUF[0]),
        .I4(done),
        .O(RUN_reg_1));
endmodule

module tt_um_jk2102
   (seg_OBUF,
    sda_OBUF,
    \sel_r_reg[3] ,
    CLK,
    sda_IBUF,
    div_clk,
    sw_IBUF,
    AR,
    \sel_r_reg[4] ,
    lopt,
    lopt_1);
  output [1:0]seg_OBUF;
  output sda_OBUF;
  output \sel_r_reg[3] ;
  input CLK;
  input sda_IBUF;
  input div_clk;
  input [5:0]sw_IBUF;
  input [0:0]AR;
  input \sel_r_reg[4] ;
  output lopt;
  output lopt_1;

  wire \<const1> ;
  wire [0:0]AR;
  wire CLK;
  wire [4:0]CLK_DIV;
  wire CLK_DIV_0;
  wire [7:0]COUNT_DONE_L;
  wire COUNT_L;
  wire DONE;
  wire I2C_active;
  wire PERIOD_H;
  wire PERIOD_L;
  wire WIDTH_H;
  wire WIDTH_L;
  wire [13:1]counter0;
  wire div_clk;
  wire done;
  wire i2c_slave_inst_n_1;
  wire i2c_slave_inst_n_19;
  wire lopt;
  wire lopt_1;
  wire [7:0]p_0_in;
  wire pulse_active;
  wire [7:0]pulse_count_reg;
  wire pulse_counter_inst_n_10;
  wire pulse_counter_inst_n_11;
  wire pulse_counter_inst_n_12;
  wire pulse_counter_inst_n_13;
  wire pulse_counter_inst_n_14;
  wire pulse_counter_inst_n_15;
  wire pulse_counter_inst_n_9;
  wire pulse_gen_inst_n_2;
  wire pulse_gen_inst_n_3;
  wire pulse_gen_inst_n_4;
  wire [13:0]pulse_period;
  wire [13:0]pulse_width;
  wire [2:0]reg_data_addr;
  wire [7:0]reg_data_out;
  wire register_map_inst_n_1;
  wire register_map_inst_n_10;
  wire register_map_inst_n_11;
  wire register_map_inst_n_12;
  wire register_map_inst_n_13;
  wire register_map_inst_n_14;
  wire register_map_inst_n_15;
  wire register_map_inst_n_16;
  wire register_map_inst_n_26;
  wire register_map_inst_n_27;
  wire register_map_inst_n_3;
  wire register_map_inst_n_4;
  wire register_map_inst_n_5;
  wire register_map_inst_n_56;
  wire register_map_inst_n_57;
  wire register_map_inst_n_58;
  wire register_map_inst_n_6;
  wire register_map_inst_n_64;
  wire register_map_inst_n_65;
  wire register_map_inst_n_66;
  wire register_map_inst_n_67;
  wire register_map_inst_n_68;
  wire register_map_inst_n_7;
  wire register_map_inst_n_8;
  wire register_map_inst_n_9;
  wire run_ppt_reg;
  wire sda_IBUF;
  wire sda_OBUF;
  wire [1:0]seg_OBUF;
  wire \sel_r_reg[3] ;
  wire \sel_r_reg[4] ;
  wire [5:0]sw_IBUF;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    I2C_active_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(register_map_inst_n_1),
        .D(\<const1> ),
        .Q(I2C_active));
  VCC VCC
       (.P(\<const1> ));
  clock_divider clk_div_inst
       (.Q(CLK_DIV),
        .\sel_r_reg[0]_0 (register_map_inst_n_1),
        .\sel_r_reg[3]_0 (\sel_r_reg[3] ),
        .\sel_r_reg[4]_0 (\sel_r_reg[4] ));
  i2c_slave i2c_slave_inst
       (.CLK(CLK),
        .DONE(DONE),
        .E(CLK_DIV_0),
        .Q(reg_data_out),
        .\data_out_reg[0]_0 (register_map_inst_n_67),
        .\data_out_reg[0]_1 (register_map_inst_n_68),
        .\data_out_reg[1]_0 (register_map_inst_n_66),
        .\data_out_reg[2]_0 (register_map_inst_n_65),
        .\data_out_reg[3]_0 (register_map_inst_n_64),
        .\data_out_reg[4]_0 (register_map_inst_n_58),
        .\data_out_reg[5]_0 (register_map_inst_n_57),
        .\data_out_reg[6]_0 (register_map_inst_n_56),
        .\data_out_reg[7]_0 (COUNT_DONE_L),
        .\data_out_reg[7]_1 (register_map_inst_n_27),
        .\reg_data_addr_reg[2]_0 (reg_data_addr),
        .\reg_data_addr_reg[3]_0 (COUNT_L),
        .\reg_data_addr_reg[3]_1 (PERIOD_L),
        .\reg_data_addr_reg[3]_2 (PERIOD_H),
        .\reg_data_addr_reg[3]_3 (WIDTH_L),
        .\reg_data_addr_reg[3]_4 (WIDTH_H),
        .\reg_data_out_reg[0]_0 (i2c_slave_inst_n_1),
        .reg_write_reg_0(i2c_slave_inst_n_19),
        .run_ppt_reg(run_ppt_reg),
        .sda_IBUF(sda_IBUF),
        .sda_OBUF(sda_OBUF),
        .sda_out_reg_0(register_map_inst_n_1),
        .sw_IBUF(sw_IBUF[3:0]));
  pulse_counter pulse_counter_inst
       (.D(p_0_in),
        .I2C_active(I2C_active),
        .Q(pulse_count_reg),
        .div_clk(div_clk),
        .done(done),
        .prev_pulse_reg_0(seg_OBUF[1]),
        .prev_pulse_reg_1(register_map_inst_n_1),
        .\pulse_count_reg[1]_0 (pulse_counter_inst_n_14),
        .\pulse_count_reg[2]_0 (pulse_counter_inst_n_15),
        .\pulse_count_reg[3]_0 (pulse_counter_inst_n_9),
        .\pulse_count_reg[4]_0 (pulse_counter_inst_n_10),
        .\pulse_count_reg[5]_0 (pulse_counter_inst_n_11),
        .\pulse_count_reg[6]_0 (pulse_counter_inst_n_12),
        .\pulse_count_reg[7]_0 (pulse_counter_inst_n_13),
        .run_ppt_reg(run_ppt_reg),
        .sw_IBUF(sw_IBUF[5:4]));
  pulse_generator pulse_gen_inst
       (.CO(pulse_gen_inst_n_2),
        .D(pulse_width),
        .E(register_map_inst_n_26),
        .Q(pulse_gen_inst_n_4),
        .counter0(counter0),
        .\counter_reg[13]_0 (pulse_gen_inst_n_3),
        .\counter_reg[13]_1 ({register_map_inst_n_3,register_map_inst_n_4,register_map_inst_n_5,register_map_inst_n_6,register_map_inst_n_7,register_map_inst_n_8,register_map_inst_n_9,register_map_inst_n_10,register_map_inst_n_11,register_map_inst_n_12,register_map_inst_n_13,register_map_inst_n_14,register_map_inst_n_15,register_map_inst_n_16}),
        .div_clk(div_clk),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .pulse_active(pulse_active),
        .pulse_active_reg_0(register_map_inst_n_1),
        .\pulse_period_r_reg[13]_0 (pulse_period),
        .seg_OBUF(seg_OBUF));
  register_map register_map_inst
       (.AR(AR),
        .CLK(CLK),
        .\CLK_DIV_reg[4]_0 (CLK_DIV),
        .\CLK_DIV_reg[4]_1 (CLK_DIV_0),
        .CO(pulse_gen_inst_n_2),
        .\COUNT_DONE_L_reg[7]_0 (COUNT_DONE_L),
        .\COUNT_DONE_L_reg[7]_1 (pulse_count_reg),
        .\COUNT_L_reg[6]_0 (register_map_inst_n_56),
        .\COUNT_L_reg[7]_0 (register_map_inst_n_27),
        .\COUNT_L_reg[7]_1 (COUNT_L),
        .D(p_0_in),
        .DONE(DONE),
        .E(i2c_slave_inst_n_19),
        .I2C_active(I2C_active),
        .\PERIOD_H_reg[5]_0 (pulse_period),
        .\PERIOD_H_reg[5]_1 (PERIOD_H),
        .\PERIOD_L_reg[7]_0 (reg_data_out),
        .\PERIOD_L_reg[7]_1 (PERIOD_L),
        .Q(pulse_gen_inst_n_4),
        .RUN_reg_0({register_map_inst_n_3,register_map_inst_n_4,register_map_inst_n_5,register_map_inst_n_6,register_map_inst_n_7,register_map_inst_n_8,register_map_inst_n_9,register_map_inst_n_10,register_map_inst_n_11,register_map_inst_n_12,register_map_inst_n_13,register_map_inst_n_14,register_map_inst_n_15,register_map_inst_n_16}),
        .RUN_reg_1(register_map_inst_n_26),
        .RUN_reg_2(register_map_inst_n_67),
        .RUN_reg_3(i2c_slave_inst_n_1),
        .\WIDTH_H_reg[1]_0 (register_map_inst_n_66),
        .\WIDTH_H_reg[2]_0 (register_map_inst_n_65),
        .\WIDTH_H_reg[3]_0 (register_map_inst_n_64),
        .\WIDTH_H_reg[4]_0 (register_map_inst_n_58),
        .\WIDTH_H_reg[5]_0 (pulse_width),
        .\WIDTH_H_reg[5]_1 (register_map_inst_n_57),
        .\WIDTH_H_reg[5]_2 (WIDTH_H),
        .\WIDTH_L_reg[0]_0 (register_map_inst_n_68),
        .\WIDTH_L_reg[7]_0 (WIDTH_L),
        .btnC(register_map_inst_n_1),
        .counter0(counter0),
        .\data_out_reg[7] (reg_data_addr),
        .done(done),
        .pulse_active(pulse_active),
        .pulse_active_reg(pulse_gen_inst_n_3),
        .\pulse_count_reg[1] (pulse_counter_inst_n_14),
        .\pulse_count_reg[2] (pulse_counter_inst_n_15),
        .\pulse_count_reg[3] (pulse_counter_inst_n_9),
        .\pulse_count_reg[4] (pulse_counter_inst_n_10),
        .\pulse_count_reg[5] (pulse_counter_inst_n_11),
        .\pulse_count_reg[6] (pulse_counter_inst_n_12),
        .\pulse_count_reg[7] (pulse_counter_inst_n_13),
        .run_ppt_reg(run_ppt_reg),
        .sw_IBUF(sw_IBUF[5:4]));
endmodule
