
module top ( Sync, Gate, Done, clk, ena, rst, Tsync, Tgdel, Tgate, Tlen, 
        prev_cnt, prev_cnt_len, prev_state );
  input [7:0] Tsync;
  input [7:0] Tgdel;
  input [15:0] Tgate;
  input [15:0] Tlen;
  input [15:0] prev_cnt;
  input [15:0] prev_cnt_len;
  input [4:0] prev_state;
  input clk, ena, rst;
  output Sync, Gate, Done;
  wire   N22, n1, n4, n5, n6, n8, n9, n16, n17, n18, n19, n20, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n47, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n70,
         n71, n72, n73, n74, n75, n76, n83, n84, n85, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127;

  XNOR2X1 U21 ( .A(n22), .B(n23), .Y(Sync) );
  NAND2X1 U22 ( .A(n24), .B(n25), .Y(n23) );
  OAI21X1 U23 ( .A0(prev_state[1]), .A1(n26), .B0(prev_state[0]), .Y(n25) );
  NOR3X1 U24 ( .A(prev_state[3]), .B(prev_state[2]), .C(n27), .Y(n26) );
  AOI21X1 U25 ( .A0(ena), .A1(N22), .B0(prev_state[4]), .Y(n27) );
  AOI31X1 U26 ( .A0(n28), .A1(n29), .A2(n30), .B0(Done), .Y(n22) );
  OAI31X1 U28 ( .A0(n20), .A1(prev_cnt[0]), .A2(n31), .B0(n32), .Y(Gate) );
  AOI22X1 U29 ( .A0(n33), .A1(n34), .B0(n17), .B1(n35), .Y(n32) );
  OAI31X1 U30 ( .A0(n20), .A1(n36), .A2(n4), .B0(n37), .Y(n35) );
  AOI22X1 U31 ( .A0(prev_state[4]), .A1(n38), .B0(n39), .B1(n40), .Y(n37) );
  AOI211X1 U32 ( .A0(n41), .A1(n42), .B0(prev_state[4]), .C0(prev_cnt[0]), .Y(
        n40) );
  OAI2BB1X1 U33 ( .A0N(n43), .A1N(n44), .B0(n20), .Y(n41) );
  AOI2BB1X1 U38 ( .A0N(n6), .A1N(n52), .B0(n53), .Y(n36) );
  AOI2BB1X1 U39 ( .A0N(prev_state[1]), .A1N(n29), .B0(n9), .Y(n53) );
  AOI22X1 U40 ( .A0(prev_cnt[6]), .A1(n29), .B0(n54), .B1(prev_state[1]), .Y(
        n52) );
  AOI2BB1X1 U41 ( .A0N(prev_cnt[6]), .A1N(n55), .B0(n56), .Y(n54) );
  NOR3X1 U42 ( .A(N22), .B(prev_cnt[10]), .C(prev_cnt[1]), .Y(n55) );
  NOR4BX1 U44 ( .AN(n50), .B(prev_cnt[1]), .C(prev_cnt[4]), .D(n57), .Y(n33)
         );
  NAND4X1 U45 ( .A(n28), .B(n51), .C(n58), .D(n59), .Y(n57) );
  NOR4BX1 U46 ( .AN(n49), .B(n18), .C(n44), .D(prev_state[0]), .Y(n59) );
  AOI21X1 U51 ( .A0(n16), .A1(n60), .B0(n61), .Y(n31) );
  OAI211X1 U55 ( .A0(n28), .A1(n44), .B0(n42), .C0(n62), .Y(n60) );
  AOI22X1 U56 ( .A0(prev_state[2]), .A1(n63), .B0(n5), .B1(n64), .Y(n62) );
  OAI2BB1X1 U57 ( .A0N(rst), .A1N(n19), .B0(ena), .Y(n64) );
  AOI31X1 U59 ( .A0(n47), .A1(n44), .A2(n65), .B0(prev_state[1]), .Y(n63) );
  NAND2X1 U63 ( .A(N22), .B(n8), .Y(n44) );
  OAI31X1 U64 ( .A0(n66), .A1(n67), .A2(n68), .B0(n24), .Y(Done) );
  OAI31X1 U67 ( .A0(n16), .A1(prev_cnt_len[8]), .A2(n75), .B0(n76), .Y(n74) );
  AOI22X1 U71 ( .A0(n84), .A1(n85), .B0(prev_cnt_len[14]), .B1(n83), .Y(n75)
         );
  NAND2BX1 U73 ( .AN(prev_cnt_len[4]), .B(N22), .Y(n84) );
  INVX1 U74 ( .A(rst), .Y(N22) );
  NAND3BX1 U102 ( .AN(prev_cnt_len[9]), .B(n101), .C(n102), .Y(n66) );
  NOR4BX1 U103 ( .AN(n29), .B(prev_cnt_len[7]), .C(prev_cnt_len[2]), .D(
        prev_cnt_len[11]), .Y(n102) );
  NOR2X1 U104 ( .A(rst), .B(prev_state[2]), .Y(n29) );
  OR4X2 U66 ( .A(n71), .B(n72), .C(n73), .D(n74), .Y(n70) );
  AOI2BB1X1 U106 ( .A0N(n120), .A1N(n109), .B0(n68), .Y(n112) );
  NOR2BX1 U107 ( .AN(n1), .B(n127), .Y(n103) );
  AOI211X1 U108 ( .A0(n112), .A1(prev_cnt_len[7]), .B0(n70), .C0(n103), .Y(n24) );
  AND2X2 U109 ( .A(n126), .B(prev_state[3]), .Y(n61) );
  AND2X2 U110 ( .A(n111), .B(n109), .Y(n72) );
  AND2X2 U111 ( .A(n108), .B(prev_cnt_len[9]), .Y(n111) );
  INVX1 U112 ( .A(prev_state[4]), .Y(n16) );
  NOR4BX1 U113 ( .AN(prev_state[4]), .B(prev_cnt_len[13]), .C(prev_cnt_len[10]), .D(prev_cnt_len[4]), .Y(n101) );
  INVX1 U114 ( .A(ena), .Y(n4) );
  NOR2X1 U115 ( .A(prev_state[3]), .B(n4), .Y(n28) );
  INVX1 U116 ( .A(prev_state[1]), .Y(n19) );
  NOR2X1 U117 ( .A(prev_cnt_len[8]), .B(prev_cnt_len[1]), .Y(n118) );
  NAND3X1 U118 ( .A(n118), .B(n28), .C(n19), .Y(n67) );
  NOR2X1 U119 ( .A(prev_cnt_len[0]), .B(prev_cnt_len[15]), .Y(n110) );
  NOR3X1 U120 ( .A(prev_state[0]), .B(prev_cnt_len[5]), .C(prev_cnt_len[3]), 
        .Y(n108) );
  NAND2X1 U121 ( .A(n110), .B(n108), .Y(n68) );
  INVX1 U122 ( .A(prev_state[3]), .Y(n17) );
  NOR4BX1 U123 ( .AN(prev_cnt_len[14]), .B(prev_state[1]), .C(prev_state[3]), 
        .D(prev_cnt_len[8]), .Y(n120) );
  INVX1 U124 ( .A(n67), .Y(n105) );
  NOR2BX1 U125 ( .AN(prev_cnt_len[12]), .B(n67), .Y(n1) );
  AOI21X1 U126 ( .A0(n105), .A1(prev_cnt_len[6]), .B0(n1), .Y(n114) );
  INVX1 U127 ( .A(n114), .Y(n109) );
  NOR2X1 U128 ( .A(prev_cnt_len[6]), .B(prev_cnt_len[12]), .Y(n116) );
  INVX1 U129 ( .A(prev_cnt_len[14]), .Y(n104) );
  OAI31X1 U130 ( .A0(prev_cnt_len[1]), .A1(n116), .A2(n4), .B0(n104), .Y(n85)
         );
  NAND2X1 U131 ( .A(prev_cnt_len[2]), .B(n85), .Y(n107) );
  AOI21X1 U132 ( .A0(prev_cnt_len[6]), .A1(n105), .B0(n120), .Y(n106) );
  NAND2X1 U133 ( .A(prev_cnt_len[9]), .B(prev_cnt_len[11]), .Y(n127) );
  OAI22X1 U134 ( .A0(prev_cnt_len[8]), .A1(n107), .B0(n106), .B1(n127), .Y(n71) );
  OAI211X1 U135 ( .A0(prev_cnt_len[13]), .A1(prev_cnt_len[7]), .B0(n110), .C0(
        prev_cnt_len[11]), .Y(n115) );
  AOI22X1 U136 ( .A0(prev_cnt_len[13]), .A1(n112), .B0(n120), .B1(n111), .Y(
        n113) );
  OAI21X1 U137 ( .A0(n114), .A1(n115), .B0(n113), .Y(n73) );
  NOR2X1 U138 ( .A(prev_state[2]), .B(prev_cnt_len[10]), .Y(n83) );
  INVX1 U139 ( .A(n115), .Y(n119) );
  NOR4BX1 U140 ( .AN(n83), .B(n116), .C(n4), .D(n16), .Y(n117) );
  AOI22X1 U141 ( .A0(n120), .A1(n119), .B0(n118), .B1(n117), .Y(n76) );
  NAND2X1 U142 ( .A(prev_state[2]), .B(n4), .Y(n42) );
  NOR2X1 U143 ( .A(prev_cnt[8]), .B(prev_cnt[12]), .Y(n123) );
  NOR2X1 U144 ( .A(prev_cnt[4]), .B(n123), .Y(n47) );
  NOR2X1 U145 ( .A(prev_cnt[15]), .B(prev_cnt[2]), .Y(n65) );
  INVX1 U146 ( .A(prev_cnt[6]), .Y(n8) );
  INVX1 U147 ( .A(n65), .Y(n6) );
  INVX1 U148 ( .A(prev_state[2]), .Y(n18) );
  NOR2X1 U149 ( .A(n47), .B(n18), .Y(n56) );
  OAI21X1 U150 ( .A0(prev_cnt[1]), .A1(prev_cnt[10]), .B0(n8), .Y(n121) );
  NAND2X1 U151 ( .A(n65), .B(n121), .Y(n5) );
  NOR2X1 U152 ( .A(n56), .B(n5), .Y(n43) );
  INVX1 U153 ( .A(n5), .Y(n122) );
  AOI32X1 U154 ( .A0(ena), .A1(n122), .A2(n47), .B0(n18), .B1(n122), .Y(n126)
         );
  NOR2X1 U155 ( .A(prev_cnt[14]), .B(prev_cnt[5]), .Y(n50) );
  NOR2X1 U156 ( .A(prev_cnt[9]), .B(prev_cnt[13]), .Y(n51) );
  NOR3BX1 U157 ( .AN(n123), .B(prev_cnt[3]), .C(prev_cnt[7]), .Y(n58) );
  NOR2X1 U158 ( .A(prev_state[1]), .B(prev_cnt[11]), .Y(n49) );
  NOR3X1 U159 ( .A(prev_cnt[10]), .B(prev_cnt[0]), .C(n6), .Y(n34) );
  INVX1 U160 ( .A(n51), .Y(n124) );
  AOI21X1 U161 ( .A0(n50), .A1(n124), .B0(prev_cnt[3]), .Y(n125) );
  NOR3X1 U162 ( .A(n125), .B(prev_cnt[7]), .C(n49), .Y(n39) );
  INVX1 U163 ( .A(prev_cnt[0]), .Y(n9) );
  OAI211X1 U164 ( .A0(prev_state[0]), .A1(n39), .B0(n9), .C0(n126), .Y(n38) );
  INVX1 U165 ( .A(prev_state[0]), .Y(n20) );
  NOR3X1 U166 ( .A(prev_state[1]), .B(prev_state[4]), .C(n20), .Y(n30) );
endmodule

