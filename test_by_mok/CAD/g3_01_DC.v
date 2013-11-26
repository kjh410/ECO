
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
  wire   N22, n1, n2, n3, n5, n6, n8, n9, n11, n12, n13, n14, n15, n17, n18,
         n20, n21, n23, n24, n26, n27, n29, n30, n31, n33, n34, n35, n39, n40,
         n41, n42, n46, n48, n49, n52, n53, n54, n55, n56, n57, n58, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n100, n101, n103, n104, n105, n106,
         n108, n109, n110, n111, n113, n114, n115, n124, n125, n134, n139,
         n140, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n182, n183, n184, n185, n187, n188,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n201, n207,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285;

  OAI31X1 U52 ( .A0(n62), .A1(n63), .A2(n34), .B0(n64), .Y(n57) );
  AOI31X1 U53 ( .A0(n65), .A1(n66), .A2(prev_cnt_len[12]), .B0(n67), .Y(n64)
         );
  NOR2X1 U54 ( .A(n68), .B(n69), .Y(n67) );
  AOI21X1 U55 ( .A0(prev_state[1]), .A1(n66), .B0(n70), .Y(n69) );
  AOI21X1 U62 ( .A0(n77), .A1(n78), .B0(n79), .Y(n76) );
  AOI22X1 U63 ( .A0(n31), .A1(n80), .B0(prev_state[4]), .B1(n81), .Y(n78) );
  NOR3X1 U66 ( .A(n85), .B(prev_state[0]), .C(n18), .Y(n80) );
  AOI22X1 U68 ( .A0(prev_cnt_len[2]), .A1(n87), .B0(prev_cnt_len[5]), .B1(n88), 
        .Y(n77) );
  NOR4BX1 U71 ( .AN(n23), .B(prev_state[0]), .C(n92), .D(prev_state[3]), .Y(
        n91) );
  AOI222X1 U72 ( .A0(n93), .A1(n94), .B0(n52), .B1(n86), .C0(prev_cnt_len[9]), 
        .C1(n2), .Y(n92) );
  AOI21X1 U73 ( .A0(prev_cnt_len[13]), .A1(n95), .B0(n21), .Y(n86) );
  OAI21X1 U75 ( .A0(n13), .A1(n46), .B0(n96), .Y(n93) );
  OAI211X1 U76 ( .A0(prev_cnt_len[7]), .A1(prev_cnt_len[13]), .B0(n97), .C0(
        n52), .Y(n96) );
  NAND3X1 U77 ( .A(N22), .B(prev_cnt_len[13]), .C(n98), .Y(n97) );
  AOI32X1 U86 ( .A0(n109), .A1(n30), .A2(rst), .B0(prev_state[3]), .B1(n109), 
        .Y(n101) );
  OAI211X1 U90 ( .A0(n114), .A1(N22), .B0(n115), .C0(n33), .Y(n113) );
  AOI32X1 U119 ( .A0(n151), .A1(n29), .A2(n152), .B0(n153), .B1(n151), .Y(n150) );
  AOI211X1 U121 ( .A0(n139), .A1(n6), .B0(prev_state[3]), .C0(ena), .Y(n156)
         );
  OAI33X1 U128 ( .A0(n162), .A1(prev_cnt[0]), .A2(n163), .B0(n20), .B1(
        prev_cnt[0]), .B2(n164), .Y(n161) );
  AOI31X1 U129 ( .A0(n34), .A1(n165), .A2(prev_state[0]), .B0(n166), .Y(n164)
         );
  AOI211X1 U130 ( .A0(n167), .A1(n168), .B0(n169), .C0(n162), .Y(n166) );
  NAND3BX1 U132 ( .AN(n170), .B(n66), .C(n30), .Y(n167) );
  AOI22X1 U133 ( .A0(n49), .A1(n8), .B0(n171), .B1(n172), .Y(n170) );
  OAI33X1 U135 ( .A0(n17), .A1(n30), .A2(n157), .B0(ena), .B1(n173), .B2(n12), 
        .Y(n165) );
  AOI22X1 U136 ( .A0(n154), .A1(n172), .B0(n15), .B1(n8), .Y(n173) );
  AOI31X1 U139 ( .A0(n125), .A1(n174), .A2(prev_cnt[11]), .B0(n175), .Y(n163)
         );
  AOI21X1 U140 ( .A0(n176), .A1(n177), .B0(n169), .Y(n175) );
  OAI2BB1X1 U141 ( .A0N(n83), .A1N(n24), .B0(n174), .Y(n177) );
  OAI31X1 U162 ( .A0(n35), .A1(rst), .A2(n197), .B0(n198), .Y(n196) );
  AOI32X1 U163 ( .A0(prev_state[0]), .A1(prev_state[1]), .A2(n9), .B0(n147), 
        .B1(n199), .Y(n198) );
  NOR3X1 U168 ( .A(N22), .B(n201), .C(n35), .Y(n195) );
  INVX1 U217 ( .A(rst), .Y(N22) );
  INVX1 U6 ( .A(n154), .Y(n6) );
  AND4X2 U147 ( .A(n147), .B(prev_state[4]), .C(n153), .D(n33), .Y(n160) );
  AOI2BB1X1 U220 ( .A0N(prev_cnt[6]), .A1N(n182), .B0(n8), .Y(n153) );
  NOR2X1 U221 ( .A(n124), .B(prev_cnt_len[0]), .Y(n83) );
  AOI22X1 U222 ( .A0(rst), .A1(n149), .B0(prev_cnt_len[5]), .B1(n150), .Y(n148) );
  AOI211X1 U223 ( .A0(n154), .A1(prev_state[2]), .B0(n155), .C0(n156), .Y(n151) );
  NAND2BX1 U224 ( .AN(n178), .B(rst), .Y(n176) );
  NOR2X1 U225 ( .A(prev_cnt_len[5]), .B(n87), .Y(n147) );
  AOI21X1 U226 ( .A0(prev_cnt_len[13]), .A1(n266), .B0(n265), .Y(n271) );
  OAI22X1 U227 ( .A0(n263), .A1(n262), .B0(n264), .B1(n261), .Y(n266) );
  NOR2X1 U228 ( .A(n84), .B(n259), .Y(n264) );
  NOR3X1 U229 ( .A(n89), .B(prev_state[1]), .C(prev_cnt_len[5]), .Y(n75) );
  AOI22X1 U230 ( .A0(prev_state[0]), .A1(n90), .B0(n91), .B1(n26), .Y(n89) );
  NOR2X1 U231 ( .A(n276), .B(n17), .Y(n281) );
  INVX1 U232 ( .A(n68), .Y(n15) );
  AOI21X1 U233 ( .A0(n49), .A1(n30), .B0(prev_cnt_len[12]), .Y(n68) );
  NAND2X1 U234 ( .A(n12), .B(n278), .Y(n66) );
  NOR2X1 U235 ( .A(prev_cnt_len[2]), .B(n273), .Y(n280) );
  INVX1 U236 ( .A(n153), .Y(n251) );
  OR2X2 U237 ( .A(n49), .B(prev_cnt_len[12]), .Y(n172) );
  NOR3X1 U238 ( .A(n110), .B(n103), .C(n111), .Y(n100) );
  INVX1 U239 ( .A(n254), .Y(n253) );
  NOR2X1 U240 ( .A(prev_cnt_len[15]), .B(prev_cnt_len[0]), .Y(n94) );
  INVX1 U241 ( .A(n250), .Y(n155) );
  NAND2X1 U242 ( .A(n178), .B(n6), .Y(n174) );
  NOR2X1 U243 ( .A(n155), .B(n251), .Y(n178) );
  NAND2BX1 U244 ( .AN(n157), .B(prev_cnt_len[12]), .Y(n168) );
  NAND2X1 U245 ( .A(n66), .B(n251), .Y(n157) );
  NAND2X1 U246 ( .A(n252), .B(n172), .Y(n272) );
  NOR2X1 U247 ( .A(prev_cnt_len[14]), .B(ena), .Y(n103) );
  OAI2BB1X1 U248 ( .A0N(n17), .A1N(n65), .B0(n33), .Y(n267) );
  NOR2X1 U249 ( .A(prev_state[1]), .B(prev_cnt_len[13]), .Y(n125) );
  AOI31X1 U250 ( .A0(n83), .A1(N22), .A2(n14), .B0(prev_state[0]), .Y(n87) );
  INVX1 U251 ( .A(prev_cnt_len[13]), .Y(n13) );
  NAND2X1 U252 ( .A(n280), .B(n253), .Y(n278) );
  NOR2X1 U253 ( .A(prev_state[2]), .B(prev_cnt_len[10]), .Y(n277) );
  NOR2X1 U254 ( .A(prev_cnt_len[1]), .B(prev_cnt_len[4]), .Y(n49) );
  INVX1 U255 ( .A(prev_cnt_len[1]), .Y(n275) );
  INVX1 U256 ( .A(prev_cnt_len[14]), .Y(n12) );
  NOR2X1 U257 ( .A(rst), .B(prev_state[2]), .Y(n152) );
  OAI21X1 U258 ( .A0(prev_cnt_len[13]), .A1(prev_cnt_len[7]), .B0(n94), .Y(
        n241) );
  INVX1 U259 ( .A(prev_cnt_len[2]), .Y(n27) );
  NOR2X1 U260 ( .A(prev_cnt_len[4]), .B(n277), .Y(n84) );
  OR2X2 U261 ( .A(prev_cnt_len[7]), .B(prev_cnt_len[9]), .Y(n98) );
  NOR2X1 U262 ( .A(rst), .B(prev_cnt_len[0]), .Y(n95) );
  OR2X2 U263 ( .A(prev_cnt[8]), .B(prev_cnt[12]), .Y(n245) );
  INVX1 U264 ( .A(prev_cnt_len[12]), .Y(n17) );
  NAND3BX1 U265 ( .AN(n267), .B(n256), .C(n66), .Y(n1) );
  NAND3BX1 U266 ( .AN(prev_cnt[4]), .B(ena), .C(n245), .Y(n3) );
  NAND2X1 U267 ( .A(prev_state[2]), .B(n3), .Y(n250) );
  INVX1 U268 ( .A(prev_cnt_len[10]), .Y(n252) );
  INVX1 U269 ( .A(prev_cnt_len[5]), .Y(n24) );
  INVX1 U270 ( .A(n272), .Y(n256) );
  AOI211X1 U271 ( .A0(prev_cnt_len[8]), .A1(n267), .B0(n103), .C0(n109), .Y(
        n269) );
  INVX1 U272 ( .A(n125), .Y(n14) );
  AOI2BB1X1 U273 ( .A0N(n82), .A1N(rst), .B0(prev_state[0]), .Y(n81) );
  NOR2X1 U274 ( .A(n86), .B(n48), .Y(n85) );
  NAND2X1 U275 ( .A(prev_state[3]), .B(n49), .Y(n62) );
  INVX1 U276 ( .A(n29), .Y(n65) );
  INVX1 U277 ( .A(prev_state[4]), .Y(n30) );
  INVX1 U278 ( .A(n277), .Y(n20) );
  NAND2X1 U279 ( .A(n277), .B(n281), .Y(n46) );
  INVX1 U280 ( .A(n241), .Y(n48) );
  INVX1 U281 ( .A(prev_cnt_len[11]), .Y(n18) );
  INVX1 U282 ( .A(prev_state[1]), .Y(n34) );
  INVX1 U283 ( .A(prev_state[3]), .Y(n285) );
  INVX1 U284 ( .A(prev_cnt_len[8]), .Y(n23) );
  INVX1 U285 ( .A(n152), .Y(n5) );
  INVX1 U286 ( .A(prev_state[0]), .Y(n35) );
  NAND2X1 U287 ( .A(n21), .B(n241), .Y(n242) );
  NOR2X1 U288 ( .A(prev_cnt_len[8]), .B(prev_cnt_len[6]), .Y(n254) );
  NAND2X1 U289 ( .A(prev_cnt_len[11]), .B(n242), .Y(n108) );
  INVX1 U290 ( .A(prev_cnt_len[9]), .Y(n21) );
  INVX1 U291 ( .A(prev_cnt_len[15]), .Y(n258) );
  AOI32X1 U292 ( .A0(n84), .A1(n27), .A2(N22), .B0(n30), .B1(n27), .Y(n88) );
  INVX1 U293 ( .A(prev_cnt_len[3]), .Y(n26) );
  NAND2X1 U294 ( .A(n23), .B(n52), .Y(n79) );
  NOR3X1 U295 ( .A(rst), .B(prev_cnt_len[0]), .C(n185), .Y(n73) );
  NAND2X1 U296 ( .A(n34), .B(n285), .Y(n243) );
  AOI31X1 U297 ( .A0(n98), .A1(n18), .A2(n26), .B0(prev_cnt_len[15]), .Y(n124)
         );
  OAI211X1 U298 ( .A0(n187), .A1(n188), .B0(n14), .C0(n95), .Y(n183) );
  NOR2BX1 U299 ( .AN(n1), .B(n249), .Y(n187) );
  NAND4X1 U300 ( .A(n95), .B(prev_cnt_len[13]), .C(n169), .D(n1), .Y(n184) );
  NAND2X1 U301 ( .A(n24), .B(n35), .Y(n185) );
  INVX1 U302 ( .A(ena), .Y(n273) );
  INVX1 U303 ( .A(prev_state[2]), .Y(n33) );
  NOR2X1 U304 ( .A(prev_cnt[10]), .B(prev_cnt[1]), .Y(n182) );
  NOR2X1 U305 ( .A(prev_state[1]), .B(prev_cnt[11]), .Y(n169) );
  NOR3X1 U306 ( .A(prev_state[0]), .B(prev_cnt[7]), .C(n245), .Y(n244) );
  NOR3X1 U307 ( .A(rst), .B(prev_state[4]), .C(prev_cnt[6]), .Y(n154) );
  NOR2X1 U308 ( .A(prev_cnt[9]), .B(prev_cnt[13]), .Y(n191) );
  NOR4X1 U309 ( .A(prev_cnt[4]), .B(prev_cnt[3]), .C(prev_cnt[14]), .D(
        prev_cnt[0]), .Y(n207) );
  OAI211X1 U310 ( .A0(prev_state[3]), .A1(n143), .B0(n144), .C0(n145), .Y(n142) );
  OAI211X1 U311 ( .A0(prev_state[1]), .A1(n158), .B0(prev_cnt[0]), .C0(
        prev_state[0]), .Y(n144) );
  AOI33X1 U312 ( .A0(prev_state[0]), .A1(n34), .A2(n146), .B0(prev_cnt[0]), 
        .B1(n1), .B2(n147), .Y(n145) );
  AOI21X1 U313 ( .A0(n160), .A1(n17), .B0(n161), .Y(n143) );
  AOI2BB1X1 U314 ( .A0N(n159), .A1N(prev_state[3]), .B0(n5), .Y(n158) );
  NOR2X1 U315 ( .A(prev_cnt[0]), .B(n148), .Y(n146) );
  NOR2X1 U316 ( .A(prev_cnt[2]), .B(prev_cnt[15]), .Y(n139) );
  OAI31X1 U317 ( .A0(n3), .A1(n192), .A2(n193), .B0(n194), .Y(n140) );
  AOI22X1 U318 ( .A0(prev_state[1]), .A1(prev_state[0]), .B0(prev_state[2]), 
        .B1(n147), .Y(n193) );
  AOI22X1 U319 ( .A0(n195), .A1(n182), .B0(n33), .B1(n196), .Y(n194) );
  INVX1 U320 ( .A(n9), .Y(n192) );
  NAND2X1 U321 ( .A(n246), .B(n247), .Y(n9) );
  INVX1 U322 ( .A(prev_cnt[6]), .Y(n246) );
  NAND2X1 U323 ( .A(prev_state[4]), .B(n182), .Y(n247) );
  AOI211X1 U324 ( .A0(n73), .A1(n74), .B0(n75), .C0(n76), .Y(n40) );
  OAI2BB2X1 U325 ( .B0(prev_cnt_len[2]), .B1(n271), .A0N(n270), .A1N(n14), .Y(
        n74) );
  AOI31X1 U326 ( .A0(prev_state[0]), .A1(n53), .A2(prev_cnt_len[5]), .B0(n54), 
        .Y(n41) );
  OAI31X1 U327 ( .A0(n72), .A1(prev_state[3]), .A2(prev_state[2]), .B0(n34), 
        .Y(n53) );
  AOI21X1 U328 ( .A0(n55), .A1(n56), .B0(n20), .Y(n54) );
  AOI21X1 U329 ( .A0(ena), .A1(N22), .B0(prev_state[4]), .Y(n72) );
  AOI21X1 U330 ( .A0(prev_state[0]), .A1(n57), .B0(n58), .Y(n55) );
  NOR3X1 U331 ( .A(prev_cnt_len[8]), .B(n282), .C(n30), .Y(n58) );
  AOI2BB1X1 U332 ( .A0N(n283), .A1N(n62), .B0(n281), .Y(n282) );
  INVX1 U333 ( .A(n243), .Y(n31) );
  NOR3X1 U334 ( .A(prev_state[4]), .B(n5), .C(n35), .Y(n39) );
  AOI211X1 U335 ( .A0(n103), .A1(prev_state[3]), .B0(n104), .C0(n105), .Y(n217) );
  OAI211X1 U336 ( .A0(prev_state[4]), .A1(n100), .B0(n101), .C0(n217), .Y(n90)
         );
  NOR2X1 U337 ( .A(prev_state[4]), .B(n283), .Y(n218) );
  AOI22X1 U338 ( .A0(n52), .A1(prev_cnt_len[5]), .B0(n284), .B1(n218), .Y(n219) );
  AOI22X1 U339 ( .A0(prev_cnt_len[9]), .A1(n34), .B0(prev_state[0]), .B1(n48), 
        .Y(n220) );
  AOI211X1 U340 ( .A0(n46), .A1(n219), .B0(n220), .C0(n18), .Y(n221) );
  NAND3X1 U341 ( .A(n285), .B(n23), .C(n221), .Y(n42) );
  NAND3BX1 U342 ( .AN(n185), .B(n242), .C(n26), .Y(n222) );
  AOI21X1 U343 ( .A0(n108), .A1(n222), .B0(n243), .Y(n223) );
  NOR2X1 U344 ( .A(n88), .B(n223), .Y(n224) );
  NOR2X1 U345 ( .A(prev_cnt_len[7]), .B(prev_cnt_len[13]), .Y(n225) );
  NAND4X1 U346 ( .A(n280), .B(n254), .C(n258), .D(n225), .Y(n226) );
  NAND4X1 U347 ( .A(n21), .B(prev_state[4]), .C(n134), .D(n73), .Y(n227) );
  OAI22X1 U348 ( .A0(n79), .A1(n224), .B0(n226), .B1(n227), .Y(Done) );
  INVX1 U349 ( .A(n278), .Y(n279) );
  AOI21X1 U350 ( .A0(ena), .A1(prev_cnt_len[14]), .B0(n279), .Y(n71) );
  NOR3X1 U351 ( .A(n71), .B(prev_state[3]), .C(rst), .Y(n70) );
  OAI211X1 U352 ( .A0(prev_cnt_len[6]), .A1(prev_cnt_len[12]), .B0(ena), .C0(
        n275), .Y(n228) );
  NAND2X1 U353 ( .A(n12), .B(n228), .Y(n52) );
  NAND3X1 U354 ( .A(n17), .B(n31), .C(n284), .Y(n229) );
  NOR3X1 U355 ( .A(prev_cnt_len[3]), .B(prev_cnt_len[11]), .C(n229), .Y(n134)
         );
  AOI211X1 U356 ( .A0(n184), .A1(n183), .B0(n124), .C0(n185), .Y(n230) );
  AOI211X1 U357 ( .A0(n140), .A1(n139), .B0(n230), .C0(n142), .Y(n231) );
  NAND4X1 U358 ( .A(n139), .B(n154), .C(n191), .D(n207), .Y(n232) );
  NOR4X1 U359 ( .A(prev_state[3]), .B(n273), .C(n33), .D(prev_cnt[5]), .Y(n233) );
  NAND4X1 U360 ( .A(n169), .B(n182), .C(n244), .D(n233), .Y(n234) );
  NOR2X1 U361 ( .A(n232), .B(n234), .Y(n235) );
  XNOR2X1 U362 ( .A(n231), .B(n235), .Y(Gate) );
  OAI21X1 U363 ( .A0(n11), .A1(prev_state[2]), .B0(prev_state[3]), .Y(n236) );
  NAND2X1 U364 ( .A(n108), .B(n113), .Y(n237) );
  AOI21X1 U365 ( .A0(n236), .A1(n237), .B0(prev_cnt_len[2]), .Y(n111) );
  AOI31X1 U366 ( .A0(ena), .A1(n39), .A2(n31), .B0(Done), .Y(n238) );
  NAND3X1 U367 ( .A(n42), .B(n40), .C(n41), .Y(n239) );
  XNOR2X1 U368 ( .A(n238), .B(n239), .Y(Sync) );
  NOR3X1 U369 ( .A(n106), .B(rst), .C(prev_cnt_len[2]), .Y(n104) );
  NOR2X1 U370 ( .A(rst), .B(prev_cnt[6]), .Y(n171) );
  NOR3X1 U371 ( .A(prev_cnt[14]), .B(n191), .C(prev_cnt[5]), .Y(n240) );
  AOI2BB1X1 U372 ( .A0N(n240), .A1N(prev_cnt[3]), .B0(prev_cnt[7]), .Y(n249)
         );
  AND2X2 U373 ( .A(n49), .B(n277), .Y(n284) );
  AND2X1 U374 ( .A(n79), .B(prev_state[2]), .Y(n105) );
  NAND3X1 U375 ( .A(n256), .B(n33), .C(n66), .Y(n248) );
  AOI32X1 U376 ( .A0(n24), .A1(n250), .A2(n248), .B0(prev_state[1]), .B1(n250), 
        .Y(n201) );
  NOR2X1 U377 ( .A(prev_state[4]), .B(n273), .Y(n159) );
  AOI22X1 U378 ( .A0(prev_state[3]), .A1(n9), .B0(prev_cnt[6]), .B1(n159), .Y(
        n197) );
  OAI222X1 U379 ( .A0(n247), .A1(n252), .B0(n246), .B1(n256), .C0(n66), .C1(
        n192), .Y(n199) );
  NAND2X1 U380 ( .A(n285), .B(prev_state[4]), .Y(n29) );
  NOR2BX1 U381 ( .AN(n248), .B(n285), .Y(n188) );
  INVX1 U382 ( .A(n139), .Y(n8) );
  NAND2X1 U383 ( .A(n249), .B(n35), .Y(n162) );
  AOI211X1 U384 ( .A0(n62), .A1(n68), .B0(n20), .C0(n157), .Y(n149) );
  AOI21X1 U385 ( .A0(n254), .A1(n12), .B0(n272), .Y(n114) );
  NAND4X1 U386 ( .A(prev_cnt_len[12]), .B(n27), .C(n253), .D(n252), .Y(n255)
         );
  AOI222X1 U387 ( .A0(n255), .A1(prev_cnt_len[1]), .B0(prev_cnt_len[8]), .B1(
        prev_cnt_len[2]), .C0(n17), .C1(n254), .Y(n257) );
  OAI22X1 U388 ( .A0(prev_cnt_len[14]), .A1(n257), .B0(n256), .B1(n23), .Y(
        n109) );
  AOI21X1 U389 ( .A0(prev_cnt_len[7]), .A1(n258), .B0(prev_cnt_len[9]), .Y(
        n263) );
  NAND3X1 U390 ( .A(n134), .B(n23), .C(n30), .Y(n262) );
  AOI21X1 U391 ( .A0(n114), .A1(n33), .B0(prev_state[4]), .Y(n259) );
  OAI2BB1X1 U392 ( .A0N(n18), .A1N(prev_cnt_len[3]), .B0(prev_cnt_len[9]), .Y(
        n260) );
  AOI2BB2X1 U393 ( .B0(prev_cnt_len[15]), .B1(n260), .A0N(n285), .A1N(n124), 
        .Y(n261) );
  NOR3X1 U394 ( .A(n124), .B(n264), .C(n34), .Y(n265) );
  NAND3X1 U395 ( .A(prev_cnt_len[1]), .B(prev_state[2]), .C(n12), .Y(n268) );
  AOI21X1 U396 ( .A0(n269), .A1(n268), .B0(n124), .Y(n270) );
  NAND2X1 U397 ( .A(n273), .B(n272), .Y(n115) );
  NOR2X1 U398 ( .A(n23), .B(n115), .Y(n110) );
  NOR2X1 U399 ( .A(prev_cnt_len[4]), .B(n33), .Y(n274) );
  AOI22X1 U400 ( .A0(prev_state[3]), .A1(n84), .B0(n274), .B1(n108), .Y(n106)
         );
  AOI31X1 U401 ( .A0(prev_cnt_len[6]), .A1(n280), .A2(n275), .B0(
        prev_cnt_len[14]), .Y(n276) );
  AOI21X1 U402 ( .A0(n83), .A1(n14), .B0(n84), .Y(n82) );
  AOI21X1 U403 ( .A0(prev_cnt_len[8]), .A1(n280), .B0(prev_cnt_len[14]), .Y(
        n63) );
  AOI21X1 U404 ( .A0(prev_cnt_len[6]), .A1(n280), .B0(prev_cnt_len[14]), .Y(
        n283) );
  NAND4X1 U405 ( .A(prev_cnt_len[14]), .B(prev_cnt_len[2]), .C(n15), .D(n23), 
        .Y(n56) );
  INVX1 U406 ( .A(n114), .Y(n11) );
  INVX1 U407 ( .A(n46), .Y(n2) );
endmodule

