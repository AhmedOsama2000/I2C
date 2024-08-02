
module i2c_master_bit_ctrl_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33;

  INV_X1 U1 ( .A(n31), .ZN(n3) );
  INV_X1 U2 ( .A(n28), .ZN(n9) );
  INV_X1 U3 ( .A(n27), .ZN(n8) );
  INV_X1 U4 ( .A(n26), .ZN(n7) );
  INV_X1 U5 ( .A(n25), .ZN(n6) );
  INV_X1 U6 ( .A(n29), .ZN(n10) );
  INV_X1 U7 ( .A(n32), .ZN(SUM[11]) );
  INV_X1 U8 ( .A(n20), .ZN(SUM[9]) );
  INV_X1 U9 ( .A(n24), .ZN(SUM[7]) );
  INV_X1 U10 ( .A(A[6]), .ZN(n17) );
  INV_X1 U11 ( .A(A[5]), .ZN(n16) );
  INV_X1 U12 ( .A(A[4]), .ZN(n15) );
  INV_X1 U13 ( .A(A[3]), .ZN(n14) );
  INV_X1 U14 ( .A(A[2]), .ZN(n13) );
  INV_X1 U15 ( .A(A[1]), .ZN(n12) );
  INV_X1 U16 ( .A(A[0]), .ZN(SUM[0]) );
  OR2_X1 U17 ( .A1(n6), .A2(A[6]), .ZN(n1) );
  INV_X1 U18 ( .A(A[8]), .ZN(n18) );
  INV_X1 U19 ( .A(A[10]), .ZN(n19) );
  AOI21_X1 U20 ( .B1(n21), .B2(A[9]), .A(n22), .ZN(n20) );
  OAI21_X1 U21 ( .B1(n23), .B2(n18), .A(n21), .ZN(SUM[8]) );
  AOI21_X1 U22 ( .B1(n1), .B2(A[7]), .A(n23), .ZN(n24) );
  OAI21_X1 U23 ( .B1(n25), .B2(n17), .A(n1), .ZN(SUM[6]) );
  OAI21_X1 U24 ( .B1(n26), .B2(n16), .A(n6), .ZN(SUM[5]) );
  OAI21_X1 U25 ( .B1(n27), .B2(n15), .A(n7), .ZN(SUM[4]) );
  OAI21_X1 U26 ( .B1(n28), .B2(n14), .A(n8), .ZN(SUM[3]) );
  OAI21_X1 U27 ( .B1(n29), .B2(n13), .A(n9), .ZN(SUM[2]) );
  OAI21_X1 U28 ( .B1(SUM[0]), .B2(n12), .A(n10), .ZN(SUM[1]) );
  XOR2_X1 U29 ( .A(A[13]), .B(n30), .Z(SUM[13]) );
  NOR2_X1 U30 ( .A1(A[12]), .A2(n3), .ZN(n30) );
  XNOR2_X1 U31 ( .A(A[12]), .B(n3), .ZN(SUM[12]) );
  AOI21_X1 U32 ( .B1(n33), .B2(A[11]), .A(n31), .ZN(n32) );
  NOR2_X1 U33 ( .A1(n33), .A2(A[11]), .ZN(n31) );
  OAI21_X1 U34 ( .B1(n22), .B2(n19), .A(n33), .ZN(SUM[10]) );
  NAND2_X1 U35 ( .A1(n22), .A2(n19), .ZN(n33) );
  NOR2_X1 U36 ( .A1(n21), .A2(A[9]), .ZN(n22) );
  NAND2_X1 U37 ( .A1(n23), .A2(n18), .ZN(n21) );
  NOR2_X1 U38 ( .A1(n1), .A2(A[7]), .ZN(n23) );
  NOR2_X1 U39 ( .A1(n7), .A2(A[5]), .ZN(n25) );
  NOR2_X1 U40 ( .A1(n8), .A2(A[4]), .ZN(n26) );
  NOR2_X1 U41 ( .A1(n9), .A2(A[3]), .ZN(n27) );
  NOR2_X1 U42 ( .A1(n10), .A2(A[2]), .ZN(n28) );
  NOR2_X1 U43 ( .A1(A[1]), .A2(A[0]), .ZN(n29) );
endmodule


module i2c_master_bit_ctrl_DW01_dec_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n3, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37;

  INV_X1 U1 ( .A(n34), .ZN(n3) );
  INV_X1 U2 ( .A(n29), .ZN(n8) );
  INV_X1 U3 ( .A(n28), .ZN(n7) );
  INV_X1 U4 ( .A(n27), .ZN(n6) );
  INV_X1 U5 ( .A(n30), .ZN(n9) );
  INV_X1 U6 ( .A(n31), .ZN(n10) );
  INV_X1 U7 ( .A(n36), .ZN(SUM[11]) );
  INV_X1 U8 ( .A(n22), .ZN(SUM[9]) );
  INV_X1 U9 ( .A(n26), .ZN(SUM[7]) );
  INV_X1 U10 ( .A(A[6]), .ZN(n17) );
  INV_X1 U11 ( .A(A[5]), .ZN(n16) );
  INV_X1 U12 ( .A(A[4]), .ZN(n15) );
  INV_X1 U13 ( .A(A[3]), .ZN(n14) );
  INV_X1 U14 ( .A(A[2]), .ZN(n13) );
  OR2_X1 U15 ( .A1(n6), .A2(A[6]), .ZN(n1) );
  INV_X1 U16 ( .A(A[0]), .ZN(SUM[0]) );
  INV_X1 U17 ( .A(A[12]), .ZN(n20) );
  INV_X1 U18 ( .A(A[10]), .ZN(n19) );
  INV_X1 U19 ( .A(A[8]), .ZN(n18) );
  INV_X1 U20 ( .A(A[13]), .ZN(n21) );
  INV_X1 U21 ( .A(A[1]), .ZN(n12) );
  AOI21_X1 U22 ( .B1(n23), .B2(A[9]), .A(n24), .ZN(n22) );
  OAI21_X1 U23 ( .B1(n25), .B2(n18), .A(n23), .ZN(SUM[8]) );
  AOI21_X1 U24 ( .B1(n1), .B2(A[7]), .A(n25), .ZN(n26) );
  OAI21_X1 U25 ( .B1(n27), .B2(n17), .A(n1), .ZN(SUM[6]) );
  OAI21_X1 U26 ( .B1(n28), .B2(n16), .A(n6), .ZN(SUM[5]) );
  OAI21_X1 U27 ( .B1(n29), .B2(n15), .A(n7), .ZN(SUM[4]) );
  OAI21_X1 U28 ( .B1(n30), .B2(n14), .A(n8), .ZN(SUM[3]) );
  OAI21_X1 U29 ( .B1(n31), .B2(n13), .A(n9), .ZN(SUM[2]) );
  OAI21_X1 U30 ( .B1(SUM[0]), .B2(n12), .A(n10), .ZN(SUM[1]) );
  XOR2_X1 U31 ( .A(A[15]), .B(n32), .Z(SUM[15]) );
  NOR2_X1 U32 ( .A1(A[14]), .A2(n33), .ZN(n32) );
  XNOR2_X1 U33 ( .A(A[14]), .B(n33), .ZN(SUM[14]) );
  OAI21_X1 U34 ( .B1(n3), .B2(n21), .A(n33), .ZN(SUM[13]) );
  NAND2_X1 U35 ( .A1(n3), .A2(n21), .ZN(n33) );
  OAI21_X1 U36 ( .B1(n35), .B2(n20), .A(n34), .ZN(SUM[12]) );
  NAND2_X1 U37 ( .A1(n35), .A2(n20), .ZN(n34) );
  AOI21_X1 U38 ( .B1(n37), .B2(A[11]), .A(n35), .ZN(n36) );
  NOR2_X1 U39 ( .A1(n37), .A2(A[11]), .ZN(n35) );
  OAI21_X1 U40 ( .B1(n24), .B2(n19), .A(n37), .ZN(SUM[10]) );
  NAND2_X1 U41 ( .A1(n24), .A2(n19), .ZN(n37) );
  NOR2_X1 U42 ( .A1(n23), .A2(A[9]), .ZN(n24) );
  NAND2_X1 U43 ( .A1(n25), .A2(n18), .ZN(n23) );
  NOR2_X1 U44 ( .A1(n1), .A2(A[7]), .ZN(n25) );
  NOR2_X1 U45 ( .A1(n7), .A2(A[5]), .ZN(n27) );
  NOR2_X1 U46 ( .A1(n8), .A2(A[4]), .ZN(n28) );
  NOR2_X1 U47 ( .A1(n9), .A2(A[3]), .ZN(n29) );
  NOR2_X1 U48 ( .A1(n10), .A2(A[2]), .ZN(n30) );
  NOR2_X1 U49 ( .A1(A[1]), .A2(A[0]), .ZN(n31) );
endmodule


module i2c_master_bit_ctrl ( clk, rst, nReset, ena, clk_cnt, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   N19, N21, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N59, N60, N61, N62, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N92, N93, N94, N109, N110, sto_condition,
         N115, N116, N118, N123, N498, n1, n2, n4, n5, n7, n9, n11, n13, n15,
         n17, n19, n21, n23, n25, n27, n29, n31, n32, n33, n35, n39, n40, n41,
         n42, n43, n46, n47, n48, n49, n50, n51, n52, n53, n54, n57, n58, n59,
         n60, n61, n62, n63, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n80, n81, n83, n84, n87, n88, n89, n90, n91, n92, n93, n95,
         n97, n99, n101, n102, n104, n106, n108, n111, n112, n117, n119, n120,
         n121, n122, n123, n124, n126, n128, n129, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n154, n160, n162, n163, n164,
         n165, n166, n167, n168, n169, n171, n174, n176, n177, n178, n179,
         n180, n181, n182, n185, n186, n187, n188, n189, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n3, n6, n8, n10, n12, n14, n16,
         n18, n20, n22, n24, n26, n28, n30, n34, n36, n37, n38, n44, n45, n55,
         n56, n64, n65, n78, n79, n82, n85, n86, n94, n96, n98, n100, n103,
         n105, n107, n109, n110, n113, n114, n115, n116, n118, n125, n127,
         n130, n131, n153, n155, n156, n157, n158, n159, n161, n170, n172,
         n173;
  wire   [15:0] cnt;
  wire   [13:0] filter_cnt;
  assign sda_o = 1'b0;
  assign scl_o = 1'b0;

  DFFS_X1 \fSCL_reg[0]  ( .D(n279), .CK(clk), .SN(nReset), .QN(n214) );
  DFFS_X1 \fSCL_reg[1]  ( .D(n278), .CK(clk), .SN(nReset), .QN(n213) );
  DFFS_X1 \fSCL_reg[2]  ( .D(n277), .CK(clk), .SN(nReset), .QN(n212) );
  DFFS_X1 \fSDA_reg[0]  ( .D(n276), .CK(clk), .SN(nReset), .QN(n217) );
  DFFS_X1 \fSDA_reg[1]  ( .D(n275), .CK(clk), .SN(nReset), .QN(n216) );
  DFFS_X1 \fSDA_reg[2]  ( .D(n274), .CK(clk), .SN(nReset), .QN(n215) );
  SDFFS_X1 dSCL_reg ( .D(1'b1), .SI(rst), .SE(n12), .CK(clk), .SN(nReset), 
        .QN(n187) );
  SDFFS_X1 dSDA_reg ( .D(1'b1), .SI(rst), .SE(n16), .CK(clk), .SN(nReset), 
        .QN(n220) );
  DFFR_X1 busy_reg ( .D(N118), .CK(clk), .RN(nReset), .Q(busy), .QN(n178) );
  DFF_X1 dout_reg ( .D(n189), .CK(clk), .Q(dout), .QN(n188) );
  DFF_X1 dscl_oen_reg ( .D(scl_oen), .CK(clk), .QN(n179) );
  DFFS_X1 clk_en_reg ( .D(N21), .CK(clk), .SN(nReset), .QN(n193) );
  DFFR_X1 al_reg ( .D(N123), .CK(clk), .RN(nReset), .Q(al), .QN(n180) );
  DFFR_X1 \cnt_reg[0]  ( .D(n253), .CK(clk), .RN(nReset), .Q(cnt[0]), .QN(n209) );
  DFFR_X1 \cnt_reg[1]  ( .D(n252), .CK(clk), .RN(nReset), .Q(cnt[1]), .QN(n208) );
  DFFR_X1 \cnt_reg[2]  ( .D(n251), .CK(clk), .RN(nReset), .Q(cnt[2]), .QN(n207) );
  DFFR_X1 \cnt_reg[3]  ( .D(n250), .CK(clk), .RN(nReset), .Q(cnt[3]), .QN(n206) );
  DFFR_X1 \cnt_reg[4]  ( .D(n249), .CK(clk), .RN(nReset), .Q(cnt[4]), .QN(n205) );
  DFFR_X1 \cnt_reg[5]  ( .D(n248), .CK(clk), .RN(nReset), .Q(cnt[5]), .QN(n204) );
  DFFR_X1 \cnt_reg[6]  ( .D(n247), .CK(clk), .RN(nReset), .Q(cnt[6]), .QN(n203) );
  DFFR_X1 \cnt_reg[7]  ( .D(n246), .CK(clk), .RN(nReset), .Q(cnt[7]), .QN(n202) );
  DFFR_X1 \cnt_reg[8]  ( .D(n245), .CK(clk), .RN(nReset), .Q(cnt[8]), .QN(n201) );
  DFFR_X1 \cnt_reg[9]  ( .D(n244), .CK(clk), .RN(nReset), .Q(cnt[9]), .QN(n200) );
  DFFR_X1 \cnt_reg[10]  ( .D(n243), .CK(clk), .RN(nReset), .Q(cnt[10]), .QN(
        n199) );
  DFFR_X1 \cnt_reg[11]  ( .D(n242), .CK(clk), .RN(nReset), .Q(cnt[11]), .QN(
        n198) );
  DFFR_X1 \cnt_reg[12]  ( .D(n241), .CK(clk), .RN(nReset), .Q(cnt[12]), .QN(
        n197) );
  DFFR_X1 \cnt_reg[13]  ( .D(n240), .CK(clk), .RN(nReset), .Q(cnt[13]), .QN(
        n196) );
  DFFR_X1 \cnt_reg[14]  ( .D(n239), .CK(clk), .RN(nReset), .Q(cnt[14]), .QN(
        n195) );
  DFFR_X1 \cnt_reg[15]  ( .D(n238), .CK(clk), .RN(nReset), .Q(cnt[15]), .QN(
        n194) );
  OAI33_X1 U213 ( .A1(n110), .A2(n185), .A3(n113), .B1(n18), .B2(n28), .B3(n24), .ZN(n169) );
  NOR2_X2 U39 ( .A1(n32), .A2(N21), .ZN(n5) );
  i2c_master_bit_ctrl_DW01_dec_0 sub_277 ( .A(filter_cnt), .SUM({N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  i2c_master_bit_ctrl_DW01_dec_1 sub_245 ( .A(cnt), .SUM({N39, N38, N37, N36, 
        N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24}) );
  DFFS_X1 sSDA_reg ( .D(N110), .CK(clk), .SN(nReset), .Q(n185), .QN(n16) );
  DFFS_X1 sSCL_reg ( .D(N109), .CK(clk), .SN(nReset), .Q(n186), .QN(n12) );
  DFFS_X1 sda_oen_reg ( .D(n254), .CK(clk), .SN(nReset), .Q(sda_oen), .QN(n113) );
  DFFS_X1 scl_oen_reg ( .D(n273), .CK(clk), .SN(nReset), .Q(scl_oen), .QN(n20)
         );
  DFFR_X1 sto_condition_reg ( .D(N116), .CK(clk), .RN(nReset), .Q(
        sto_condition), .QN(n18) );
  DFFR_X1 slave_wait_reg ( .D(N19), .CK(clk), .RN(nReset), .QN(n22) );
  DFFR_X1 \filter_cnt_reg[4]  ( .D(N85), .CK(clk), .RN(nReset), .Q(
        filter_cnt[4]) );
  DFFR_X1 \filter_cnt_reg[3]  ( .D(N84), .CK(clk), .RN(nReset), .Q(
        filter_cnt[3]) );
  DFFR_X1 \filter_cnt_reg[2]  ( .D(N83), .CK(clk), .RN(nReset), .Q(
        filter_cnt[2]) );
  DFFR_X1 \filter_cnt_reg[1]  ( .D(N82), .CK(clk), .RN(nReset), .Q(
        filter_cnt[1]) );
  DFFR_X1 \filter_cnt_reg[0]  ( .D(N81), .CK(clk), .RN(nReset), .Q(
        filter_cnt[0]) );
  DFFR_X1 \filter_cnt_reg[5]  ( .D(N86), .CK(clk), .RN(nReset), .Q(
        filter_cnt[5]) );
  DFFR_X1 cmd_ack_reg ( .D(N498), .CK(clk), .RN(nReset), .Q(cmd_ack) );
  DFFR_X1 \filter_cnt_reg[6]  ( .D(N87), .CK(clk), .RN(nReset), .Q(
        filter_cnt[6]) );
  DFFR_X1 \filter_cnt_reg[7]  ( .D(N88), .CK(clk), .RN(nReset), .Q(
        filter_cnt[7]) );
  DFFR_X1 \filter_cnt_reg[8]  ( .D(N89), .CK(clk), .RN(nReset), .Q(
        filter_cnt[8]) );
  DFFR_X1 \filter_cnt_reg[9]  ( .D(N90), .CK(clk), .RN(nReset), .Q(
        filter_cnt[9]) );
  DFFR_X1 \filter_cnt_reg[10]  ( .D(N91), .CK(clk), .RN(nReset), .Q(
        filter_cnt[10]) );
  DFFR_X1 \filter_cnt_reg[11]  ( .D(N92), .CK(clk), .RN(nReset), .Q(
        filter_cnt[11]) );
  DFFR_X1 \filter_cnt_reg[12]  ( .D(N93), .CK(clk), .RN(nReset), .Q(
        filter_cnt[12]) );
  DFFR_X1 sda_chk_reg ( .D(n272), .CK(clk), .RN(nReset), .QN(n110) );
  DFFR_X1 \filter_cnt_reg[13]  ( .D(N94), .CK(clk), .RN(nReset), .Q(
        filter_cnt[13]) );
  DFFR_X1 \cSDA_reg[1]  ( .D(N62), .CK(clk), .RN(nReset), .QN(n210) );
  DFFR_X1 \cSCL_reg[1]  ( .D(N60), .CK(clk), .RN(nReset), .QN(n211) );
  DFFR_X1 sta_condition_reg ( .D(N115), .CK(clk), .RN(nReset), .QN(n177) );
  DFFR_X1 \cSDA_reg[0]  ( .D(N61), .CK(clk), .RN(nReset), .QN(n182) );
  DFFR_X1 \cSCL_reg[0]  ( .D(N59), .CK(clk), .RN(nReset), .QN(n181) );
  DFFR_X1 cmd_stop_reg ( .D(n192), .CK(clk), .RN(nReset), .Q(n24) );
  DFFR_X1 \c_state_reg[9]  ( .D(n262), .CK(clk), .RN(nReset), .Q(n85), .QN(
        n228) );
  DFFR_X1 \c_state_reg[16]  ( .D(n255), .CK(clk), .RN(nReset), .Q(n86), .QN(
        n221) );
  DFFR_X1 \c_state_reg[15]  ( .D(n256), .CK(clk), .RN(nReset), .Q(n96), .QN(
        n222) );
  DFFR_X1 \c_state_reg[14]  ( .D(n257), .CK(clk), .RN(nReset), .Q(n94), .QN(
        n223) );
  DFFR_X1 \c_state_reg[12]  ( .D(n259), .CK(clk), .RN(nReset), .Q(n109), .QN(
        n225) );
  DFFR_X1 \c_state_reg[11]  ( .D(n260), .CK(clk), .RN(nReset), .Q(n98), .QN(
        n226) );
  DFFR_X1 \c_state_reg[10]  ( .D(n261), .CK(clk), .RN(nReset), .Q(n107), .QN(
        n227) );
  DFFR_X1 \c_state_reg[8]  ( .D(n263), .CK(clk), .RN(nReset), .Q(n105), .QN(
        n229) );
  DFFR_X1 \c_state_reg[6]  ( .D(n265), .CK(clk), .RN(nReset), .Q(n100), .QN(
        n231) );
  DFFR_X1 \c_state_reg[4]  ( .D(n267), .CK(clk), .RN(nReset), .Q(n82), .QN(
        n233) );
  DFFR_X1 \c_state_reg[3]  ( .D(n268), .CK(clk), .RN(nReset), .Q(n79), .QN(
        n234) );
  DFFR_X1 \c_state_reg[2]  ( .D(n269), .CK(clk), .RN(nReset), .Q(n78), .QN(
        n235) );
  DFFR_X1 \c_state_reg[1]  ( .D(n270), .CK(clk), .RN(nReset), .Q(n64), .QN(
        n236) );
  DFFR_X1 \c_state_reg[7]  ( .D(n264), .CK(clk), .RN(nReset), .Q(n103), .QN(
        n230) );
  DFFR_X1 \c_state_reg[5]  ( .D(n266), .CK(clk), .RN(nReset), .Q(n55), .QN(
        n232) );
  DFFR_X1 \c_state_reg[13]  ( .D(n258), .CK(clk), .RN(nReset), .Q(n44), .QN(
        n224) );
  DFFR_X1 \c_state_reg[0]  ( .D(n271), .CK(clk), .RN(nReset), .Q(n56), .QN(
        n237) );
  INV_X1 U3 ( .A(n32), .ZN(n1) );
  INV_X1 U4 ( .A(n70), .ZN(n61) );
  INV_X1 U5 ( .A(n76), .ZN(n30) );
  INV_X1 U6 ( .A(N21), .ZN(n2) );
  NOR2_X1 U7 ( .A1(n22), .A2(N21), .ZN(n32) );
  NOR3_X1 U8 ( .A1(n56), .A2(n103), .A3(n99), .ZN(n93) );
  NOR2_X1 U9 ( .A1(n55), .A2(n82), .ZN(n106) );
  INV_X1 U10 ( .A(n122), .ZN(n123) );
  INV_X1 U11 ( .A(n39), .ZN(n41) );
  NOR2_X1 U12 ( .A1(n85), .A2(n105), .ZN(n95) );
  NOR2_X1 U13 ( .A1(n80), .A2(n41), .ZN(n70) );
  OAI22_X1 U14 ( .A1(n113), .A2(n39), .B1(n40), .B2(n41), .ZN(n254) );
  NOR4_X1 U15 ( .A1(n42), .A2(n43), .A3(n38), .A4(n37), .ZN(n40) );
  INV_X1 U16 ( .A(n47), .ZN(n38) );
  OAI22_X1 U17 ( .A1(n81), .A2(n20), .B1(n41), .B2(n83), .ZN(n273) );
  NOR3_X1 U18 ( .A1(n41), .A2(n28), .A3(n30), .ZN(n81) );
  INV_X1 U19 ( .A(n6), .ZN(n34) );
  OAI21_X1 U20 ( .B1(n131), .B2(n132), .A(n137), .ZN(N91) );
  NAND2_X1 U21 ( .A1(N77), .A2(n134), .ZN(n137) );
  OAI21_X1 U22 ( .B1(n155), .B2(n132), .A(n139), .ZN(N89) );
  NAND2_X1 U23 ( .A1(N75), .A2(n134), .ZN(n139) );
  OAI21_X1 U24 ( .B1(n173), .B2(n132), .A(n147), .ZN(N81) );
  NAND2_X1 U25 ( .A1(N67), .A2(n134), .ZN(n147) );
  NAND2_X1 U26 ( .A1(n117), .A2(n56), .ZN(n76) );
  NAND3_X1 U27 ( .A1(n6), .A2(n49), .A3(n50), .ZN(n43) );
  INV_X1 U28 ( .A(n80), .ZN(n52) );
  INV_X1 U29 ( .A(n66), .ZN(n36) );
  INV_X1 U30 ( .A(n51), .ZN(n28) );
  NAND4_X1 U31 ( .A1(n57), .A2(n76), .A3(n51), .A4(n72), .ZN(n88) );
  NOR2_X1 U32 ( .A1(n148), .A2(rst), .ZN(n122) );
  NAND2_X1 U33 ( .A1(n122), .A2(ena), .ZN(n132) );
  AND3_X1 U34 ( .A1(n148), .A2(n124), .A3(ena), .ZN(n134) );
  NAND4_X1 U35 ( .A1(ena), .A2(n162), .A3(n163), .A4(n124), .ZN(N21) );
  NAND4_X1 U36 ( .A1(n164), .A2(n165), .A3(n166), .A4(n167), .ZN(n163) );
  OR3_X1 U37 ( .A1(n187), .A2(n186), .A3(n20), .ZN(n162) );
  AND4_X1 U38 ( .A1(n197), .A2(n196), .A3(n195), .A4(n194), .ZN(n164) );
  NOR3_X1 U40 ( .A1(n51), .A2(cmd[3]), .A3(n61), .ZN(n63) );
  NOR4_X1 U41 ( .A1(filter_cnt[9]), .A2(filter_cnt[8]), .A3(filter_cnt[7]), 
        .A4(filter_cnt[6]), .ZN(n152) );
  NAND4_X1 U42 ( .A1(n65), .A2(n112), .A3(n234), .A4(n106), .ZN(n99) );
  NAND4_X1 U43 ( .A1(n225), .A2(n226), .A3(n102), .A4(n107), .ZN(n50) );
  NOR2_X1 U44 ( .A1(cmd[0]), .A2(cmd[2]), .ZN(n68) );
  NAND4_X1 U45 ( .A1(n108), .A2(n234), .A3(n233), .A4(n55), .ZN(n72) );
  NOR4_X1 U46 ( .A1(rst), .A2(n185), .A3(n220), .A4(n12), .ZN(N115) );
  NAND2_X1 U47 ( .A1(n117), .A2(n237), .ZN(n51) );
  NOR2_X1 U48 ( .A1(n56), .A2(n99), .ZN(n97) );
  AOI211_X1 U49 ( .C1(n178), .C2(n177), .A(sto_condition), .B(rst), .ZN(N118)
         );
  NAND4_X1 U50 ( .A1(n149), .A2(n150), .A3(n151), .A4(n152), .ZN(n148) );
  NOR3_X1 U51 ( .A1(filter_cnt[10]), .A2(filter_cnt[0]), .A3(filter_cnt[11]), 
        .ZN(n149) );
  NOR3_X1 U52 ( .A1(filter_cnt[4]), .A2(filter_cnt[3]), .A3(filter_cnt[5]), 
        .ZN(n151) );
  NOR4_X1 U53 ( .A1(filter_cnt[2]), .A2(filter_cnt[1]), .A3(filter_cnt[13]), 
        .A4(filter_cnt[12]), .ZN(n150) );
  OAI21_X1 U54 ( .B1(n127), .B2(n132), .A(n135), .ZN(N93) );
  NAND2_X1 U55 ( .A1(N79), .A2(n134), .ZN(n135) );
  AOI21_X1 U56 ( .B1(n22), .B2(n168), .A(n186), .ZN(N19) );
  NAND2_X1 U57 ( .A1(n179), .A2(scl_oen), .ZN(n168) );
  NAND4_X1 U58 ( .A1(n48), .A2(n49), .A3(n60), .A4(n154), .ZN(n89) );
  NAND4_X1 U59 ( .A1(n108), .A2(n234), .A3(n232), .A4(n82), .ZN(n154) );
  OAI221_X1 U60 ( .B1(n216), .B2(n122), .C1(n217), .C2(n123), .A(n124), .ZN(
        n275) );
  OAI221_X1 U61 ( .B1(n213), .B2(n122), .C1(n214), .C2(n123), .A(n124), .ZN(
        n278) );
  OAI221_X1 U62 ( .B1(n217), .B2(n122), .C1(n123), .C2(n210), .A(n124), .ZN(
        n276) );
  OAI221_X1 U63 ( .B1(n214), .B2(n122), .C1(n123), .C2(n211), .A(n124), .ZN(
        n279) );
  OAI221_X1 U64 ( .B1(n194), .B2(n1), .C1(n2), .C2(n125), .A(n4), .ZN(n238) );
  NAND2_X1 U65 ( .A1(N39), .A2(n5), .ZN(n4) );
  OAI221_X1 U66 ( .B1(n195), .B2(n1), .C1(n2), .C2(n127), .A(n7), .ZN(n239) );
  NAND2_X1 U67 ( .A1(N38), .A2(n5), .ZN(n7) );
  OAI221_X1 U68 ( .B1(n196), .B2(n1), .C1(n2), .C2(n130), .A(n9), .ZN(n240) );
  NAND2_X1 U69 ( .A1(N37), .A2(n5), .ZN(n9) );
  OAI221_X1 U70 ( .B1(n197), .B2(n1), .C1(n2), .C2(n131), .A(n11), .ZN(n241)
         );
  NAND2_X1 U71 ( .A1(N36), .A2(n5), .ZN(n11) );
  OAI221_X1 U72 ( .B1(n198), .B2(n1), .C1(n2), .C2(n153), .A(n13), .ZN(n242)
         );
  NAND2_X1 U73 ( .A1(N35), .A2(n5), .ZN(n13) );
  OAI221_X1 U74 ( .B1(n199), .B2(n1), .C1(n2), .C2(n155), .A(n15), .ZN(n243)
         );
  NAND2_X1 U75 ( .A1(N34), .A2(n5), .ZN(n15) );
  OAI221_X1 U76 ( .B1(n200), .B2(n1), .C1(n2), .C2(n156), .A(n17), .ZN(n244)
         );
  NAND2_X1 U77 ( .A1(N33), .A2(n5), .ZN(n17) );
  OAI221_X1 U78 ( .B1(n201), .B2(n1), .C1(n2), .C2(n157), .A(n19), .ZN(n245)
         );
  NAND2_X1 U79 ( .A1(N32), .A2(n5), .ZN(n19) );
  OAI221_X1 U80 ( .B1(n202), .B2(n1), .C1(n2), .C2(n158), .A(n21), .ZN(n246)
         );
  NAND2_X1 U81 ( .A1(N31), .A2(n5), .ZN(n21) );
  OAI221_X1 U82 ( .B1(n203), .B2(n1), .C1(n2), .C2(n159), .A(n23), .ZN(n247)
         );
  NAND2_X1 U83 ( .A1(N30), .A2(n5), .ZN(n23) );
  OAI221_X1 U84 ( .B1(n204), .B2(n1), .C1(n2), .C2(n161), .A(n25), .ZN(n248)
         );
  NAND2_X1 U85 ( .A1(N29), .A2(n5), .ZN(n25) );
  OAI221_X1 U86 ( .B1(n205), .B2(n1), .C1(n2), .C2(n170), .A(n27), .ZN(n249)
         );
  NAND2_X1 U87 ( .A1(N28), .A2(n5), .ZN(n27) );
  OAI221_X1 U88 ( .B1(n206), .B2(n1), .C1(n2), .C2(n172), .A(n29), .ZN(n250)
         );
  NAND2_X1 U89 ( .A1(N27), .A2(n5), .ZN(n29) );
  OAI221_X1 U90 ( .B1(n207), .B2(n1), .C1(n2), .C2(n173), .A(n31), .ZN(n251)
         );
  NAND2_X1 U91 ( .A1(N26), .A2(n5), .ZN(n31) );
  OAI221_X1 U92 ( .B1(n215), .B2(n122), .C1(n216), .C2(n123), .A(n124), .ZN(
        n274) );
  OAI221_X1 U93 ( .B1(n212), .B2(n122), .C1(n213), .C2(n123), .A(n124), .ZN(
        n277) );
  NOR2_X1 U94 ( .A1(n99), .A2(n160), .ZN(n117) );
  NAND3_X1 U95 ( .A1(n235), .A2(n44), .A3(n101), .ZN(n57) );
  NAND2_X1 U96 ( .A1(n180), .A2(n124), .ZN(n80) );
  NAND4_X1 U97 ( .A1(cmd[3]), .A2(n68), .A3(n69), .A4(n70), .ZN(n67) );
  NOR2_X1 U98 ( .A1(cmd[1]), .A2(n51), .ZN(n69) );
  OAI211_X1 U99 ( .C1(n51), .C2(n113), .A(n52), .B(n53), .ZN(n42) );
  AOI211_X1 U100 ( .C1(din), .C2(n54), .A(n30), .B(n36), .ZN(n53) );
  OAI22_X1 U101 ( .A1(n230), .A2(n39), .B1(n231), .B2(n61), .ZN(n264) );
  OAI22_X1 U102 ( .A1(n231), .A2(n39), .B1(n61), .B2(n72), .ZN(n265) );
  OAI22_X1 U103 ( .A1(n226), .A2(n39), .B1(n61), .B2(n50), .ZN(n260) );
  OAI22_X1 U104 ( .A1(n222), .A2(n39), .B1(n61), .B2(n58), .ZN(n256) );
  OAI22_X1 U105 ( .A1(n223), .A2(n39), .B1(n61), .B2(n57), .ZN(n257) );
  OAI22_X1 U106 ( .A1(n233), .A2(n39), .B1(n61), .B2(n74), .ZN(n267) );
  OAI22_X1 U107 ( .A1(n234), .A2(n39), .B1(n61), .B2(n75), .ZN(n268) );
  OAI22_X1 U108 ( .A1(n235), .A2(n39), .B1(n61), .B2(n47), .ZN(n269) );
  OAI22_X1 U109 ( .A1(n236), .A2(n39), .B1(n61), .B2(n76), .ZN(n270) );
  OAI21_X1 U110 ( .B1(n237), .B2(n39), .A(n77), .ZN(n271) );
  NAND4_X1 U111 ( .A1(cmd[0]), .A2(n63), .A3(n118), .A4(n114), .ZN(n77) );
  INV_X1 U112 ( .A(cmd[2]), .ZN(n114) );
  OAI21_X1 U113 ( .B1(n232), .B2(n39), .A(n73), .ZN(n266) );
  NAND3_X1 U114 ( .A1(n68), .A2(n63), .A3(cmd[1]), .ZN(n73) );
  OAI21_X1 U115 ( .B1(n224), .B2(n39), .A(n62), .ZN(n258) );
  NAND4_X1 U116 ( .A1(cmd[2]), .A2(n63), .A3(n116), .A4(n118), .ZN(n62) );
  INV_X1 U117 ( .A(cmd[0]), .ZN(n116) );
  NOR3_X1 U118 ( .A1(n80), .A2(n193), .A3(n26), .ZN(N498) );
  INV_X1 U119 ( .A(n89), .ZN(n26) );
  OAI21_X1 U120 ( .B1(n125), .B2(n132), .A(n133), .ZN(N94) );
  NAND2_X1 U121 ( .A1(N80), .A2(n134), .ZN(n133) );
  OAI21_X1 U122 ( .B1(n130), .B2(n132), .A(n136), .ZN(N92) );
  NAND2_X1 U123 ( .A1(N78), .A2(n134), .ZN(n136) );
  OAI21_X1 U124 ( .B1(n153), .B2(n132), .A(n138), .ZN(N90) );
  NAND2_X1 U125 ( .A1(N76), .A2(n134), .ZN(n138) );
  OAI21_X1 U126 ( .B1(n156), .B2(n132), .A(n140), .ZN(N88) );
  NAND2_X1 U127 ( .A1(N74), .A2(n134), .ZN(n140) );
  OAI21_X1 U128 ( .B1(n157), .B2(n132), .A(n141), .ZN(N87) );
  NAND2_X1 U129 ( .A1(N73), .A2(n134), .ZN(n141) );
  OAI21_X1 U130 ( .B1(n158), .B2(n132), .A(n142), .ZN(N86) );
  NAND2_X1 U131 ( .A1(N72), .A2(n134), .ZN(n142) );
  OAI21_X1 U132 ( .B1(n159), .B2(n132), .A(n143), .ZN(N85) );
  NAND2_X1 U133 ( .A1(N71), .A2(n134), .ZN(n143) );
  OAI21_X1 U134 ( .B1(n161), .B2(n132), .A(n144), .ZN(N84) );
  NAND2_X1 U135 ( .A1(N70), .A2(n134), .ZN(n144) );
  OAI21_X1 U136 ( .B1(n170), .B2(n132), .A(n145), .ZN(N83) );
  NAND2_X1 U137 ( .A1(N69), .A2(n134), .ZN(n145) );
  OAI21_X1 U138 ( .B1(n172), .B2(n132), .A(n146), .ZN(N82) );
  NAND2_X1 U139 ( .A1(N68), .A2(n134), .ZN(n146) );
  OAI22_X1 U140 ( .A1(n188), .A2(n14), .B1(n126), .B2(n16), .ZN(n189) );
  INV_X1 U141 ( .A(n126), .ZN(n14) );
  NAND2_X1 U142 ( .A1(n186), .A2(n187), .ZN(n126) );
  NAND3_X1 U143 ( .A1(n106), .A2(n79), .A3(n108), .ZN(n74) );
  NAND3_X1 U144 ( .A1(n224), .A2(n78), .A3(n101), .ZN(n75) );
  INV_X1 U145 ( .A(cmd[1]), .ZN(n118) );
  AND3_X1 U146 ( .A1(n112), .A2(n45), .A3(n236), .ZN(n102) );
  AND4_X1 U147 ( .A1(n221), .A2(n222), .A3(n171), .A4(n223), .ZN(n112) );
  NOR2_X1 U148 ( .A1(n78), .A2(n44), .ZN(n171) );
  AND4_X1 U149 ( .A1(n65), .A2(n112), .A3(n237), .A4(n3), .ZN(n108) );
  AOI21_X1 U150 ( .B1(n128), .B2(n129), .A(rst), .ZN(n192) );
  NAND2_X1 U151 ( .A1(n193), .A2(n24), .ZN(n128) );
  OR4_X1 U152 ( .A1(n118), .A2(n115), .A3(cmd[3]), .A4(n193), .ZN(n129) );
  INV_X1 U153 ( .A(n68), .ZN(n115) );
  AND3_X1 U154 ( .A1(n231), .A2(n95), .A3(n230), .ZN(n3) );
  AND4_X1 U155 ( .A1(n209), .A2(n208), .A3(n207), .A4(n206), .ZN(n167) );
  AND4_X1 U156 ( .A1(n205), .A2(n204), .A3(n203), .A4(n202), .ZN(n166) );
  INV_X1 U157 ( .A(clk_cnt[15]), .ZN(n125) );
  INV_X1 U158 ( .A(clk_cnt[14]), .ZN(n127) );
  INV_X1 U159 ( .A(clk_cnt[13]), .ZN(n130) );
  INV_X1 U160 ( .A(clk_cnt[12]), .ZN(n131) );
  INV_X1 U161 ( .A(clk_cnt[11]), .ZN(n153) );
  INV_X1 U162 ( .A(clk_cnt[10]), .ZN(n155) );
  INV_X1 U163 ( .A(clk_cnt[9]), .ZN(n156) );
  INV_X1 U164 ( .A(clk_cnt[8]), .ZN(n157) );
  AND4_X1 U165 ( .A1(n201), .A2(n200), .A3(n199), .A4(n198), .ZN(n165) );
  INV_X1 U166 ( .A(clk_cnt[7]), .ZN(n158) );
  INV_X1 U167 ( .A(clk_cnt[6]), .ZN(n159) );
  INV_X1 U168 ( .A(clk_cnt[5]), .ZN(n161) );
  INV_X1 U169 ( .A(clk_cnt[4]), .ZN(n170) );
  INV_X1 U170 ( .A(clk_cnt[3]), .ZN(n172) );
  INV_X1 U171 ( .A(clk_cnt[2]), .ZN(n173) );
  AND4_X1 U172 ( .A1(n124), .A2(n186), .A3(n185), .A4(n220), .ZN(N116) );
  INV_X1 U173 ( .A(n33), .ZN(n252) );
  AOI222_X1 U174 ( .A1(clk_cnt[1]), .A2(N21), .B1(N25), .B2(n5), .C1(n32), 
        .C2(cnt[1]), .ZN(n33) );
  INV_X1 U175 ( .A(n35), .ZN(n253) );
  AOI222_X1 U176 ( .A1(clk_cnt[0]), .A2(N21), .B1(N24), .B2(n5), .C1(n32), 
        .C2(cnt[0]), .ZN(n35) );
  AND2_X1 U177 ( .A1(scl_i), .A2(n124), .ZN(N59) );
  AND2_X1 U178 ( .A1(sda_i), .A2(n124), .ZN(N61) );
  OAI211_X1 U179 ( .C1(n216), .C2(n217), .A(n10), .B(n124), .ZN(N110) );
  INV_X1 U180 ( .A(n174), .ZN(n10) );
  AOI21_X1 U181 ( .B1(n217), .B2(n216), .A(n215), .ZN(n174) );
  OAI211_X1 U182 ( .C1(n213), .C2(n214), .A(n8), .B(n124), .ZN(N109) );
  INV_X1 U183 ( .A(n176), .ZN(n8) );
  AOI21_X1 U184 ( .B1(n214), .B2(n213), .A(n212), .ZN(n176) );
  AND2_X1 U185 ( .A1(n169), .A2(n124), .ZN(N123) );
  NOR2_X1 U186 ( .A1(rst), .A2(n181), .ZN(N60) );
  NOR2_X1 U187 ( .A1(rst), .A2(n182), .ZN(N62) );
  INV_X1 U188 ( .A(rst), .ZN(n124) );
  AND4_X1 U189 ( .A1(n65), .A2(n45), .A3(n224), .A4(n235), .ZN(n104) );
  INV_X1 U190 ( .A(n121), .ZN(n65) );
  NAND4_X1 U191 ( .A1(n234), .A2(n237), .A3(n3), .A4(n106), .ZN(n120) );
  NAND2_X1 U192 ( .A1(n111), .A2(n236), .ZN(n121) );
  NAND4_X1 U193 ( .A1(n111), .A2(n112), .A3(n45), .A4(n64), .ZN(n47) );
  NOR3_X1 U194 ( .A1(n98), .A2(n107), .A3(n109), .ZN(n111) );
  AND4_X1 U195 ( .A1(n222), .A2(n223), .A3(n221), .A4(n119), .ZN(n101) );
  NAND4_X1 U196 ( .A1(n226), .A2(n227), .A3(n102), .A4(n109), .ZN(n49) );
  NAND4_X1 U197 ( .A1(n225), .A2(n227), .A3(n102), .A4(n98), .ZN(n46) );
  OAI22_X1 U198 ( .A1(n227), .A2(n39), .B1(n61), .B2(n66), .ZN(n261) );
  CLKBUF_X1 U199 ( .A(n48), .Z(n6) );
  NAND3_X1 U200 ( .A1(n93), .A2(n100), .A3(n95), .ZN(n92) );
  NAND4_X1 U201 ( .A1(n95), .A2(n103), .A3(n231), .A4(n97), .ZN(n71) );
  NAND3_X1 U202 ( .A1(n231), .A2(n95), .A3(n230), .ZN(n160) );
  OAI22_X1 U203 ( .A1(n225), .A2(n39), .B1(n61), .B2(n46), .ZN(n259) );
  NOR3_X1 U204 ( .A1(n84), .A2(n34), .A3(n80), .ZN(n83) );
  INV_X1 U205 ( .A(n46), .ZN(n37) );
  AND4_X1 U206 ( .A1(n46), .A2(n75), .A3(n71), .A4(n92), .ZN(n91) );
  NAND4_X1 U207 ( .A1(n47), .A2(n50), .A3(n90), .A4(n91), .ZN(n84) );
  OAI21_X1 U208 ( .B1(n228), .B2(n39), .A(n67), .ZN(n262) );
  NAND4_X1 U209 ( .A1(n93), .A2(n231), .A3(n228), .A4(n105), .ZN(n48) );
  NOR2_X1 U210 ( .A1(n120), .A2(n121), .ZN(n119) );
  INV_X1 U211 ( .A(n120), .ZN(n45) );
  OAI21_X4 U212 ( .B1(n193), .B2(n87), .A(n52), .ZN(n39) );
  NOR4_X1 U214 ( .A1(n88), .A2(n89), .A3(n36), .A4(n84), .ZN(n87) );
  OAI22_X1 U215 ( .A1(n229), .A2(n39), .B1(n61), .B2(n71), .ZN(n263) );
  OAI22_X1 U216 ( .A1(n221), .A2(n39), .B1(n61), .B2(n59), .ZN(n255) );
  OAI22_X1 U217 ( .A1(n39), .A2(n110), .B1(n61), .B2(n59), .ZN(n272) );
  NAND4_X1 U218 ( .A1(n57), .A2(n58), .A3(n59), .A4(n60), .ZN(n54) );
  NAND4_X1 U219 ( .A1(n93), .A2(n231), .A3(n229), .A4(n85), .ZN(n66) );
  AND3_X1 U220 ( .A1(n58), .A2(n74), .A3(n59), .ZN(n90) );
  NAND4_X1 U221 ( .A1(n104), .A2(n222), .A3(n223), .A4(n86), .ZN(n60) );
  NAND4_X1 U222 ( .A1(n104), .A2(n221), .A3(n222), .A4(n94), .ZN(n58) );
  NAND4_X1 U223 ( .A1(n104), .A2(n221), .A3(n223), .A4(n96), .ZN(n59) );
endmodule


module i2c_master_byte_ctrl ( clk, rst, nReset, ena, clk_cnt, start, stop, 
        read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, i2c_al, 
        scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen;
  wire   core_ack, core_txd, core_rxd, shift, \dcnt[1] , N129, N130, N131, n3,
         n4, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17, n18, n19, n20, n21,
         n28, n29, n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n5, n6, n15, n22, n23, n24, n25, n26, n27, n36;
  wire   [3:0] core_cmd;
  wire   [4:0] c_state;
  assign scl_o = 1'b0;
  assign sda_o = 1'b0;

  SDFFR_X1 core_txd_reg ( .D(n74), .SI(1'b0), .SE(n91), .CK(clk), .RN(nReset), 
        .Q(core_txd) );
  DFFR_X1 \c_state_reg[1]  ( .D(n109), .CK(clk), .RN(nReset), .Q(c_state[1]), 
        .QN(n30) );
  DFFR_X1 \c_state_reg[4]  ( .D(n113), .CK(clk), .RN(nReset), .Q(c_state[4]), 
        .QN(n21) );
  DFFR_X1 \c_state_reg[3]  ( .D(n107), .CK(clk), .RN(nReset), .Q(c_state[3]), 
        .QN(n28) );
  DFFR_X1 \c_state_reg[2]  ( .D(n108), .CK(clk), .RN(nReset), .Q(c_state[2]), 
        .QN(n29) );
  DFFR_X1 \c_state_reg[0]  ( .D(n110), .CK(clk), .RN(nReset), .Q(c_state[0]), 
        .QN(n31) );
  DFFR_X1 \dcnt_reg[1]  ( .D(n105), .CK(clk), .RN(nReset), .Q(\dcnt[1] ), .QN(
        n17) );
  DFFR_X1 \sr_reg[0]  ( .D(n101), .CK(clk), .RN(nReset), .Q(dout[0]), .QN(n14)
         );
  DFFR_X1 \sr_reg[1]  ( .D(n100), .CK(clk), .RN(nReset), .Q(dout[1]), .QN(n13)
         );
  DFFR_X1 \sr_reg[2]  ( .D(n99), .CK(clk), .RN(nReset), .Q(dout[2]), .QN(n12)
         );
  DFFR_X1 \sr_reg[3]  ( .D(n98), .CK(clk), .RN(nReset), .Q(dout[3]), .QN(n11)
         );
  DFFR_X1 \sr_reg[4]  ( .D(n97), .CK(clk), .RN(nReset), .Q(dout[4]), .QN(n10)
         );
  DFFR_X1 \sr_reg[5]  ( .D(n96), .CK(clk), .RN(nReset), .Q(dout[5]), .QN(n9)
         );
  DFFR_X1 \sr_reg[6]  ( .D(n95), .CK(clk), .RN(nReset), .Q(dout[6]), .QN(n8)
         );
  DFFR_X1 \sr_reg[7]  ( .D(n94), .CK(clk), .RN(nReset), .Q(dout[7]), .QN(n7)
         );
  DFFR_X1 \core_cmd_reg[1]  ( .D(n104), .CK(clk), .RN(nReset), .Q(core_cmd[1]), 
        .QN(n32) );
  SDFFR_X1 ack_out_reg ( .D(n74), .SI(1'b0), .SE(n37), .CK(clk), .RN(nReset), 
        .Q(ack_out) );
  AOI221_X2 U58 ( .B1(n79), .B2(core_ack), .C1(n26), .C2(n80), .A(n4), .ZN(n53) );
  i2c_master_bit_ctrl bit_controller ( .clk(clk), .rst(rst), .nReset(nReset), 
        .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen) );
  DFFR_X1 shift_reg ( .D(N129), .CK(clk), .RN(nReset), .Q(shift) );
  DFFR_X1 cmd_ack_reg ( .D(N131), .CK(clk), .RN(nReset), .Q(cmd_ack) );
  DFFR_X1 \core_cmd_reg[0]  ( .D(n111), .CK(clk), .RN(nReset), .Q(core_cmd[0])
         );
  DFFR_X1 \core_cmd_reg[2]  ( .D(n103), .CK(clk), .RN(nReset), .Q(core_cmd[2])
         );
  DFFR_X1 \core_cmd_reg[3]  ( .D(n102), .CK(clk), .RN(nReset), .Q(core_cmd[3])
         );
  DFFR_X1 \dcnt_reg[0]  ( .D(n106), .CK(clk), .RN(nReset), .QN(n19) );
  DFFR_X1 \dcnt_reg[2]  ( .D(n112), .CK(clk), .RN(nReset), .QN(n16) );
  DFFR_X1 ld_reg ( .D(N130), .CK(clk), .RN(nReset), .QN(n34) );
  NAND3_X1 U5 ( .A1(n61), .A2(n15), .A3(n24), .ZN(n55) );
  NAND3_X1 U6 ( .A1(n23), .A2(n15), .A3(n61), .ZN(n51) );
  NAND3_X1 U7 ( .A1(n33), .A2(n35), .A3(n49), .ZN(n39) );
  NOR2_X1 U8 ( .A1(n4), .A2(n53), .ZN(n61) );
  INV_X1 U9 ( .A(n49), .ZN(n20) );
  INV_X1 U10 ( .A(n53), .ZN(n3) );
  NOR2_X1 U11 ( .A1(n6), .A2(n76), .ZN(n38) );
  INV_X1 U12 ( .A(n41), .ZN(n33) );
  INV_X1 U13 ( .A(n67), .ZN(n24) );
  INV_X1 U14 ( .A(n70), .ZN(n15) );
  INV_X1 U15 ( .A(n76), .ZN(n22) );
  NAND2_X1 U16 ( .A1(n49), .A2(n35), .ZN(n60) );
  INV_X1 U17 ( .A(n63), .ZN(n23) );
  INV_X1 U18 ( .A(n78), .ZN(n26) );
  INV_X1 U19 ( .A(n74), .ZN(n4) );
  OAI21_X1 U20 ( .B1(n84), .B2(n69), .A(n86), .ZN(N130) );
  NAND3_X1 U21 ( .A1(n26), .A2(n74), .A3(n80), .ZN(n86) );
  INV_X1 U22 ( .A(n69), .ZN(n25) );
  AOI21_X1 U23 ( .B1(n67), .B2(n89), .A(n84), .ZN(N129) );
  NAND2_X1 U24 ( .A1(n23), .A2(n70), .ZN(n89) );
  NOR2_X1 U25 ( .A1(n83), .A2(n84), .ZN(N131) );
  AOI21_X1 U26 ( .B1(n22), .B2(n36), .A(n82), .ZN(n83) );
  NOR2_X1 U27 ( .A1(n34), .A2(rst), .ZN(n41) );
  NAND4_X1 U28 ( .A1(c_state[1]), .A2(n90), .A3(n29), .A4(n28), .ZN(n67) );
  NOR4_X1 U29 ( .A1(c_state[1]), .A2(c_state[2]), .A3(c_state[3]), .A4(
        c_state[4]), .ZN(n88) );
  NAND4_X1 U30 ( .A1(c_state[3]), .A2(n90), .A3(n30), .A4(n29), .ZN(n76) );
  NOR2_X1 U31 ( .A1(i2c_al), .A2(rst), .ZN(n74) );
  NAND3_X1 U32 ( .A1(n34), .A2(n35), .A3(shift), .ZN(n49) );
  AOI221_X1 U33 ( .B1(dout[7]), .B2(n92), .C1(ack_in), .C2(n93), .A(n38), .ZN(
        n91) );
  OAI21_X1 U34 ( .B1(n6), .B2(n67), .A(n76), .ZN(n93) );
  OAI22_X1 U35 ( .A1(n22), .A2(n24), .B1(core_ack), .B2(n67), .ZN(n92) );
  NOR2_X1 U36 ( .A1(c_state[4]), .A2(c_state[0]), .ZN(n90) );
  NOR2_X1 U37 ( .A1(n78), .A2(start), .ZN(n65) );
  NAND4_X1 U38 ( .A1(c_state[2]), .A2(n90), .A3(n30), .A4(n28), .ZN(n63) );
  OAI21_X1 U39 ( .B1(n49), .B2(n19), .A(n60), .ZN(n59) );
  NAND3_X1 U40 ( .A1(n17), .A2(n16), .A3(n19), .ZN(n70) );
  OAI22_X1 U41 ( .A1(n53), .A2(n57), .B1(n3), .B2(n32), .ZN(n104) );
  OAI22_X1 U42 ( .A1(n53), .A2(n57), .B1(n21), .B2(n3), .ZN(n113) );
  OAI221_X1 U43 ( .B1(n49), .B2(n70), .C1(n73), .C2(n16), .A(n33), .ZN(n112)
         );
  AOI21_X1 U44 ( .B1(\dcnt[1] ), .B2(n20), .A(n59), .ZN(n73) );
  OAI221_X1 U45 ( .B1(\dcnt[1] ), .B2(n58), .C1(n18), .C2(n17), .A(n33), .ZN(
        n105) );
  INV_X1 U46 ( .A(n59), .ZN(n18) );
  NOR2_X1 U47 ( .A1(cmd_ack), .A2(n87), .ZN(n80) );
  NOR3_X1 U48 ( .A1(read), .A2(write), .A3(stop), .ZN(n87) );
  NAND3_X1 U49 ( .A1(n61), .A2(n26), .A3(start), .ZN(n71) );
  NAND2_X1 U50 ( .A1(n74), .A2(core_ack), .ZN(n84) );
  OAI21_X1 U51 ( .B1(n39), .B2(n7), .A(n40), .ZN(n94) );
  AOI22_X1 U52 ( .A1(dout[6]), .A2(n20), .B1(din[7]), .B2(n41), .ZN(n40) );
  OAI21_X1 U53 ( .B1(n39), .B2(n9), .A(n43), .ZN(n96) );
  AOI22_X1 U54 ( .A1(dout[4]), .A2(n20), .B1(din[5]), .B2(n41), .ZN(n43) );
  OAI21_X1 U55 ( .B1(n39), .B2(n10), .A(n44), .ZN(n97) );
  AOI22_X1 U56 ( .A1(dout[3]), .A2(n20), .B1(din[4]), .B2(n41), .ZN(n44) );
  OAI21_X1 U57 ( .B1(n39), .B2(n11), .A(n45), .ZN(n98) );
  AOI22_X1 U59 ( .A1(dout[2]), .A2(n20), .B1(din[3]), .B2(n41), .ZN(n45) );
  OAI21_X1 U60 ( .B1(n39), .B2(n12), .A(n46), .ZN(n99) );
  AOI22_X1 U61 ( .A1(dout[1]), .A2(n20), .B1(din[2]), .B2(n41), .ZN(n46) );
  OAI21_X1 U62 ( .B1(n39), .B2(n13), .A(n47), .ZN(n100) );
  AOI22_X1 U63 ( .A1(dout[0]), .A2(n20), .B1(din[1]), .B2(n41), .ZN(n47) );
  OAI21_X1 U64 ( .B1(n39), .B2(n14), .A(n48), .ZN(n101) );
  AOI22_X1 U65 ( .A1(n20), .A2(core_rxd), .B1(din[0]), .B2(n41), .ZN(n48) );
  NAND2_X1 U66 ( .A1(n88), .A2(n31), .ZN(n78) );
  NAND2_X1 U67 ( .A1(c_state[0]), .A2(n88), .ZN(n69) );
  AOI22_X1 U68 ( .A1(core_rxd), .A2(n38), .B1(ack_out), .B2(n5), .ZN(n37) );
  INV_X1 U69 ( .A(n38), .ZN(n5) );
  OR3_X1 U70 ( .A1(n81), .A2(n23), .A3(n82), .ZN(n79) );
  NAND3_X1 U71 ( .A1(n67), .A2(n76), .A3(n69), .ZN(n81) );
  NAND2_X1 U72 ( .A1(n20), .A2(n19), .ZN(n58) );
  NAND2_X1 U73 ( .A1(n61), .A2(n62), .ZN(n54) );
  OAI22_X1 U74 ( .A1(n15), .A2(n63), .B1(read), .B2(n64), .ZN(n62) );
  AOI21_X1 U75 ( .B1(write), .B2(n65), .A(n25), .ZN(n64) );
  NAND2_X1 U76 ( .A1(n61), .A2(n66), .ZN(n50) );
  OAI21_X1 U77 ( .B1(n15), .B2(n67), .A(n68), .ZN(n66) );
  OAI21_X1 U78 ( .B1(n65), .B2(n25), .A(read), .ZN(n68) );
  OAI211_X1 U79 ( .C1(n19), .C2(n60), .A(n58), .B(n33), .ZN(n106) );
  OAI211_X1 U80 ( .C1(n28), .C2(n3), .A(n55), .B(n51), .ZN(n107) );
  OAI21_X1 U81 ( .B1(n8), .B2(n39), .A(n42), .ZN(n95) );
  AOI22_X1 U82 ( .A1(dout[5]), .A2(n20), .B1(din[6]), .B2(n41), .ZN(n42) );
  OAI21_X1 U83 ( .B1(n30), .B2(n3), .A(n50), .ZN(n109) );
  OAI21_X1 U84 ( .B1(n31), .B2(n3), .A(n71), .ZN(n110) );
  OAI21_X1 U85 ( .B1(n29), .B2(n3), .A(n54), .ZN(n108) );
  AND4_X1 U86 ( .A1(c_state[4]), .A2(n31), .A3(n85), .A4(n30), .ZN(n82) );
  NOR2_X1 U87 ( .A1(c_state[3]), .A2(c_state[2]), .ZN(n85) );
  INV_X1 U88 ( .A(core_ack), .ZN(n6) );
  INV_X1 U89 ( .A(stop), .ZN(n36) );
  NAND3_X1 U90 ( .A1(n54), .A2(n55), .A3(n56), .ZN(n103) );
  NAND2_X1 U91 ( .A1(core_cmd[2]), .A2(n53), .ZN(n56) );
  NAND3_X1 U92 ( .A1(n50), .A2(n51), .A3(n52), .ZN(n102) );
  NAND2_X1 U93 ( .A1(core_cmd[3]), .A2(n53), .ZN(n52) );
  NAND2_X1 U94 ( .A1(n74), .A2(n75), .ZN(n57) );
  OAI22_X1 U95 ( .A1(n76), .A2(n36), .B1(n27), .B2(n77), .ZN(n75) );
  OR2_X1 U96 ( .A1(read), .A2(write), .ZN(n77) );
  INV_X1 U97 ( .A(n65), .ZN(n27) );
  NAND2_X1 U98 ( .A1(n71), .A2(n72), .ZN(n111) );
  NAND2_X1 U99 ( .A1(core_cmd[0]), .A2(n53), .ZN(n72) );
  INV_X1 U100 ( .A(rst), .ZN(n35) );
endmodule


module i2c_master_top ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o;
  wire   N18, sr_1, sr_0, N41, N42, N43, N44, N45, N46, N47, N48, done, i2c_al,
         irxack, N108, N109, N110, N111, N115, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;
  assign scl_pad_o = 1'b0;
  assign sda_pad_o = 1'b0;

  DFF_X1 wb_ack_o_reg ( .D(N18), .CK(wb_clk_i), .Q(wb_ack_o), .QN(n7) );
  DFFR_X1 \ctr_reg[7]  ( .D(n146), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[7]), 
        .QN(n8) );
  DFFR_X1 \ctr_reg[6]  ( .D(n145), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[6]), 
        .QN(n9) );
  DFFR_X1 \ctr_reg[5]  ( .D(n144), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[5]), 
        .QN(n10) );
  DFFR_X1 \ctr_reg[4]  ( .D(n143), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[4]), 
        .QN(n11) );
  DFFR_X1 \ctr_reg[3]  ( .D(n142), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[3]), 
        .QN(n12) );
  DFFR_X1 \ctr_reg[2]  ( .D(n141), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[2]), 
        .QN(n13) );
  DFFR_X1 \ctr_reg[1]  ( .D(n140), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[1]), 
        .QN(n14) );
  DFFR_X1 \ctr_reg[0]  ( .D(n139), .CK(wb_clk_i), .RN(arst_i), .Q(ctr[0]), 
        .QN(n15) );
  DFFR_X1 \txr_reg[7]  ( .D(n138), .CK(wb_clk_i), .RN(arst_i), .Q(txr[7]), 
        .QN(n16) );
  DFFR_X1 \txr_reg[6]  ( .D(n137), .CK(wb_clk_i), .RN(arst_i), .Q(txr[6]), 
        .QN(n17) );
  DFFR_X1 \txr_reg[5]  ( .D(n136), .CK(wb_clk_i), .RN(arst_i), .Q(txr[5]), 
        .QN(n18) );
  DFFR_X1 \txr_reg[4]  ( .D(n135), .CK(wb_clk_i), .RN(arst_i), .Q(txr[4]), 
        .QN(n19) );
  DFFR_X1 \txr_reg[3]  ( .D(n134), .CK(wb_clk_i), .RN(arst_i), .Q(txr[3]), 
        .QN(n20) );
  DFFR_X1 \txr_reg[2]  ( .D(n133), .CK(wb_clk_i), .RN(arst_i), .Q(txr[2]), 
        .QN(n21) );
  DFFR_X1 \txr_reg[1]  ( .D(n132), .CK(wb_clk_i), .RN(arst_i), .Q(txr[1]), 
        .QN(n22) );
  DFFR_X1 \txr_reg[0]  ( .D(n131), .CK(wb_clk_i), .RN(arst_i), .Q(txr[0]), 
        .QN(n23) );
  DFFR_X1 \cr_reg[3]  ( .D(n114), .CK(wb_clk_i), .RN(arst_i), .Q(cr[3]), .QN(
        n44) );
  DFFR_X1 \cr_reg[7]  ( .D(n110), .CK(wb_clk_i), .RN(arst_i), .Q(cr[7]), .QN(
        n40) );
  DFFR_X1 \cr_reg[6]  ( .D(n111), .CK(wb_clk_i), .RN(arst_i), .Q(cr[6]), .QN(
        n41) );
  DFF_X1 \wb_dat_o_reg[6]  ( .D(N47), .CK(wb_clk_i), .Q(wb_dat_o[6]) );
  DFFR_X1 \cr_reg[5]  ( .D(n112), .CK(wb_clk_i), .RN(arst_i), .Q(cr[5]), .QN(
        n42) );
  DFFR_X1 \cr_reg[4]  ( .D(n113), .CK(wb_clk_i), .RN(arst_i), .Q(cr[4]), .QN(
        n43) );
  DFF_X1 \wb_dat_o_reg[4]  ( .D(N45), .CK(wb_clk_i), .Q(wb_dat_o[4]) );
  DFF_X1 \wb_dat_o_reg[3]  ( .D(N44), .CK(wb_clk_i), .Q(wb_dat_o[3]) );
  DFFR_X1 \cr_reg[2]  ( .D(n109), .CK(wb_clk_i), .RN(arst_i), .Q(cr[2]), .QN(
        n45) );
  DFF_X1 \wb_dat_o_reg[2]  ( .D(N43), .CK(wb_clk_i), .Q(wb_dat_o[2]) );
  DFFR_X1 \cr_reg[0]  ( .D(n107), .CK(wb_clk_i), .RN(arst_i), .Q(cr[0]), .QN(
        n47) );
  DFF_X1 \wb_dat_o_reg[5]  ( .D(N46), .CK(wb_clk_i), .Q(wb_dat_o[5]) );
  DFF_X1 \wb_dat_o_reg[7]  ( .D(N48), .CK(wb_clk_i), .Q(wb_dat_o[7]) );
  DFF_X1 \wb_dat_o_reg[1]  ( .D(N42), .CK(wb_clk_i), .Q(wb_dat_o[1]) );
  DFFR_X1 irq_flag_reg ( .D(N111), .CK(wb_clk_i), .RN(arst_i), .Q(sr_0), .QN(
        n48) );
  DFF_X1 \wb_dat_o_reg[0]  ( .D(N41), .CK(wb_clk_i), .Q(wb_dat_o[0]) );
  OAI33_X1 U120 ( .A1(n44), .A2(wb_rst_i), .A3(n4), .B1(n70), .B2(n8), .B3(
        n157), .ZN(n114) );
  i2c_master_byte_ctrl byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(arst_i), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(
        cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), 
        .cmd_ack(done), .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), 
        .i2c_al(i2c_al), .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(
        sda_pad_i), .sda_oen(sda_padoen_o) );
  DFFS_X1 \prer_reg[15]  ( .D(n130), .CK(wb_clk_i), .SN(arst_i), .Q(prer[15]), 
        .QN(n24) );
  DFFS_X1 \prer_reg[14]  ( .D(n129), .CK(wb_clk_i), .SN(arst_i), .Q(prer[14]), 
        .QN(n25) );
  DFFS_X1 \prer_reg[13]  ( .D(n128), .CK(wb_clk_i), .SN(arst_i), .Q(prer[13]), 
        .QN(n26) );
  DFFS_X1 \prer_reg[12]  ( .D(n127), .CK(wb_clk_i), .SN(arst_i), .Q(prer[12]), 
        .QN(n27) );
  DFFS_X1 \prer_reg[11]  ( .D(n126), .CK(wb_clk_i), .SN(arst_i), .Q(prer[11]), 
        .QN(n28) );
  DFFS_X1 \prer_reg[10]  ( .D(n125), .CK(wb_clk_i), .SN(arst_i), .Q(prer[10]), 
        .QN(n29) );
  DFFS_X1 \prer_reg[9]  ( .D(n124), .CK(wb_clk_i), .SN(arst_i), .Q(prer[9]), 
        .QN(n30) );
  DFFS_X1 \prer_reg[8]  ( .D(n123), .CK(wb_clk_i), .SN(arst_i), .Q(prer[8]), 
        .QN(n31) );
  DFFS_X1 \prer_reg[7]  ( .D(n122), .CK(wb_clk_i), .SN(arst_i), .Q(prer[7]), 
        .QN(n32) );
  DFFS_X1 \prer_reg[6]  ( .D(n121), .CK(wb_clk_i), .SN(arst_i), .Q(prer[6]), 
        .QN(n33) );
  DFFS_X1 \prer_reg[5]  ( .D(n120), .CK(wb_clk_i), .SN(arst_i), .Q(prer[5]), 
        .QN(n34) );
  DFFS_X1 \prer_reg[4]  ( .D(n119), .CK(wb_clk_i), .SN(arst_i), .Q(prer[4]), 
        .QN(n35) );
  DFFS_X1 \prer_reg[3]  ( .D(n118), .CK(wb_clk_i), .SN(arst_i), .Q(prer[3]), 
        .QN(n36) );
  DFFS_X1 \prer_reg[2]  ( .D(n117), .CK(wb_clk_i), .SN(arst_i), .Q(prer[2]), 
        .QN(n37) );
  DFFS_X1 \prer_reg[1]  ( .D(n116), .CK(wb_clk_i), .SN(arst_i), .Q(prer[1]), 
        .QN(n38) );
  DFFS_X1 \prer_reg[0]  ( .D(n115), .CK(wb_clk_i), .SN(arst_i), .Q(prer[0]), 
        .QN(n39) );
  DFFR_X1 tip_reg ( .D(N110), .CK(wb_clk_i), .RN(arst_i), .Q(sr_1) );
  DFFR_X1 rxack_reg ( .D(N109), .CK(wb_clk_i), .RN(arst_i), .Q(sr[7]) );
  DFFR_X1 wb_inta_o_reg ( .D(N115), .CK(wb_clk_i), .RN(arst_i), .Q(wb_inta_o)
         );
  DFFR_X1 al_reg ( .D(N108), .CK(wb_clk_i), .RN(arst_i), .Q(sr[5]) );
  DFFR_X1 \cr_reg[1]  ( .D(n108), .CK(wb_clk_i), .RN(arst_i), .QN(n46) );
  INV_X1 U121 ( .A(wb_rst_i), .ZN(n49) );
  INV_X1 U122 ( .A(n72), .ZN(n6) );
  INV_X1 U123 ( .A(n75), .ZN(n3) );
  NAND2_X1 U124 ( .A1(n5), .A2(n63), .ZN(n64) );
  NOR2_X1 U125 ( .A1(n73), .A2(n74), .ZN(n72) );
  NAND3_X1 U126 ( .A1(n151), .A2(n148), .A3(n152), .ZN(n73) );
  NAND2_X1 U127 ( .A1(n76), .A2(n5), .ZN(n75) );
  INV_X1 U128 ( .A(n74), .ZN(n5) );
  NAND2_X1 U129 ( .A1(n5), .A2(n2), .ZN(n77) );
  NAND2_X1 U130 ( .A1(n5), .A2(n1), .ZN(n80) );
  NAND2_X1 U131 ( .A1(n5), .A2(n65), .ZN(n63) );
  NAND2_X1 U132 ( .A1(n5), .A2(n66), .ZN(n67) );
  INV_X1 U133 ( .A(n86), .ZN(n149) );
  INV_X1 U134 ( .A(n87), .ZN(n150) );
  INV_X1 U135 ( .A(n65), .ZN(n4) );
  NOR3_X1 U136 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[1]), .A3(n148), .ZN(n71) );
  NOR3_X2 U137 ( .A1(wb_adr_i[1]), .A2(wb_adr_i[2]), .A3(n152), .ZN(n76) );
  NOR3_X2 U138 ( .A1(wb_adr_i[0]), .A2(wb_adr_i[2]), .A3(n151), .ZN(n82) );
  NOR3_X2 U139 ( .A1(n152), .A2(wb_adr_i[2]), .A3(n151), .ZN(n79) );
  NAND3_X1 U140 ( .A1(wb_adr_i[2]), .A2(n151), .A3(wb_adr_i[0]), .ZN(n86) );
  NAND3_X1 U141 ( .A1(wb_adr_i[2]), .A2(n152), .A3(wb_adr_i[1]), .ZN(n87) );
  NAND3_X1 U142 ( .A1(wb_ack_o), .A2(n49), .A3(wb_we_i), .ZN(n74) );
  NAND2_X1 U143 ( .A1(n5), .A2(n71), .ZN(n70) );
  INV_X1 U144 ( .A(n81), .ZN(n1) );
  AOI21_X1 U145 ( .B1(n5), .B2(n82), .A(wb_rst_i), .ZN(n81) );
  INV_X1 U146 ( .A(wb_adr_i[0]), .ZN(n152) );
  NAND3_X1 U147 ( .A1(n5), .A2(n71), .A3(ctr[7]), .ZN(n65) );
  INV_X1 U148 ( .A(wb_adr_i[1]), .ZN(n151) );
  AOI211_X1 U149 ( .C1(n69), .C2(n48), .A(wb_rst_i), .B(cr[0]), .ZN(N111) );
  INV_X1 U150 ( .A(wb_dat_i[0]), .ZN(n160) );
  INV_X1 U151 ( .A(wb_dat_i[1]), .ZN(n159) );
  INV_X1 U152 ( .A(wb_dat_i[2]), .ZN(n158) );
  INV_X1 U153 ( .A(wb_dat_i[4]), .ZN(n156) );
  INV_X1 U154 ( .A(wb_dat_i[5]), .ZN(n155) );
  INV_X1 U155 ( .A(wb_dat_i[6]), .ZN(n154) );
  INV_X1 U156 ( .A(wb_dat_i[7]), .ZN(n153) );
  OAI221_X1 U157 ( .B1(n75), .B2(n160), .C1(n3), .C2(n31), .A(n49), .ZN(n123)
         );
  OAI221_X1 U158 ( .B1(n75), .B2(n159), .C1(n3), .C2(n30), .A(n49), .ZN(n124)
         );
  OAI221_X1 U159 ( .B1(n75), .B2(n158), .C1(n3), .C2(n29), .A(n49), .ZN(n125)
         );
  OAI221_X1 U160 ( .B1(n75), .B2(n157), .C1(n3), .C2(n28), .A(n49), .ZN(n126)
         );
  OAI221_X1 U161 ( .B1(n75), .B2(n156), .C1(n3), .C2(n27), .A(n49), .ZN(n127)
         );
  OAI221_X1 U162 ( .B1(n75), .B2(n155), .C1(n3), .C2(n26), .A(n49), .ZN(n128)
         );
  OAI221_X1 U163 ( .B1(n75), .B2(n154), .C1(n3), .C2(n25), .A(n49), .ZN(n129)
         );
  OAI221_X1 U164 ( .B1(n75), .B2(n153), .C1(n3), .C2(n24), .A(n49), .ZN(n130)
         );
  INV_X1 U165 ( .A(wb_dat_i[3]), .ZN(n157) );
  OAI211_X1 U166 ( .C1(n73), .C2(n39), .A(n103), .B(n104), .ZN(N41) );
  AOI22_X1 U167 ( .A1(ctr[0]), .A2(n82), .B1(prer[8]), .B2(n76), .ZN(n103) );
  AOI221_X1 U168 ( .B1(sr_0), .B2(n71), .C1(rxr[0]), .C2(n79), .A(n105), .ZN(
        n104) );
  OAI22_X1 U169 ( .A1(n23), .A2(n86), .B1(n47), .B2(n87), .ZN(n105) );
  OAI211_X1 U170 ( .C1(n73), .C2(n38), .A(n100), .B(n101), .ZN(N42) );
  AOI22_X1 U171 ( .A1(ctr[1]), .A2(n82), .B1(prer[9]), .B2(n76), .ZN(n100) );
  AOI221_X1 U172 ( .B1(sr_1), .B2(n71), .C1(rxr[1]), .C2(n79), .A(n102), .ZN(
        n101) );
  OAI22_X1 U173 ( .A1(n22), .A2(n86), .B1(n46), .B2(n87), .ZN(n102) );
  OAI211_X1 U174 ( .C1(n73), .C2(n32), .A(n83), .B(n84), .ZN(N48) );
  AOI22_X1 U175 ( .A1(n82), .A2(ctr[7]), .B1(prer[15]), .B2(n76), .ZN(n83) );
  AOI221_X1 U176 ( .B1(sr[7]), .B2(n71), .C1(rxr[7]), .C2(n79), .A(n85), .ZN(
        n84) );
  OAI22_X1 U177 ( .A1(n16), .A2(n86), .B1(n40), .B2(n87), .ZN(n85) );
  OAI211_X1 U178 ( .C1(n73), .C2(n34), .A(n91), .B(n92), .ZN(N46) );
  AOI22_X1 U179 ( .A1(ctr[5]), .A2(n82), .B1(prer[13]), .B2(n76), .ZN(n91) );
  AOI221_X1 U180 ( .B1(sr[5]), .B2(n71), .C1(rxr[5]), .C2(n79), .A(n93), .ZN(
        n92) );
  OAI22_X1 U181 ( .A1(n18), .A2(n86), .B1(n42), .B2(n87), .ZN(n93) );
  OAI211_X1 U182 ( .C1(n73), .C2(n33), .A(n88), .B(n89), .ZN(N47) );
  AOI22_X1 U183 ( .A1(ctr[6]), .A2(n82), .B1(prer[14]), .B2(n76), .ZN(n88) );
  AOI221_X1 U184 ( .B1(sr[6]), .B2(n71), .C1(rxr[6]), .C2(n79), .A(n90), .ZN(
        n89) );
  OAI22_X1 U185 ( .A1(n17), .A2(n86), .B1(n41), .B2(n87), .ZN(n90) );
  OAI221_X1 U186 ( .B1(n6), .B2(n160), .C1(n72), .C2(n39), .A(n49), .ZN(n115)
         );
  OAI221_X1 U187 ( .B1(n6), .B2(n159), .C1(n72), .C2(n38), .A(n49), .ZN(n116)
         );
  OAI221_X1 U188 ( .B1(n6), .B2(n158), .C1(n72), .C2(n37), .A(n49), .ZN(n117)
         );
  OAI221_X1 U189 ( .B1(n6), .B2(n157), .C1(n72), .C2(n36), .A(n49), .ZN(n118)
         );
  OAI221_X1 U190 ( .B1(n6), .B2(n156), .C1(n72), .C2(n35), .A(n49), .ZN(n119)
         );
  OAI221_X1 U191 ( .B1(n6), .B2(n155), .C1(n72), .C2(n34), .A(n49), .ZN(n120)
         );
  OAI221_X1 U192 ( .B1(n6), .B2(n154), .C1(n72), .C2(n33), .A(n49), .ZN(n121)
         );
  OAI221_X1 U193 ( .B1(n6), .B2(n153), .C1(n72), .C2(n32), .A(n49), .ZN(n122)
         );
  OAI211_X1 U194 ( .C1(n73), .C2(n37), .A(n98), .B(n99), .ZN(N43) );
  AOI22_X1 U195 ( .A1(ctr[2]), .A2(n82), .B1(prer[10]), .B2(n76), .ZN(n98) );
  AOI222_X1 U196 ( .A1(rxr[2]), .A2(n79), .B1(n150), .B2(cr[2]), .C1(n149), 
        .C2(txr[2]), .ZN(n99) );
  OAI211_X1 U197 ( .C1(n73), .C2(n36), .A(n96), .B(n97), .ZN(N44) );
  AOI22_X1 U198 ( .A1(ctr[3]), .A2(n82), .B1(prer[11]), .B2(n76), .ZN(n96) );
  AOI222_X1 U199 ( .A1(rxr[3]), .A2(n79), .B1(n150), .B2(cr[3]), .C1(n149), 
        .C2(txr[3]), .ZN(n97) );
  OAI211_X1 U200 ( .C1(n73), .C2(n35), .A(n94), .B(n95), .ZN(N45) );
  AOI22_X1 U201 ( .A1(ctr[4]), .A2(n82), .B1(prer[12]), .B2(n76), .ZN(n94) );
  AOI222_X1 U202 ( .A1(rxr[4]), .A2(n79), .B1(n150), .B2(cr[4]), .C1(n149), 
        .C2(txr[4]), .ZN(n95) );
  NOR2_X1 U203 ( .A1(done), .A2(i2c_al), .ZN(n69) );
  NOR2_X1 U204 ( .A1(wb_rst_i), .A2(n106), .ZN(N108) );
  AOI21_X1 U205 ( .B1(sr[5]), .B2(n40), .A(i2c_al), .ZN(n106) );
  INV_X1 U206 ( .A(n78), .ZN(n2) );
  AOI21_X1 U207 ( .B1(n5), .B2(n79), .A(wb_rst_i), .ZN(n78) );
  OAI22_X1 U208 ( .A1(n2), .A2(n23), .B1(n160), .B2(n77), .ZN(n131) );
  OAI22_X1 U209 ( .A1(n2), .A2(n22), .B1(n159), .B2(n77), .ZN(n132) );
  OAI22_X1 U210 ( .A1(n2), .A2(n21), .B1(n158), .B2(n77), .ZN(n133) );
  OAI22_X1 U211 ( .A1(n2), .A2(n20), .B1(n157), .B2(n77), .ZN(n134) );
  OAI22_X1 U212 ( .A1(n2), .A2(n19), .B1(n156), .B2(n77), .ZN(n135) );
  OAI22_X1 U213 ( .A1(n2), .A2(n18), .B1(n155), .B2(n77), .ZN(n136) );
  OAI22_X1 U214 ( .A1(n2), .A2(n17), .B1(n154), .B2(n77), .ZN(n137) );
  OAI22_X1 U215 ( .A1(n2), .A2(n16), .B1(n153), .B2(n77), .ZN(n138) );
  OAI22_X1 U216 ( .A1(n1), .A2(n15), .B1(n160), .B2(n80), .ZN(n139) );
  OAI22_X1 U217 ( .A1(n1), .A2(n14), .B1(n159), .B2(n80), .ZN(n140) );
  OAI22_X1 U218 ( .A1(n1), .A2(n13), .B1(n158), .B2(n80), .ZN(n141) );
  OAI22_X1 U219 ( .A1(n1), .A2(n12), .B1(n157), .B2(n80), .ZN(n142) );
  OAI22_X1 U220 ( .A1(n1), .A2(n11), .B1(n156), .B2(n80), .ZN(n143) );
  OAI22_X1 U221 ( .A1(n1), .A2(n10), .B1(n155), .B2(n80), .ZN(n144) );
  OAI22_X1 U222 ( .A1(n1), .A2(n9), .B1(n154), .B2(n80), .ZN(n145) );
  OAI22_X1 U223 ( .A1(n8), .A2(n1), .B1(n153), .B2(n80), .ZN(n146) );
  INV_X1 U224 ( .A(wb_adr_i[2]), .ZN(n148) );
  OAI22_X1 U225 ( .A1(n66), .A2(n43), .B1(n67), .B2(n156), .ZN(n113) );
  OAI22_X1 U226 ( .A1(n66), .A2(n42), .B1(n67), .B2(n155), .ZN(n112) );
  OAI22_X1 U227 ( .A1(n66), .A2(n41), .B1(n67), .B2(n154), .ZN(n111) );
  OAI22_X1 U228 ( .A1(n66), .A2(n40), .B1(n67), .B2(n153), .ZN(n110) );
  OAI22_X1 U229 ( .A1(n63), .A2(n47), .B1(n64), .B2(n160), .ZN(n107) );
  OAI22_X1 U230 ( .A1(n63), .A2(n46), .B1(n64), .B2(n159), .ZN(n108) );
  OAI22_X1 U231 ( .A1(n63), .A2(n45), .B1(n64), .B2(n158), .ZN(n109) );
  OR3_X1 U232 ( .A1(n4), .A2(wb_rst_i), .A3(n68), .ZN(n66) );
  AOI21_X1 U233 ( .B1(wb_ack_o), .B2(wb_we_i), .A(n69), .ZN(n68) );
  AND3_X1 U234 ( .A1(wb_cyc_i), .A2(n7), .A3(wb_stb_i), .ZN(N18) );
  NOR3_X1 U235 ( .A1(n48), .A2(wb_rst_i), .A3(n9), .ZN(N115) );
  AOI21_X1 U236 ( .B1(n42), .B2(n43), .A(wb_rst_i), .ZN(N110) );
  AND2_X1 U237 ( .A1(irxack), .A2(n49), .ZN(N109) );
endmodule

