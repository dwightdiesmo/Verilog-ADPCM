// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Dec 12 20:51:44 2021
// Host        : Dweegit running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/dwigh/Xilinx/ADPCM/ADPCM.sim/sim_1/synth/func/xsim/tb_ADPCM_func_synth.v
// Design      : ADPCM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ADDER_FIXED_POINT
   (O,
    \delta_reg[8] ,
    \delta_reg[12] ,
    \delta_reg[15] ,
    EN,
    Q,
    S,
    \Q_reg[7]__0 ,
    \Q_reg[11]__0 ,
    \Q_reg[15]__0 ,
    EN_IBUF);
  output [3:0]O;
  output [3:0]\delta_reg[8] ;
  output [3:0]\delta_reg[12] ;
  output [3:0]\delta_reg[15] ;
  output EN;
  input [14:0]Q;
  input [3:0]S;
  input [3:0]\Q_reg[7]__0 ;
  input [3:0]\Q_reg[11]__0 ;
  input [3:0]\Q_reg[15]__0 ;
  input EN_IBUF;

  wire EN;
  wire EN_IBUF;
  wire [3:0]O;
  wire [14:0]Q;
  wire \Q[15]__0_i_2_n_0 ;
  wire \Q[15]__0_i_3_n_0 ;
  wire \Q[15]__0_i_4_n_0 ;
  wire \Q[15]__0_i_5_n_0 ;
  wire [3:0]\Q_reg[11]__0 ;
  wire [3:0]\Q_reg[15]__0 ;
  wire [3:0]\Q_reg[7]__0 ;
  wire [3:0]S;
  wire [3:0]\delta_reg[12] ;
  wire [3:0]\delta_reg[15] ;
  wire [3:0]\delta_reg[8] ;
  wire out0_carry__0_n_0;
  wire out0_carry__0_n_1;
  wire out0_carry__0_n_2;
  wire out0_carry__0_n_3;
  wire out0_carry__1_n_0;
  wire out0_carry__1_n_1;
  wire out0_carry__1_n_2;
  wire out0_carry__1_n_3;
  wire out0_carry__2_n_1;
  wire out0_carry__2_n_2;
  wire out0_carry__2_n_3;
  wire out0_carry_n_0;
  wire out0_carry_n_1;
  wire out0_carry_n_2;
  wire out0_carry_n_3;
  wire [3:3]NLW_out0_carry__2_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000002)) 
    \Q[15]__0_i_1 
       (.I0(EN_IBUF),
        .I1(\Q[15]__0_i_2_n_0 ),
        .I2(\Q[15]__0_i_3_n_0 ),
        .I3(\Q[15]__0_i_4_n_0 ),
        .I4(\Q[15]__0_i_5_n_0 ),
        .O(EN));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[15]__0_i_2 
       (.I0(O[3]),
        .I1(O[2]),
        .I2(O[1]),
        .I3(O[0]),
        .O(\Q[15]__0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[15]__0_i_3 
       (.I0(\delta_reg[8] [1]),
        .I1(\delta_reg[8] [0]),
        .I2(\delta_reg[8] [3]),
        .I3(\delta_reg[8] [2]),
        .O(\Q[15]__0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[15]__0_i_4 
       (.I0(\delta_reg[12] [3]),
        .I1(\delta_reg[12] [2]),
        .I2(\delta_reg[12] [1]),
        .I3(\delta_reg[12] [0]),
        .O(\Q[15]__0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[15]__0_i_5 
       (.I0(\delta_reg[15] [1]),
        .I1(\delta_reg[15] [0]),
        .I2(\delta_reg[15] [2]),
        .I3(\delta_reg[15] [3]),
        .O(\Q[15]__0_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry
       (.CI(1'b0),
        .CO({out0_carry_n_0,out0_carry_n_1,out0_carry_n_2,out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__0
       (.CI(out0_carry_n_0),
        .CO({out0_carry__0_n_0,out0_carry__0_n_1,out0_carry__0_n_2,out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\delta_reg[8] ),
        .S(\Q_reg[7]__0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__1
       (.CI(out0_carry__0_n_0),
        .CO({out0_carry__1_n_0,out0_carry__1_n_1,out0_carry__1_n_2,out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\delta_reg[12] ),
        .S(\Q_reg[11]__0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__2
       (.CI(out0_carry__1_n_0),
        .CO({NLW_out0_carry__2_CO_UNCONNECTED[3],out0_carry__2_n_1,out0_carry__2_n_2,out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(\delta_reg[15] ),
        .S(\Q_reg[15]__0 ));
endmodule

(* ORIG_REF_NAME = "ADDER_FIXED_POINT" *) 
module ADDER_FIXED_POINT_0
   (O,
    S,
    DI,
    \delta_reg[15] ,
    \delta_reg[14] ,
    \delta_reg[15]_0 ,
    \delta_reg[4] ,
    \delta_reg[8] ,
    \delta_reg[12] ,
    x_IBUF,
    Q,
    input1,
    \Q_reg[15]__0 ,
    CO,
    \Q_reg[15]__0_0 ,
    deltaAdd);
  output [0:0]O;
  output [3:0]S;
  output [3:0]DI;
  output [3:0]\delta_reg[15] ;
  output [3:0]\delta_reg[14] ;
  output [3:0]\delta_reg[15]_0 ;
  output [3:0]\delta_reg[4] ;
  output [3:0]\delta_reg[8] ;
  output [3:0]\delta_reg[12] ;
  input [15:0]x_IBUF;
  input [15:0]Q;
  input [15:0]input1;
  input [0:0]\Q_reg[15]__0 ;
  input [0:0]CO;
  input [15:0]\Q_reg[15]__0_0 ;
  input [14:0]deltaAdd;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]O;
  wire [15:0]Q;
  wire [0:0]\Q_reg[15]__0 ;
  wire [15:0]\Q_reg[15]__0_0 ;
  wire [3:0]S;
  wire codeWord0_carry__0_i_12_n_0;
  wire codeWord0_carry__0_i_12_n_1;
  wire codeWord0_carry__0_i_12_n_2;
  wire codeWord0_carry__0_i_12_n_3;
  wire codeWord0_carry__0_i_14_n_0;
  wire codeWord0_carry__0_i_15_n_0;
  wire codeWord0_carry__0_i_16_n_0;
  wire codeWord0_carry__0_i_9_n_2;
  wire codeWord0_carry__0_i_9_n_3;
  wire codeWord0_carry_i_10_n_0;
  wire codeWord0_carry_i_10_n_1;
  wire codeWord0_carry_i_10_n_2;
  wire codeWord0_carry_i_10_n_3;
  wire codeWord0_carry_i_13_n_0;
  wire codeWord0_carry_i_13_n_1;
  wire codeWord0_carry_i_13_n_2;
  wire codeWord0_carry_i_13_n_3;
  wire codeWord0_carry_i_14_n_0;
  wire codeWord0_carry_i_15_n_0;
  wire codeWord0_carry_i_16_n_0;
  wire [15:1]converted0;
  wire [12:2]d_c;
  wire [14:0]deltaAdd;
  wire [3:0]\delta_reg[12] ;
  wire [3:0]\delta_reg[14] ;
  wire [3:0]\delta_reg[15] ;
  wire [3:0]\delta_reg[15]_0 ;
  wire [3:0]\delta_reg[4] ;
  wire [3:0]\delta_reg[8] ;
  wire [15:0]input1;
  wire [14:0]original;
  wire out0_carry__0_i_1_n_0;
  wire out0_carry__0_i_2_n_0;
  wire out0_carry__0_i_3_n_0;
  wire out0_carry__0_i_4_n_0;
  wire out0_carry__0_i_5_n_0;
  wire out0_carry__0_i_5_n_1;
  wire out0_carry__0_i_5_n_2;
  wire out0_carry__0_i_5_n_3;
  wire out0_carry__0_i_5_n_4;
  wire out0_carry__0_i_5_n_5;
  wire out0_carry__0_i_5_n_6;
  wire out0_carry__0_i_5_n_7;
  wire out0_carry__0_i_6_n_0;
  wire out0_carry__0_i_7_n_0;
  wire out0_carry__0_i_8_n_0;
  wire out0_carry__0_i_9_n_0;
  wire out0_carry__0_n_0;
  wire out0_carry__0_n_1;
  wire out0_carry__0_n_2;
  wire out0_carry__0_n_3;
  wire out0_carry__1_i_1_n_0;
  wire out0_carry__1_i_2_n_0;
  wire out0_carry__1_i_3_n_0;
  wire out0_carry__1_i_4_n_0;
  wire out0_carry__1_i_5_n_0;
  wire out0_carry__1_i_5_n_1;
  wire out0_carry__1_i_5_n_2;
  wire out0_carry__1_i_5_n_3;
  wire out0_carry__1_i_5_n_4;
  wire out0_carry__1_i_5_n_5;
  wire out0_carry__1_i_5_n_6;
  wire out0_carry__1_i_5_n_7;
  wire out0_carry__1_i_6_n_0;
  wire out0_carry__1_i_7_n_0;
  wire out0_carry__1_i_8_n_0;
  wire out0_carry__1_i_9_n_0;
  wire out0_carry__1_n_0;
  wire out0_carry__1_n_1;
  wire out0_carry__1_n_2;
  wire out0_carry__1_n_3;
  wire out0_carry__2_i_1_n_0;
  wire out0_carry__2_i_2_n_0;
  wire out0_carry__2_i_3_n_0;
  wire out0_carry__2_i_4_n_0;
  wire out0_carry__2_i_5_n_2;
  wire out0_carry__2_i_5_n_3;
  wire out0_carry__2_i_5_n_5;
  wire out0_carry__2_i_5_n_6;
  wire out0_carry__2_i_5_n_7;
  wire out0_carry__2_i_6_n_0;
  wire out0_carry__2_i_7_n_0;
  wire out0_carry__2_i_8_n_0;
  wire out0_carry__2_n_1;
  wire out0_carry__2_n_2;
  wire out0_carry__2_n_3;
  wire out0_carry_i_10_n_0;
  wire out0_carry_i_1_n_0;
  wire out0_carry_i_2_n_0;
  wire out0_carry_i_3_n_0;
  wire out0_carry_i_4_n_0;
  wire out0_carry_i_5_n_0;
  wire out0_carry_i_5_n_1;
  wire out0_carry_i_5_n_2;
  wire out0_carry_i_5_n_3;
  wire out0_carry_i_5_n_4;
  wire out0_carry_i_5_n_5;
  wire out0_carry_i_5_n_6;
  wire out0_carry_i_5_n_7;
  wire out0_carry_i_6_n_0;
  wire out0_carry_i_7_n_0;
  wire out0_carry_i_8_n_0;
  wire out0_carry_i_9_n_0;
  wire out0_carry_n_0;
  wire out0_carry_n_1;
  wire out0_carry_n_2;
  wire out0_carry_n_3;
  wire [15:0]p_0_in;
  wire [15:0]x_IBUF;
  wire [3:2]NLW_codeWord0_carry__0_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_codeWord0_carry__0_i_9_O_UNCONNECTED;
  wire [3:3]NLW_out0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_out0_carry__2_i_5_CO_UNCONNECTED;
  wire [3:3]NLW_out0_carry__2_i_5_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0C00FF0CFF0AFF0A)) 
    codeWord0_carry__0_i_1
       (.I0(original[14]),
        .I1(converted0[14]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(converted0[15]),
        .I5(O),
        .O(\delta_reg[14] [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    codeWord0_carry__0_i_10
       (.I0(converted0[12]),
        .I1(O),
        .I2(original[12]),
        .O(d_c[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    codeWord0_carry__0_i_11
       (.I0(converted0[10]),
        .I1(O),
        .I2(original[10]),
        .O(d_c[10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 codeWord0_carry__0_i_12
       (.CI(codeWord0_carry_i_10_n_0),
        .CO({codeWord0_carry__0_i_12_n_0,codeWord0_carry__0_i_12_n_1,codeWord0_carry__0_i_12_n_2,codeWord0_carry__0_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(converted0[12:9]),
        .S(p_0_in[12:9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    codeWord0_carry__0_i_13
       (.I0(converted0[8]),
        .I1(O),
        .I2(original[8]),
        .O(d_c[8]));
  LUT4 #(
    .INIT(16'hA959)) 
    codeWord0_carry__0_i_14
       (.I0(Q[13]),
        .I1(original[13]),
        .I2(O),
        .I3(converted0[13]),
        .O(codeWord0_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    codeWord0_carry__0_i_15
       (.I0(Q[11]),
        .I1(original[11]),
        .I2(O),
        .I3(converted0[11]),
        .O(codeWord0_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    codeWord0_carry__0_i_16
       (.I0(Q[9]),
        .I1(original[9]),
        .I2(O),
        .I3(converted0[9]),
        .O(codeWord0_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry__0_i_17
       (.I0(O),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry__0_i_18
       (.I0(original[14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry__0_i_19
       (.I0(original[13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    codeWord0_carry__0_i_2
       (.I0(d_c[12]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(converted0[13]),
        .I4(O),
        .I5(original[13]),
        .O(\delta_reg[14] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry__0_i_20
       (.I0(original[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry__0_i_21
       (.I0(original[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry__0_i_22
       (.I0(original[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry__0_i_23
       (.I0(original[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    codeWord0_carry__0_i_3
       (.I0(d_c[10]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(converted0[11]),
        .I4(O),
        .I5(original[11]),
        .O(\delta_reg[14] [1]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    codeWord0_carry__0_i_4
       (.I0(d_c[8]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(converted0[9]),
        .I4(O),
        .I5(original[9]),
        .O(\delta_reg[14] [0]));
  LUT6 #(
    .INIT(64'h8782050000058287)) 
    codeWord0_carry__0_i_5
       (.I0(O),
        .I1(converted0[15]),
        .I2(Q[15]),
        .I3(original[14]),
        .I4(converted0[14]),
        .I5(Q[14]),
        .O(\delta_reg[15] [3]));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    codeWord0_carry__0_i_6
       (.I0(codeWord0_carry__0_i_14_n_0),
        .I1(original[12]),
        .I2(O),
        .I3(converted0[12]),
        .I4(Q[12]),
        .O(\delta_reg[15] [2]));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    codeWord0_carry__0_i_7
       (.I0(codeWord0_carry__0_i_15_n_0),
        .I1(original[10]),
        .I2(O),
        .I3(converted0[10]),
        .I4(Q[10]),
        .O(\delta_reg[15] [1]));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    codeWord0_carry__0_i_8
       (.I0(codeWord0_carry__0_i_16_n_0),
        .I1(original[8]),
        .I2(O),
        .I3(converted0[8]),
        .I4(Q[8]),
        .O(\delta_reg[15] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 codeWord0_carry__0_i_9
       (.CI(codeWord0_carry__0_i_12_n_0),
        .CO({NLW_codeWord0_carry__0_i_9_CO_UNCONNECTED[3:2],codeWord0_carry__0_i_9_n_2,codeWord0_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_codeWord0_carry__0_i_9_O_UNCONNECTED[3],converted0[15:13]}),
        .S({1'b0,p_0_in[15:13]}));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    codeWord0_carry_i_1
       (.I0(d_c[6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(converted0[7]),
        .I4(O),
        .I5(original[7]),
        .O(DI[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 codeWord0_carry_i_10
       (.CI(codeWord0_carry_i_13_n_0),
        .CO({codeWord0_carry_i_10_n_0,codeWord0_carry_i_10_n_1,codeWord0_carry_i_10_n_2,codeWord0_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(converted0[8:5]),
        .S(p_0_in[8:5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    codeWord0_carry_i_11
       (.I0(converted0[4]),
        .I1(O),
        .I2(original[4]),
        .O(d_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    codeWord0_carry_i_12
       (.I0(converted0[2]),
        .I1(O),
        .I2(original[2]),
        .O(d_c[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 codeWord0_carry_i_13
       (.CI(1'b0),
        .CO({codeWord0_carry_i_13_n_0,codeWord0_carry_i_13_n_1,codeWord0_carry_i_13_n_2,codeWord0_carry_i_13_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(converted0[4:1]),
        .S(p_0_in[4:1]));
  LUT4 #(
    .INIT(16'hA959)) 
    codeWord0_carry_i_14
       (.I0(Q[7]),
        .I1(original[7]),
        .I2(O),
        .I3(converted0[7]),
        .O(codeWord0_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    codeWord0_carry_i_15
       (.I0(Q[5]),
        .I1(original[5]),
        .I2(O),
        .I3(converted0[5]),
        .O(codeWord0_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    codeWord0_carry_i_16
       (.I0(Q[3]),
        .I1(original[3]),
        .I2(O),
        .I3(converted0[3]),
        .O(codeWord0_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_17
       (.I0(original[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_18
       (.I0(original[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_19
       (.I0(original[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    codeWord0_carry_i_2
       (.I0(d_c[4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(converted0[5]),
        .I4(O),
        .I5(original[5]),
        .O(DI[2]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_20
       (.I0(original[5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_21
       (.I0(original[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_22
       (.I0(original[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_23
       (.I0(original[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_24
       (.I0(original[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    codeWord0_carry_i_25
       (.I0(original[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    codeWord0_carry_i_3
       (.I0(d_c[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(converted0[3]),
        .I4(O),
        .I5(original[3]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h2F022F2F2F020202)) 
    codeWord0_carry_i_4
       (.I0(original[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(converted0[1]),
        .I4(O),
        .I5(original[1]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    codeWord0_carry_i_5
       (.I0(codeWord0_carry_i_14_n_0),
        .I1(original[6]),
        .I2(O),
        .I3(converted0[6]),
        .I4(Q[6]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    codeWord0_carry_i_6
       (.I0(codeWord0_carry_i_15_n_0),
        .I1(original[4]),
        .I2(O),
        .I3(converted0[4]),
        .I4(Q[4]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'hA80802A2)) 
    codeWord0_carry_i_7
       (.I0(codeWord0_carry_i_16_n_0),
        .I1(original[2]),
        .I2(O),
        .I3(converted0[2]),
        .I4(Q[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hA95900000000A959)) 
    codeWord0_carry_i_8
       (.I0(Q[1]),
        .I1(original[1]),
        .I2(O),
        .I3(converted0[1]),
        .I4(Q[0]),
        .I5(original[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    codeWord0_carry_i_9
       (.I0(converted0[6]),
        .I1(O),
        .I2(original[6]),
        .O(d_c[6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry
       (.CI(1'b0),
        .CO({out0_carry_n_0,out0_carry_n_1,out0_carry_n_2,out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(x_IBUF[3:0]),
        .O(original[3:0]),
        .S({out0_carry_i_1_n_0,out0_carry_i_2_n_0,out0_carry_i_3_n_0,out0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__0
       (.CI(out0_carry_n_0),
        .CO({out0_carry__0_n_0,out0_carry__0_n_1,out0_carry__0_n_2,out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(x_IBUF[7:4]),
        .O(original[7:4]),
        .S({out0_carry__0_i_1_n_0,out0_carry__0_i_2_n_0,out0_carry__0_i_3_n_0,out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_1
       (.I0(x_IBUF[7]),
        .I1(out0_carry__0_i_5_n_5),
        .O(out0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__0_i_1__0
       (.I0(input1[7]),
        .I1(O),
        .I2(deltaAdd[7]),
        .I3(Q[8]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [7]),
        .O(\delta_reg[8] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_2
       (.I0(x_IBUF[6]),
        .I1(out0_carry__0_i_5_n_6),
        .O(out0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__0_i_2__0
       (.I0(input1[6]),
        .I1(O),
        .I2(deltaAdd[6]),
        .I3(Q[7]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [6]),
        .O(\delta_reg[8] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_3
       (.I0(x_IBUF[5]),
        .I1(out0_carry__0_i_5_n_7),
        .O(out0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__0_i_3__0
       (.I0(input1[5]),
        .I1(O),
        .I2(deltaAdd[5]),
        .I3(Q[6]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [5]),
        .O(\delta_reg[8] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__0_i_4
       (.I0(x_IBUF[4]),
        .I1(out0_carry_i_5_n_4),
        .O(out0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__0_i_4__0
       (.I0(input1[4]),
        .I1(O),
        .I2(deltaAdd[4]),
        .I3(Q[5]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [4]),
        .O(\delta_reg[8] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__0_i_5
       (.CI(out0_carry_i_5_n_0),
        .CO({out0_carry__0_i_5_n_0,out0_carry__0_i_5_n_1,out0_carry__0_i_5_n_2,out0_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({out0_carry__0_i_5_n_4,out0_carry__0_i_5_n_5,out0_carry__0_i_5_n_6,out0_carry__0_i_5_n_7}),
        .S({out0_carry__0_i_6_n_0,out0_carry__0_i_7_n_0,out0_carry__0_i_8_n_0,out0_carry__0_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__0_i_6
       (.I0(\Q_reg[15]__0_0 [8]),
        .O(out0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__0_i_7
       (.I0(\Q_reg[15]__0_0 [7]),
        .O(out0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__0_i_8
       (.I0(\Q_reg[15]__0_0 [6]),
        .O(out0_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__0_i_9
       (.I0(\Q_reg[15]__0_0 [5]),
        .O(out0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__1
       (.CI(out0_carry__0_n_0),
        .CO({out0_carry__1_n_0,out0_carry__1_n_1,out0_carry__1_n_2,out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(x_IBUF[11:8]),
        .O(original[11:8]),
        .S({out0_carry__1_i_1_n_0,out0_carry__1_i_2_n_0,out0_carry__1_i_3_n_0,out0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__1_i_1
       (.I0(x_IBUF[11]),
        .I1(out0_carry__1_i_5_n_5),
        .O(out0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__1_i_1__0
       (.I0(input1[11]),
        .I1(O),
        .I2(deltaAdd[11]),
        .I3(Q[12]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [11]),
        .O(\delta_reg[12] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__1_i_2
       (.I0(x_IBUF[10]),
        .I1(out0_carry__1_i_5_n_6),
        .O(out0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__1_i_2__0
       (.I0(input1[10]),
        .I1(O),
        .I2(deltaAdd[10]),
        .I3(Q[11]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [10]),
        .O(\delta_reg[12] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__1_i_3
       (.I0(x_IBUF[9]),
        .I1(out0_carry__1_i_5_n_7),
        .O(out0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__1_i_3__0
       (.I0(input1[9]),
        .I1(O),
        .I2(deltaAdd[9]),
        .I3(Q[10]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [9]),
        .O(\delta_reg[12] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__1_i_4
       (.I0(x_IBUF[8]),
        .I1(out0_carry__0_i_5_n_4),
        .O(out0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__1_i_4__0
       (.I0(input1[8]),
        .I1(O),
        .I2(deltaAdd[8]),
        .I3(Q[9]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [8]),
        .O(\delta_reg[12] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__1_i_5
       (.CI(out0_carry__0_i_5_n_0),
        .CO({out0_carry__1_i_5_n_0,out0_carry__1_i_5_n_1,out0_carry__1_i_5_n_2,out0_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({out0_carry__1_i_5_n_4,out0_carry__1_i_5_n_5,out0_carry__1_i_5_n_6,out0_carry__1_i_5_n_7}),
        .S({out0_carry__1_i_6_n_0,out0_carry__1_i_7_n_0,out0_carry__1_i_8_n_0,out0_carry__1_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__1_i_6
       (.I0(\Q_reg[15]__0_0 [12]),
        .O(out0_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__1_i_7
       (.I0(\Q_reg[15]__0_0 [11]),
        .O(out0_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__1_i_8
       (.I0(\Q_reg[15]__0_0 [10]),
        .O(out0_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__1_i_9
       (.I0(\Q_reg[15]__0_0 [9]),
        .O(out0_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__2
       (.CI(out0_carry__1_n_0),
        .CO({NLW_out0_carry__2_CO_UNCONNECTED[3],out0_carry__2_n_1,out0_carry__2_n_2,out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,x_IBUF[14:12]}),
        .O({O,original[14:12]}),
        .S({out0_carry__2_i_1_n_0,out0_carry__2_i_2_n_0,out0_carry__2_i_3_n_0,out0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__2_i_1
       (.I0(x_IBUF[15]),
        .I1(out0_carry__2_i_5_n_5),
        .O(out0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__2_i_1__0
       (.I0(input1[15]),
        .I1(O),
        .I2(\Q_reg[15]__0 ),
        .I3(Q[15]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [15]),
        .O(\delta_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__2_i_2
       (.I0(x_IBUF[14]),
        .I1(out0_carry__2_i_5_n_6),
        .O(out0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__2_i_2__0
       (.I0(input1[14]),
        .I1(O),
        .I2(deltaAdd[14]),
        .I3(Q[15]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [14]),
        .O(\delta_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__2_i_3
       (.I0(x_IBUF[13]),
        .I1(out0_carry__2_i_5_n_7),
        .O(out0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__2_i_3__0
       (.I0(input1[13]),
        .I1(O),
        .I2(deltaAdd[13]),
        .I3(Q[14]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [13]),
        .O(\delta_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry__2_i_4
       (.I0(x_IBUF[12]),
        .I1(out0_carry__1_i_5_n_4),
        .O(out0_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry__2_i_4__0
       (.I0(input1[12]),
        .I1(O),
        .I2(deltaAdd[12]),
        .I3(Q[13]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [12]),
        .O(\delta_reg[15]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry__2_i_5
       (.CI(out0_carry__1_i_5_n_0),
        .CO({NLW_out0_carry__2_i_5_CO_UNCONNECTED[3:2],out0_carry__2_i_5_n_2,out0_carry__2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_out0_carry__2_i_5_O_UNCONNECTED[3],out0_carry__2_i_5_n_5,out0_carry__2_i_5_n_6,out0_carry__2_i_5_n_7}),
        .S({1'b0,out0_carry__2_i_6_n_0,out0_carry__2_i_7_n_0,out0_carry__2_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__2_i_6
       (.I0(\Q_reg[15]__0_0 [15]),
        .O(out0_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__2_i_7
       (.I0(\Q_reg[15]__0_0 [14]),
        .O(out0_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry__2_i_8
       (.I0(\Q_reg[15]__0_0 [13]),
        .O(out0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_1
       (.I0(x_IBUF[3]),
        .I1(out0_carry_i_5_n_5),
        .O(out0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry_i_10
       (.I0(\Q_reg[15]__0_0 [1]),
        .O(out0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry_i_1__0
       (.I0(input1[3]),
        .I1(O),
        .I2(deltaAdd[3]),
        .I3(Q[4]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [3]),
        .O(\delta_reg[4] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_2
       (.I0(x_IBUF[2]),
        .I1(out0_carry_i_5_n_6),
        .O(out0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry_i_2__0
       (.I0(input1[2]),
        .I1(O),
        .I2(deltaAdd[2]),
        .I3(Q[3]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [2]),
        .O(\delta_reg[4] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_3
       (.I0(x_IBUF[1]),
        .I1(out0_carry_i_5_n_7),
        .O(out0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry_i_3__0
       (.I0(input1[1]),
        .I1(O),
        .I2(deltaAdd[1]),
        .I3(Q[2]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [1]),
        .O(\delta_reg[4] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out0_carry_i_4
       (.I0(x_IBUF[0]),
        .I1(\Q_reg[15]__0_0 [0]),
        .O(out0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h47474477B8B8BB88)) 
    out0_carry_i_4__0
       (.I0(input1[0]),
        .I1(O),
        .I2(deltaAdd[0]),
        .I3(Q[1]),
        .I4(CO),
        .I5(\Q_reg[15]__0_0 [0]),
        .O(\delta_reg[4] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0_carry_i_5
       (.CI(1'b0),
        .CO({out0_carry_i_5_n_0,out0_carry_i_5_n_1,out0_carry_i_5_n_2,out0_carry_i_5_n_3}),
        .CYINIT(out0_carry_i_6_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({out0_carry_i_5_n_4,out0_carry_i_5_n_5,out0_carry_i_5_n_6,out0_carry_i_5_n_7}),
        .S({out0_carry_i_7_n_0,out0_carry_i_8_n_0,out0_carry_i_9_n_0,out0_carry_i_10_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry_i_6
       (.I0(\Q_reg[15]__0_0 [0]),
        .O(out0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry_i_7
       (.I0(\Q_reg[15]__0_0 [4]),
        .O(out0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry_i_8
       (.I0(\Q_reg[15]__0_0 [3]),
        .O(out0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out0_carry_i_9
       (.I0(\Q_reg[15]__0_0 [2]),
        .O(out0_carry_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "ADDER_FIXED_POINT" *) 
module ADDER_FIXED_POINT_1
   (deltaAdd,
    O,
    \delta_reg[4] ,
    \delta_reg[8] ,
    \delta_reg[12] ,
    Q,
    DI,
    out0_carry_i_4__0,
    out0_carry__0_i_4__0,
    out0_carry__1_i_4__0,
    S,
    CO);
  output [14:0]deltaAdd;
  output [0:0]O;
  output [3:0]\delta_reg[4] ;
  output [3:0]\delta_reg[8] ;
  output [3:0]\delta_reg[12] ;
  input [12:0]Q;
  input [0:0]DI;
  input [3:0]out0_carry_i_4__0;
  input [3:0]out0_carry__0_i_4__0;
  input [3:0]out0_carry__1_i_4__0;
  input [3:0]S;
  input [0:0]CO;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]O;
  wire [12:0]Q;
  wire [3:0]S;
  wire [14:0]deltaAdd;
  wire [3:0]\delta_reg[12] ;
  wire [3:0]\delta_reg[4] ;
  wire [3:0]\delta_reg[8] ;
  wire out0__0_carry__0_n_0;
  wire out0__0_carry__0_n_1;
  wire out0__0_carry__0_n_2;
  wire out0__0_carry__0_n_3;
  wire out0__0_carry__1_n_0;
  wire out0__0_carry__1_n_1;
  wire out0__0_carry__1_n_2;
  wire out0__0_carry__1_n_3;
  wire out0__0_carry__2_n_1;
  wire out0__0_carry__2_n_2;
  wire out0__0_carry__2_n_3;
  wire out0__0_carry_n_0;
  wire out0__0_carry_n_1;
  wire out0__0_carry_n_2;
  wire out0__0_carry_n_3;
  wire [3:0]out0_carry__0_i_4__0;
  wire [3:0]out0_carry__1_i_4__0;
  wire [3:0]out0_carry_i_4__0;
  wire [3:3]NLW_out0__0_carry__2_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__0_i_1
       (.I0(deltaAdd[7]),
        .I1(CO),
        .I2(Q[7]),
        .O(\delta_reg[8] [3]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__0_i_2
       (.I0(deltaAdd[6]),
        .I1(CO),
        .I2(Q[6]),
        .O(\delta_reg[8] [2]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__0_i_3
       (.I0(deltaAdd[5]),
        .I1(CO),
        .I2(Q[5]),
        .O(\delta_reg[8] [1]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__0_i_4
       (.I0(deltaAdd[4]),
        .I1(CO),
        .I2(Q[4]),
        .O(\delta_reg[8] [0]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__1_i_1
       (.I0(deltaAdd[11]),
        .I1(CO),
        .I2(Q[11]),
        .O(\delta_reg[12] [3]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__1_i_2
       (.I0(deltaAdd[10]),
        .I1(CO),
        .I2(Q[10]),
        .O(\delta_reg[12] [2]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__1_i_3
       (.I0(deltaAdd[9]),
        .I1(CO),
        .I2(Q[9]),
        .O(\delta_reg[12] [1]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__1_i_4
       (.I0(deltaAdd[8]),
        .I1(CO),
        .I2(Q[8]),
        .O(\delta_reg[12] [0]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry_i_1
       (.I0(deltaAdd[3]),
        .I1(CO),
        .I2(Q[3]),
        .O(\delta_reg[4] [3]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry_i_2
       (.I0(deltaAdd[2]),
        .I1(CO),
        .I2(Q[2]),
        .O(\delta_reg[4] [2]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry_i_3
       (.I0(deltaAdd[1]),
        .I1(CO),
        .I2(Q[1]),
        .O(\delta_reg[4] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    converted0_carry_i_4
       (.I0(deltaAdd[0]),
        .I1(CO),
        .I2(Q[0]),
        .O(\delta_reg[4] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0__0_carry
       (.CI(1'b0),
        .CO({out0__0_carry_n_0,out0__0_carry_n_1,out0__0_carry_n_2,out0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Q[1:0],DI,1'b0}),
        .O(deltaAdd[3:0]),
        .S(out0_carry_i_4__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0__0_carry__0
       (.CI(out0__0_carry_n_0),
        .CO({out0__0_carry__0_n_0,out0__0_carry__0_n_1,out0__0_carry__0_n_2,out0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[5:2]),
        .O(deltaAdd[7:4]),
        .S(out0_carry__0_i_4__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0__0_carry__1
       (.CI(out0__0_carry__0_n_0),
        .CO({out0__0_carry__1_n_0,out0__0_carry__1_n_1,out0__0_carry__1_n_2,out0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[9:6]),
        .O(deltaAdd[11:8]),
        .S(out0_carry__1_i_4__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 out0__0_carry__2
       (.CI(out0__0_carry__1_n_0),
        .CO({NLW_out0__0_carry__2_CO_UNCONNECTED[3],out0__0_carry__2_n_1,out0__0_carry__2_n_2,out0__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[12:10]}),
        .O({O,deltaAdd[14:12]}),
        .S(S));
endmodule

(* WL = "16" *) (* WLF = "15" *) (* WLI = "1" *) 
(* W_sel = "2" *) 
(* NotValidForBitStream *)
module ADPCM
   (CLK,
    RST,
    EN,
    x,
    codeWord,
    codeSign);
  input CLK;
  input RST;
  input EN;
  input [15:0]x;
  output codeWord;
  output [1:0]codeSign;

  wire ADDER_n_0;
  wire ADDER_n_1;
  wire ADDER_n_10;
  wire ADDER_n_11;
  wire ADDER_n_13;
  wire ADDER_n_14;
  wire ADDER_n_15;
  wire ADDER_n_16;
  wire ADDER_n_2;
  wire ADDER_n_3;
  wire ADDER_n_4;
  wire ADDER_n_5;
  wire ADDER_n_6;
  wire ADDER_n_7;
  wire ADDER_n_8;
  wire ADDER_n_9;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [15:15]\DQ_CALC/deltaAdd ;
  wire EN;
  wire EN_IBUF;
  wire QUANTIZER_n_17;
  wire QUANTIZER_n_18;
  wire QUANTIZER_n_19;
  wire QUANTIZER_n_20;
  wire QUANTIZER_n_21;
  wire QUANTIZER_n_22;
  wire QUANTIZER_n_23;
  wire QUANTIZER_n_24;
  wire QUANTIZER_n_25;
  wire QUANTIZER_n_26;
  wire QUANTIZER_n_27;
  wire QUANTIZER_n_28;
  wire QUANTIZER_n_29;
  wire QUANTIZER_n_30;
  wire QUANTIZER_n_31;
  wire QUANTIZER_n_33;
  wire QUANTIZER_n_34;
  wire QUANTIZER_n_35;
  wire QUANTIZER_n_36;
  wire QUANTIZER_n_37;
  wire QUANTIZER_n_38;
  wire QUANTIZER_n_39;
  wire QUANTIZER_n_40;
  wire QUANTIZER_n_41;
  wire QUANTIZER_n_42;
  wire QUANTIZER_n_43;
  wire QUANTIZER_n_44;
  wire QUANTIZER_n_45;
  wire QUANTIZER_n_46;
  wire QUANTIZER_n_47;
  wire QUANTIZER_n_48;
  wire RST;
  wire RST_IBUF;
  wire RST_IBUF_BUFG;
  wire SUB_n_1;
  wire SUB_n_10;
  wire SUB_n_11;
  wire SUB_n_12;
  wire SUB_n_13;
  wire SUB_n_14;
  wire SUB_n_15;
  wire SUB_n_16;
  wire SUB_n_17;
  wire SUB_n_18;
  wire SUB_n_19;
  wire SUB_n_2;
  wire SUB_n_20;
  wire SUB_n_21;
  wire SUB_n_22;
  wire SUB_n_23;
  wire SUB_n_24;
  wire SUB_n_25;
  wire SUB_n_26;
  wire SUB_n_27;
  wire SUB_n_28;
  wire SUB_n_29;
  wire SUB_n_3;
  wire SUB_n_30;
  wire SUB_n_31;
  wire SUB_n_32;
  wire SUB_n_4;
  wire SUB_n_5;
  wire SUB_n_6;
  wire SUB_n_7;
  wire SUB_n_8;
  wire SUB_n_9;
  wire [15:15]addOut;
  wire [1:0]codeSign;
  wire [1:1]codeSign_OBUF;
  wire codeWord;
  wire codeWord_OBUF;
  wire [14:0]deltaAdd;
  wire [15:15]deltaOut;
  wire [15:0]input1;
  wire [15:0]x;
  wire [15:0]x_IBUF;
  wire [15:0]xr;

  ADDER_FIXED_POINT ADDER
       (.EN(ADDER_n_16),
        .EN_IBUF(EN_IBUF),
        .O({ADDER_n_0,ADDER_n_1,ADDER_n_2,ADDER_n_3}),
        .Q(xr[14:0]),
        .\Q_reg[11]__0 ({SUB_n_29,SUB_n_30,SUB_n_31,SUB_n_32}),
        .\Q_reg[15]__0 ({SUB_n_17,SUB_n_18,SUB_n_19,SUB_n_20}),
        .\Q_reg[7]__0 ({SUB_n_25,SUB_n_26,SUB_n_27,SUB_n_28}),
        .S({SUB_n_21,SUB_n_22,SUB_n_23,SUB_n_24}),
        .\delta_reg[12] ({ADDER_n_8,ADDER_n_9,ADDER_n_10,ADDER_n_11}),
        .\delta_reg[15] ({addOut,ADDER_n_13,ADDER_n_14,ADDER_n_15}),
        .\delta_reg[8] ({ADDER_n_4,ADDER_n_5,ADDER_n_6,ADDER_n_7}));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  DFF DFF
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(RST_IBUF_BUFG),
        .EN_IBUF(EN_IBUF),
        .O({ADDER_n_0,ADDER_n_1,ADDER_n_2,ADDER_n_3}),
        .Q(xr),
        .\Q_reg[0]__0_0 (ADDER_n_16),
        .\Q_reg[11]__0_0 ({ADDER_n_8,ADDER_n_9,ADDER_n_10,ADDER_n_11}),
        .\Q_reg[15]__0_0 ({addOut,ADDER_n_13,ADDER_n_14,ADDER_n_15}),
        .\Q_reg[7]__0_0 ({ADDER_n_4,ADDER_n_5,ADDER_n_6,ADDER_n_7}));
  TWOS_COMPLEMENT_ONLY DQ_TC
       (.S({QUANTIZER_n_33,QUANTIZER_n_34,QUANTIZER_n_35,QUANTIZER_n_36}),
        .input1(input1),
        .out0_carry__0_i_4__0({QUANTIZER_n_37,QUANTIZER_n_38,QUANTIZER_n_39,QUANTIZER_n_40}),
        .out0_carry__1_i_4__0({QUANTIZER_n_41,QUANTIZER_n_42,QUANTIZER_n_43,QUANTIZER_n_44}),
        .out0_carry__2_i_4__0({QUANTIZER_n_45,QUANTIZER_n_46,QUANTIZER_n_47,QUANTIZER_n_48}));
  IBUF EN_IBUF_inst
       (.I(EN),
        .O(EN_IBUF));
  BIT_QUANTIZER QUANTIZER
       (.AS(RST_IBUF_BUFG),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CO(codeWord_OBUF),
        .DI({SUB_n_5,SUB_n_6,SUB_n_7,SUB_n_8}),
        .O(\DQ_CALC/deltaAdd ),
        .Q({deltaOut,QUANTIZER_n_17,QUANTIZER_n_18,QUANTIZER_n_19,QUANTIZER_n_20,QUANTIZER_n_21,QUANTIZER_n_22,QUANTIZER_n_23,QUANTIZER_n_24,QUANTIZER_n_25,QUANTIZER_n_26,QUANTIZER_n_27,QUANTIZER_n_28,QUANTIZER_n_29,QUANTIZER_n_30,QUANTIZER_n_31}),
        .S({SUB_n_1,SUB_n_2,SUB_n_3,SUB_n_4}),
        .deltaAdd(deltaAdd),
        .\delta_reg[12] ({QUANTIZER_n_41,QUANTIZER_n_42,QUANTIZER_n_43,QUANTIZER_n_44}),
        .\delta_reg[15] ({QUANTIZER_n_45,QUANTIZER_n_46,QUANTIZER_n_47,QUANTIZER_n_48}),
        .\delta_reg[15]_0 ({SUB_n_13,SUB_n_14,SUB_n_15,SUB_n_16}),
        .\delta_reg[15]_1 ({SUB_n_9,SUB_n_10,SUB_n_11,SUB_n_12}),
        .\delta_reg[4] ({QUANTIZER_n_33,QUANTIZER_n_34,QUANTIZER_n_35,QUANTIZER_n_36}),
        .\delta_reg[8] ({QUANTIZER_n_37,QUANTIZER_n_38,QUANTIZER_n_39,QUANTIZER_n_40}));
  BUFG RST_IBUF_BUFG_inst
       (.I(RST_IBUF),
        .O(RST_IBUF_BUFG));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  ADDER_FIXED_POINT_0 SUB
       (.CO(codeWord_OBUF),
        .DI({SUB_n_5,SUB_n_6,SUB_n_7,SUB_n_8}),
        .O(codeSign_OBUF),
        .Q({deltaOut,QUANTIZER_n_17,QUANTIZER_n_18,QUANTIZER_n_19,QUANTIZER_n_20,QUANTIZER_n_21,QUANTIZER_n_22,QUANTIZER_n_23,QUANTIZER_n_24,QUANTIZER_n_25,QUANTIZER_n_26,QUANTIZER_n_27,QUANTIZER_n_28,QUANTIZER_n_29,QUANTIZER_n_30,QUANTIZER_n_31}),
        .\Q_reg[15]__0 (\DQ_CALC/deltaAdd ),
        .\Q_reg[15]__0_0 (xr),
        .S({SUB_n_1,SUB_n_2,SUB_n_3,SUB_n_4}),
        .deltaAdd(deltaAdd),
        .\delta_reg[12] ({SUB_n_29,SUB_n_30,SUB_n_31,SUB_n_32}),
        .\delta_reg[14] ({SUB_n_13,SUB_n_14,SUB_n_15,SUB_n_16}),
        .\delta_reg[15] ({SUB_n_9,SUB_n_10,SUB_n_11,SUB_n_12}),
        .\delta_reg[15]_0 ({SUB_n_17,SUB_n_18,SUB_n_19,SUB_n_20}),
        .\delta_reg[4] ({SUB_n_21,SUB_n_22,SUB_n_23,SUB_n_24}),
        .\delta_reg[8] ({SUB_n_25,SUB_n_26,SUB_n_27,SUB_n_28}),
        .input1(input1),
        .x_IBUF(x_IBUF));
  OBUF \codeSign_OBUF[0]_inst 
       (.I(1'b1),
        .O(codeSign[0]));
  OBUF \codeSign_OBUF[1]_inst 
       (.I(codeSign_OBUF),
        .O(codeSign[1]));
  OBUF codeWord_OBUF_inst
       (.I(codeWord_OBUF),
        .O(codeWord));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[10]_inst 
       (.I(x[10]),
        .O(x_IBUF[10]));
  IBUF \x_IBUF[11]_inst 
       (.I(x[11]),
        .O(x_IBUF[11]));
  IBUF \x_IBUF[12]_inst 
       (.I(x[12]),
        .O(x_IBUF[12]));
  IBUF \x_IBUF[13]_inst 
       (.I(x[13]),
        .O(x_IBUF[13]));
  IBUF \x_IBUF[14]_inst 
       (.I(x[14]),
        .O(x_IBUF[14]));
  IBUF \x_IBUF[15]_inst 
       (.I(x[15]),
        .O(x_IBUF[15]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \x_IBUF[4]_inst 
       (.I(x[4]),
        .O(x_IBUF[4]));
  IBUF \x_IBUF[5]_inst 
       (.I(x[5]),
        .O(x_IBUF[5]));
  IBUF \x_IBUF[6]_inst 
       (.I(x[6]),
        .O(x_IBUF[6]));
  IBUF \x_IBUF[7]_inst 
       (.I(x[7]),
        .O(x_IBUF[7]));
  IBUF \x_IBUF[8]_inst 
       (.I(x[8]),
        .O(x_IBUF[8]));
  IBUF \x_IBUF[9]_inst 
       (.I(x[9]),
        .O(x_IBUF[9]));
endmodule

module BIT_QUANTIZER
   (CO,
    deltaAdd,
    Q,
    O,
    \delta_reg[4] ,
    \delta_reg[8] ,
    \delta_reg[12] ,
    \delta_reg[15] ,
    DI,
    S,
    \delta_reg[15]_0 ,
    \delta_reg[15]_1 ,
    CLK_IBUF_BUFG,
    AS);
  output [0:0]CO;
  output [14:0]deltaAdd;
  output [15:0]Q;
  output [0:0]O;
  output [3:0]\delta_reg[4] ;
  output [3:0]\delta_reg[8] ;
  output [3:0]\delta_reg[12] ;
  output [3:0]\delta_reg[15] ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\delta_reg[15]_0 ;
  input [3:0]\delta_reg[15]_1 ;
  input CLK_IBUF_BUFG;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK_IBUF_BUFG;
  wire [0:0]CO;
  wire DELTA_CALC_n_20;
  wire DELTA_CALC_n_21;
  wire DELTA_CALC_n_22;
  wire DELTA_CALC_n_23;
  wire DELTA_CALC_n_24;
  wire DELTA_CALC_n_25;
  wire DELTA_CALC_n_26;
  wire DELTA_CALC_n_27;
  wire DELTA_CALC_n_28;
  wire DELTA_CALC_n_29;
  wire DELTA_CALC_n_30;
  wire DELTA_CALC_n_31;
  wire DELTA_CALC_n_32;
  wire DELTA_CALC_n_33;
  wire DELTA_CALC_n_34;
  wire DELTA_CALC_n_35;
  wire DELTA_CALC_n_36;
  wire [3:0]DI;
  wire [0:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire [14:0]deltaAdd;
  wire [3:0]\delta_reg[12] ;
  wire [3:0]\delta_reg[15] ;
  wire [3:0]\delta_reg[15]_0 ;
  wire [3:0]\delta_reg[15]_1 ;
  wire [3:0]\delta_reg[4] ;
  wire [3:0]\delta_reg[8] ;

  CODEWORD CODEWORD_CALC
       (.CO(CO),
        .DI(DI),
        .S(S),
        .\delta_reg[15] (\delta_reg[15]_0 ),
        .\delta_reg[15]_0 (\delta_reg[15]_1 ));
  DELTA DELTA_CALC
       (.AS(AS),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CO(CO),
        .DI(DELTA_CALC_n_20),
        .O({O,deltaAdd[14:12]}),
        .Q(Q),
        .S({DELTA_CALC_n_21,DELTA_CALC_n_22,DELTA_CALC_n_23,DELTA_CALC_n_24}),
        .\delta_reg[10]_0 ({DELTA_CALC_n_33,DELTA_CALC_n_34,DELTA_CALC_n_35,DELTA_CALC_n_36}),
        .\delta_reg[15]_0 (\delta_reg[15] ),
        .\delta_reg[2]_0 ({DELTA_CALC_n_25,DELTA_CALC_n_26,DELTA_CALC_n_27,DELTA_CALC_n_28}),
        .\delta_reg[6]_0 ({DELTA_CALC_n_29,DELTA_CALC_n_30,DELTA_CALC_n_31,DELTA_CALC_n_32}));
  DQ DQ_CALC
       (.CO(CO),
        .DI(DELTA_CALC_n_20),
        .O(O),
        .Q(Q[13:1]),
        .S({DELTA_CALC_n_21,DELTA_CALC_n_22,DELTA_CALC_n_23,DELTA_CALC_n_24}),
        .deltaAdd(deltaAdd),
        .\delta_reg[12] (\delta_reg[12] ),
        .\delta_reg[4] (\delta_reg[4] ),
        .\delta_reg[8] (\delta_reg[8] ),
        .out0_carry__0_i_4__0({DELTA_CALC_n_29,DELTA_CALC_n_30,DELTA_CALC_n_31,DELTA_CALC_n_32}),
        .out0_carry__1_i_4__0({DELTA_CALC_n_33,DELTA_CALC_n_34,DELTA_CALC_n_35,DELTA_CALC_n_36}),
        .out0_carry_i_4__0({DELTA_CALC_n_25,DELTA_CALC_n_26,DELTA_CALC_n_27,DELTA_CALC_n_28}));
endmodule

module CODEWORD
   (CO,
    DI,
    S,
    \delta_reg[15] ,
    \delta_reg[15]_0 );
  output [0:0]CO;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\delta_reg[15] ;
  input [3:0]\delta_reg[15]_0 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire codeWord0_carry__0_n_1;
  wire codeWord0_carry__0_n_2;
  wire codeWord0_carry__0_n_3;
  wire codeWord0_carry_n_0;
  wire codeWord0_carry_n_1;
  wire codeWord0_carry_n_2;
  wire codeWord0_carry_n_3;
  wire [3:0]\delta_reg[15] ;
  wire [3:0]\delta_reg[15]_0 ;
  wire [3:0]NLW_codeWord0_carry_O_UNCONNECTED;
  wire [3:0]NLW_codeWord0_carry__0_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 codeWord0_carry
       (.CI(1'b0),
        .CO({codeWord0_carry_n_0,codeWord0_carry_n_1,codeWord0_carry_n_2,codeWord0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_codeWord0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 codeWord0_carry__0
       (.CI(codeWord0_carry_n_0),
        .CO({CO,codeWord0_carry__0_n_1,codeWord0_carry__0_n_2,codeWord0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\delta_reg[15] ),
        .O(NLW_codeWord0_carry__0_O_UNCONNECTED[3:0]),
        .S(\delta_reg[15]_0 ));
endmodule

module DELTA
   (\delta_reg[15]_0 ,
    Q,
    DI,
    S,
    \delta_reg[2]_0 ,
    \delta_reg[6]_0 ,
    \delta_reg[10]_0 ,
    O,
    CO,
    CLK_IBUF_BUFG,
    AS);
  output [3:0]\delta_reg[15]_0 ;
  output [15:0]Q;
  output [0:0]DI;
  output [3:0]S;
  output [3:0]\delta_reg[2]_0 ;
  output [3:0]\delta_reg[6]_0 ;
  output [3:0]\delta_reg[10]_0 ;
  input [3:0]O;
  input [0:0]CO;
  input CLK_IBUF_BUFG;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [3:0]O;
  wire [15:0]Q;
  wire [3:0]S;
  wire [15:0]deltaP1;
  wire \delta[14]_i_2_n_0 ;
  wire \delta[15]_i_2_n_0 ;
  wire \delta[15]_i_3_n_0 ;
  wire [3:0]\delta_reg[10]_0 ;
  wire [3:0]\delta_reg[15]_0 ;
  wire [3:0]\delta_reg[2]_0 ;
  wire [3:0]\delta_reg[6]_0 ;

  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__2_i_1
       (.I0(O[3]),
        .I1(CO),
        .I2(Q[15]),
        .O(\delta_reg[15]_0 [3]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__2_i_2
       (.I0(O[2]),
        .I1(CO),
        .I2(Q[15]),
        .O(\delta_reg[15]_0 [2]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__2_i_3
       (.I0(O[1]),
        .I1(CO),
        .I2(Q[14]),
        .O(\delta_reg[15]_0 [1]));
  LUT3 #(
    .INIT(8'h47)) 
    converted0_carry__2_i_4
       (.I0(O[0]),
        .I1(CO),
        .I2(Q[13]),
        .O(\delta_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'h55540000)) 
    \delta[0]_i_1 
       (.I0(CO),
        .I1(Q[8]),
        .I2(\delta[15]_i_2_n_0 ),
        .I3(\delta[15]_i_3_n_0 ),
        .I4(Q[1]),
        .O(deltaP1[0]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[10]_i_1 
       (.I0(Q[9]),
        .I1(Q[11]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[10]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[11]_i_1 
       (.I0(Q[10]),
        .I1(Q[12]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[11]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[12]_i_1 
       (.I0(Q[11]),
        .I1(Q[13]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[12]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[13]_i_1 
       (.I0(Q[12]),
        .I1(Q[14]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[13]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[14]_i_1 
       (.I0(Q[13]),
        .I1(Q[15]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[14]));
  LUT3 #(
    .INIT(8'h47)) 
    \delta[14]_i_2 
       (.I0(Q[6]),
        .I1(CO),
        .I2(Q[8]),
        .O(\delta[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \delta[15]_i_1 
       (.I0(CO),
        .I1(Q[6]),
        .I2(\delta[15]_i_2_n_0 ),
        .I3(\delta[15]_i_3_n_0 ),
        .I4(Q[14]),
        .O(deltaP1[15]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delta[15]_i_2 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[14]),
        .I3(Q[12]),
        .O(\delta[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCFEFEFFFC)) 
    \delta[15]_i_3 
       (.I0(Q[8]),
        .I1(Q[11]),
        .I2(Q[13]),
        .I3(Q[15]),
        .I4(CO),
        .I5(Q[7]),
        .O(\delta[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[1]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[2]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[3]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[4]));
  LUT6 #(
    .INIT(64'hAAA8AAA8CCCCCCC0)) 
    \delta[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(Q[8]),
        .I5(CO),
        .O(deltaP1[5]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[6]_i_1 
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[6]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \delta[7]_i_1 
       (.I0(\delta[15]_i_3_n_0 ),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(\delta[14]_i_2_n_0 ),
        .O(deltaP1[7]));
  LUT6 #(
    .INIT(64'hAAA0AAAACCC0CCCC)) 
    \delta[8]_i_1 
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(\delta[15]_i_3_n_0 ),
        .I3(\delta[15]_i_2_n_0 ),
        .I4(\delta[14]_i_2_n_0 ),
        .I5(CO),
        .O(deltaP1[8]));
  LUT6 #(
    .INIT(64'hFFFC0000AAAAA8A8)) 
    \delta[9]_i_1 
       (.I0(Q[10]),
        .I1(\delta[15]_i_3_n_0 ),
        .I2(\delta[15]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(CO),
        .O(deltaP1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[6]),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \delta_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(deltaP1[7]),
        .PRE(AS),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \delta_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AS),
        .D(deltaP1[9]),
        .Q(Q[9]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__0_i_1
       (.I0(Q[6]),
        .I1(Q[8]),
        .O(\delta_reg[6]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__0_i_2
       (.I0(Q[5]),
        .I1(Q[7]),
        .O(\delta_reg[6]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__0_i_3
       (.I0(Q[4]),
        .I1(Q[6]),
        .O(\delta_reg[6]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__0_i_4
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(\delta_reg[6]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__1_i_1
       (.I0(Q[10]),
        .I1(Q[12]),
        .O(\delta_reg[10]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__1_i_2
       (.I0(Q[9]),
        .I1(Q[11]),
        .O(\delta_reg[10]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__1_i_3
       (.I0(Q[8]),
        .I1(Q[10]),
        .O(\delta_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__1_i_4
       (.I0(Q[7]),
        .I1(Q[9]),
        .O(\delta_reg[10]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__2_i_1
       (.I0(Q[15]),
        .I1(Q[14]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__2_i_2
       (.I0(Q[15]),
        .I1(Q[13]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__2_i_3
       (.I0(Q[12]),
        .I1(Q[14]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry__2_i_4
       (.I0(Q[11]),
        .I1(Q[13]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'hB)) 
    out0__0_carry_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry_i_2
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(\delta_reg[2]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    out0__0_carry_i_3
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(\delta_reg[2]_0 [2]));
  LUT3 #(
    .INIT(8'hD2)) 
    out0__0_carry_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\delta_reg[2]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    out0__0_carry_i_5
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\delta_reg[2]_0 [0]));
endmodule

module DFF
   (Q,
    E,
    \Q_reg[0]__0_0 ,
    EN_IBUF,
    \Q_reg[15]__0_0 ,
    CLK_IBUF_BUFG,
    \Q_reg[11]__0_0 ,
    \Q_reg[7]__0_0 ,
    O);
  output [15:0]Q;
  input [0:0]E;
  input \Q_reg[0]__0_0 ;
  input EN_IBUF;
  input [3:0]\Q_reg[15]__0_0 ;
  input CLK_IBUF_BUFG;
  input [3:0]\Q_reg[11]__0_0 ;
  input [3:0]\Q_reg[7]__0_0 ;
  input [3:0]O;

  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire EN_IBUF;
  wire [3:0]O;
  wire [15:0]Q;
  wire \Q_reg[0]__0_0 ;
  wire [3:0]\Q_reg[11]__0_0 ;
  wire [3:0]\Q_reg[15]__0_0 ;
  wire [3:0]\Q_reg[7]__0_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(O[0]),
        .Q(Q[0]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[10]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[10]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[11]__0_0 [2]),
        .Q(Q[10]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[11]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[11]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[11]__0_0 [3]),
        .Q(Q[11]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[12]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[12]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[15]__0_0 [0]),
        .Q(Q[12]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[13]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[13]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[15]__0_0 [1]),
        .Q(Q[13]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[14]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[14]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[15]__0_0 [2]),
        .Q(Q[14]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[15]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[15]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[15]__0_0 [3]),
        .Q(Q[15]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(O[1]),
        .Q(Q[1]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[2]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(O[2]),
        .Q(Q[2]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[3]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(O[3]),
        .Q(Q[3]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[4]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[7]__0_0 [0]),
        .Q(Q[4]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[5]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[7]__0_0 [1]),
        .Q(Q[5]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[6]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[7]__0_0 [2]),
        .Q(Q[6]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[7]__0_0 [3]),
        .Q(Q[7]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[8]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[11]__0_0 [0]),
        .Q(Q[8]),
        .R(\Q_reg[0]__0_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(E),
        .GE(1'b1),
        .Q(Q[9]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[9]__0 
       (.C(CLK_IBUF_BUFG),
        .CE(EN_IBUF),
        .D(\Q_reg[11]__0_0 [1]),
        .Q(Q[9]),
        .R(\Q_reg[0]__0_0 ));
endmodule

module DQ
   (deltaAdd,
    O,
    \delta_reg[4] ,
    \delta_reg[8] ,
    \delta_reg[12] ,
    Q,
    DI,
    out0_carry_i_4__0,
    out0_carry__0_i_4__0,
    out0_carry__1_i_4__0,
    S,
    CO);
  output [14:0]deltaAdd;
  output [0:0]O;
  output [3:0]\delta_reg[4] ;
  output [3:0]\delta_reg[8] ;
  output [3:0]\delta_reg[12] ;
  input [12:0]Q;
  input [0:0]DI;
  input [3:0]out0_carry_i_4__0;
  input [3:0]out0_carry__0_i_4__0;
  input [3:0]out0_carry__1_i_4__0;
  input [3:0]S;
  input [0:0]CO;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]O;
  wire [12:0]Q;
  wire [3:0]S;
  wire [14:0]deltaAdd;
  wire [3:0]\delta_reg[12] ;
  wire [3:0]\delta_reg[4] ;
  wire [3:0]\delta_reg[8] ;
  wire [3:0]out0_carry__0_i_4__0;
  wire [3:0]out0_carry__1_i_4__0;
  wire [3:0]out0_carry_i_4__0;

  ADDER_FIXED_POINT_1 ADD_DELTA
       (.CO(CO),
        .DI(DI),
        .O(O),
        .Q(Q),
        .S(S),
        .deltaAdd(deltaAdd),
        .\delta_reg[12] (\delta_reg[12] ),
        .\delta_reg[4] (\delta_reg[4] ),
        .\delta_reg[8] (\delta_reg[8] ),
        .out0_carry__0_i_4__0(out0_carry__0_i_4__0),
        .out0_carry__1_i_4__0(out0_carry__1_i_4__0),
        .out0_carry_i_4__0(out0_carry_i_4__0));
endmodule

module TWOS_COMPLEMENT_ONLY
   (input1,
    S,
    out0_carry__0_i_4__0,
    out0_carry__1_i_4__0,
    out0_carry__2_i_4__0);
  output [15:0]input1;
  input [3:0]S;
  input [3:0]out0_carry__0_i_4__0;
  input [3:0]out0_carry__1_i_4__0;
  input [3:0]out0_carry__2_i_4__0;

  wire [3:0]S;
  wire converted0_carry__0_n_0;
  wire converted0_carry__0_n_1;
  wire converted0_carry__0_n_2;
  wire converted0_carry__0_n_3;
  wire converted0_carry__1_n_0;
  wire converted0_carry__1_n_1;
  wire converted0_carry__1_n_2;
  wire converted0_carry__1_n_3;
  wire converted0_carry__2_n_1;
  wire converted0_carry__2_n_2;
  wire converted0_carry__2_n_3;
  wire converted0_carry_n_0;
  wire converted0_carry_n_1;
  wire converted0_carry_n_2;
  wire converted0_carry_n_3;
  wire [15:0]input1;
  wire [3:0]out0_carry__0_i_4__0;
  wire [3:0]out0_carry__1_i_4__0;
  wire [3:0]out0_carry__2_i_4__0;
  wire [3:3]NLW_converted0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 converted0_carry
       (.CI(1'b0),
        .CO({converted0_carry_n_0,converted0_carry_n_1,converted0_carry_n_2,converted0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(input1[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 converted0_carry__0
       (.CI(converted0_carry_n_0),
        .CO({converted0_carry__0_n_0,converted0_carry__0_n_1,converted0_carry__0_n_2,converted0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(input1[7:4]),
        .S(out0_carry__0_i_4__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 converted0_carry__1
       (.CI(converted0_carry__0_n_0),
        .CO({converted0_carry__1_n_0,converted0_carry__1_n_1,converted0_carry__1_n_2,converted0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(input1[11:8]),
        .S(out0_carry__1_i_4__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 converted0_carry__2
       (.CI(converted0_carry__1_n_0),
        .CO({NLW_converted0_carry__2_CO_UNCONNECTED[3],converted0_carry__2_n_1,converted0_carry__2_n_2,converted0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(input1[15:12]),
        .S(out0_carry__2_i_4__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
