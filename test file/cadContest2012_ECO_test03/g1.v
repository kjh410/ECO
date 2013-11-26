//
// Conformal-LEC: Version 11.10-d208 (10-Mar-2012) (64 bit executable)
//
module top(clk, ena, rst, Tsync, Tgdel, Tgate, Tlen, Sync, Gate, Done, 
    prev_state, prev_cnt, prev_cnt_len, cnt);
input  clk, ena, rst;
output Sync, Gate, Done;
input   [7:0] Tsync;
input   [7:0] Tgdel;
input   [15:0] Tgate;
input   [15:0] Tlen;
input   [4:0] prev_state;
input   [15:0] prev_cnt;
input   [15:0] prev_cnt_len;
output  [15:0] cnt;
wire  \mux_cnt_122_11_g657/w_0 , \mux_cnt_122_11_g657/w_1 , 
    \mux_cnt_122_11_g657/w_2 , \mux_cnt_122_11_g657/w_3 , 
    \mux_cnt_122_11_g657/w_4 , \mux_cnt_122_11_g661/w_0 , 
    \mux_cnt_122_11_g661/w_1 , \mux_cnt_122_11_g661/w_2 , 
    \mux_cnt_122_11_g661/w_3 , \mux_cnt_122_11_g661/w_4 , 
    \mux_cnt_122_11_g665/w_0 , \mux_cnt_122_11_g665/w_1 , 
    \mux_cnt_122_11_g665/w_2 , \mux_cnt_122_11_g665/w_3 , 
    \mux_cnt_122_11_g665/w_4 , \mux_cnt_122_11_g669/w_0 , 
    \mux_cnt_122_11_g669/w_1 , \mux_cnt_122_11_g669/w_2 , 
    \mux_cnt_122_11_g669/w_3 , \mux_cnt_122_11_g669/w_4 , 
    \mux_cnt_122_11_g673/w_0 , \mux_cnt_122_11_g673/w_1 , 
    \mux_cnt_122_11_g673/w_2 , \mux_cnt_122_11_g673/w_3 , 
    \mux_cnt_122_11_g673/w_4 , \mux_cnt_122_11_g677/w_0 , 
    \mux_cnt_122_11_g677/w_1 , \mux_cnt_122_11_g677/w_2 , 
    \mux_cnt_122_11_g677/w_3 , \mux_cnt_122_11_g677/w_4 , 
    \mux_cnt_122_11_g681/w_0 , \mux_cnt_122_11_g681/w_1 , 
    \mux_cnt_122_11_g681/w_2 , \mux_cnt_122_11_g681/w_3 , 
    \mux_cnt_122_11_g681/w_4 , \mux_cnt_122_11_g713/w_0 , 
    \mux_cnt_122_11_g713/w_1 , \mux_cnt_122_11_g713/w_2 , 
    \mux_cnt_122_11_g713/w_3 , \mux_cnt_122_11_g713/w_4 , 
    \mux_cnt_122_11_g653/w_0 , \mux_cnt_122_11_g653/w_1 , 
    \mux_cnt_122_11_g653/w_2 , \mux_cnt_122_11_g685/w_0 , 
    \mux_cnt_122_11_g685/w_1 , \mux_cnt_122_11_g685/w_2 , 
    \mux_cnt_122_11_g689/w_0 , \mux_cnt_122_11_g689/w_1 , 
    \mux_cnt_122_11_g689/w_2 , \mux_cnt_122_11_g693/w_0 , 
    \mux_cnt_122_11_g693/w_1 , \mux_cnt_122_11_g693/w_2 , 
    \mux_cnt_122_11_g697/w_0 , \mux_cnt_122_11_g697/w_1 , 
    \mux_cnt_122_11_g697/w_2 , \mux_cnt_122_11_g701/w_0 , 
    \mux_cnt_122_11_g701/w_1 , \mux_cnt_122_11_g701/w_2 , 
    \mux_cnt_122_11_g705/w_0 , \mux_cnt_122_11_g705/w_1 , 
    \mux_cnt_122_11_g705/w_2 , \mux_cnt_122_11_g709/w_0 , 
    \mux_cnt_122_11_g709/w_1 , \mux_cnt_122_11_g709/w_2 , sub_111_47_n_67, 
    sub_108_39_n_949, sub_108_39_n_166, sub_108_39_n_159, sub_108_39_n_151, 
    sub_108_39_n_139, sub_108_39_n_119, sub_108_39_n_109, sub_108_39_n_103, 
    sub_108_39_n_67, n_1387, n_1382, n_1257, n_1256, n_1255, n_1254, n_1253, 
    n_1252, n_1251, n_1250, n_1249, n_1248, n_1247, n_1246, n_1245, n_1244, 
    n_1243, n_1242, n_1241, n_1240, n_1239, n_1238, n_1237, n_1236, n_1235, 
    n_1234, n_1233, n_1232, n_1231, n_1230, n_1229, n_1228, n_1227, n_1226, 
    n_1225, n_1224, n_1223, n_1222, n_1220, n_1218, n_1217, n_1216, n_1215, 
    n_1214, n_1213, n_1212, n_1211, n_1210, n_1209, n_1208, n_1207, n_1206, 
    n_1205, n_1204, n_1203, n_1202, n_1201, n_1200, n_1199, n_1198, n_1197, 
    n_1196, n_1195, n_1194, n_1193, n_1192, n_1191, n_1190, n_1189, n_1188, 
    n_1187, n_1186, n_1185, n_1184, n_1183, n_1164, n_1162, n_1161, n_1160, 
    n_1078, n_1069, n_1062, n_1052, n_1049, n_1043, n_995, n_977, n_976, n_975, 
    n_941, n_746, n_744, n_741, n_732, n_326, n_45, n_44, n_43, Done, Gate, 
    Sync, rst, ena, clk;
wire  \mux_cnt_122_11_g657/data0 , \mux_cnt_122_11_g661/data0 , 
    \mux_cnt_122_11_g665/data0 , \mux_cnt_122_11_g669/data0 , 
    \mux_cnt_122_11_g673/data0 , \mux_cnt_122_11_g677/data0 , 
    \mux_cnt_122_11_g681/data0 , \mux_cnt_122_11_g713/data0 , 
    \mux_cnt_122_11_g653/data0 , \mux_cnt_122_11_g685/data0 , 
    \mux_cnt_122_11_g689/data0 , \mux_cnt_122_11_g693/data0 , 
    \mux_cnt_122_11_g697/data0 , \mux_cnt_122_11_g701/data0 , 
    \mux_cnt_122_11_g705/data0 , \mux_cnt_122_11_g709/data0 ;
wire   [16:0] cnt_nxt;
wire   [15:0] cnt;
wire   [4:0] prev_state;
wire   [15:0] prev_cnt_len;
wire   [15:0] prev_cnt;
wire   [15:0] Tlen;
wire   [15:0] Tgate;
wire   [7:0] Tgdel;
wire   [7:0] Tsync;
  assign \mux_cnt_122_11_g657/data0  = 1'b0;
  assign \mux_cnt_122_11_g661/data0  = 1'b0;
  assign \mux_cnt_122_11_g665/data0  = 1'b0;
  assign \mux_cnt_122_11_g669/data0  = 1'b0;
  assign \mux_cnt_122_11_g673/data0  = 1'b0;
  assign \mux_cnt_122_11_g677/data0  = 1'b0;
  assign \mux_cnt_122_11_g681/data0  = 1'b0;
  assign \mux_cnt_122_11_g713/data0  = 1'b0;
  assign \mux_cnt_122_11_g653/data0  = 1'b0;
  assign \mux_cnt_122_11_g685/data0  = 1'b0;
  assign \mux_cnt_122_11_g689/data0  = 1'b0;
  assign \mux_cnt_122_11_g693/data0  = 1'b0;
  assign \mux_cnt_122_11_g697/data0  = 1'b0;
  assign \mux_cnt_122_11_g701/data0  = 1'b0;
  assign \mux_cnt_122_11_g705/data0  = 1'b0;
  assign \mux_cnt_122_11_g709/data0  = 1'b0;
  or \mux_cnt_122_11_g657/org (cnt[6], \mux_cnt_122_11_g657/w_0 , 
    \mux_cnt_122_11_g657/w_1 , \mux_cnt_122_11_g657/w_2 , 
    \mux_cnt_122_11_g657/w_3 , \mux_cnt_122_11_g657/w_4 );
  and \mux_cnt_122_11_g657/a_4 (\mux_cnt_122_11_g657/w_4 , Gate, Tgate[6]);
  and \mux_cnt_122_11_g657/a_3 (\mux_cnt_122_11_g657/w_3 , n_326, Tgdel[6]);
  and \mux_cnt_122_11_g657/a_2 (\mux_cnt_122_11_g657/w_2 , n_746, cnt_nxt[6]);
  and \mux_cnt_122_11_g657/a_1 (\mux_cnt_122_11_g657/w_1 , Sync, Tsync[6]);
  and \mux_cnt_122_11_g657/a_0 (\mux_cnt_122_11_g657/w_0 , n_744, 
    \mux_cnt_122_11_g657/data0 );
  or \mux_cnt_122_11_g661/org (cnt[5], \mux_cnt_122_11_g661/w_0 , 
    \mux_cnt_122_11_g661/w_1 , \mux_cnt_122_11_g661/w_2 , 
    \mux_cnt_122_11_g661/w_3 , \mux_cnt_122_11_g661/w_4 );
  and \mux_cnt_122_11_g661/a_4 (\mux_cnt_122_11_g661/w_4 , Gate, Tgate[5]);
  and \mux_cnt_122_11_g661/a_3 (\mux_cnt_122_11_g661/w_3 , n_326, Tgdel[5]);
  and \mux_cnt_122_11_g661/a_2 (\mux_cnt_122_11_g661/w_2 , n_746, cnt_nxt[5]);
  and \mux_cnt_122_11_g661/a_1 (\mux_cnt_122_11_g661/w_1 , Sync, Tsync[5]);
  and \mux_cnt_122_11_g661/a_0 (\mux_cnt_122_11_g661/w_0 , n_744, 
    \mux_cnt_122_11_g661/data0 );
  or \mux_cnt_122_11_g665/org (cnt[4], \mux_cnt_122_11_g665/w_0 , 
    \mux_cnt_122_11_g665/w_1 , \mux_cnt_122_11_g665/w_2 , 
    \mux_cnt_122_11_g665/w_3 , \mux_cnt_122_11_g665/w_4 );
  and \mux_cnt_122_11_g665/a_4 (\mux_cnt_122_11_g665/w_4 , Gate, Tgate[4]);
  and \mux_cnt_122_11_g665/a_3 (\mux_cnt_122_11_g665/w_3 , n_326, Tgdel[4]);
  and \mux_cnt_122_11_g665/a_2 (\mux_cnt_122_11_g665/w_2 , n_746, cnt_nxt[4]);
  and \mux_cnt_122_11_g665/a_1 (\mux_cnt_122_11_g665/w_1 , Sync, Tsync[4]);
  and \mux_cnt_122_11_g665/a_0 (\mux_cnt_122_11_g665/w_0 , n_744, 
    \mux_cnt_122_11_g665/data0 );
  or \mux_cnt_122_11_g669/org (cnt[3], \mux_cnt_122_11_g669/w_0 , 
    \mux_cnt_122_11_g669/w_1 , \mux_cnt_122_11_g669/w_2 , 
    \mux_cnt_122_11_g669/w_3 , \mux_cnt_122_11_g669/w_4 );
  and \mux_cnt_122_11_g669/a_4 (\mux_cnt_122_11_g669/w_4 , Gate, Tgate[3]);
  and \mux_cnt_122_11_g669/a_3 (\mux_cnt_122_11_g669/w_3 , n_326, Tgdel[3]);
  and \mux_cnt_122_11_g669/a_2 (\mux_cnt_122_11_g669/w_2 , n_746, cnt_nxt[3]);
  and \mux_cnt_122_11_g669/a_1 (\mux_cnt_122_11_g669/w_1 , Sync, Tsync[3]);
  and \mux_cnt_122_11_g669/a_0 (\mux_cnt_122_11_g669/w_0 , n_744, 
    \mux_cnt_122_11_g669/data0 );
  or \mux_cnt_122_11_g673/org (cnt[2], \mux_cnt_122_11_g673/w_0 , 
    \mux_cnt_122_11_g673/w_1 , \mux_cnt_122_11_g673/w_2 , 
    \mux_cnt_122_11_g673/w_3 , \mux_cnt_122_11_g673/w_4 );
  and \mux_cnt_122_11_g673/a_4 (\mux_cnt_122_11_g673/w_4 , Gate, Tgate[2]);
  and \mux_cnt_122_11_g673/a_3 (\mux_cnt_122_11_g673/w_3 , n_326, Tgdel[2]);
  and \mux_cnt_122_11_g673/a_2 (\mux_cnt_122_11_g673/w_2 , n_746, cnt_nxt[2]);
  and \mux_cnt_122_11_g673/a_1 (\mux_cnt_122_11_g673/w_1 , Sync, Tsync[2]);
  and \mux_cnt_122_11_g673/a_0 (\mux_cnt_122_11_g673/w_0 , n_744, 
    \mux_cnt_122_11_g673/data0 );
  or \mux_cnt_122_11_g677/org (cnt[1], \mux_cnt_122_11_g677/w_0 , 
    \mux_cnt_122_11_g677/w_1 , \mux_cnt_122_11_g677/w_2 , 
    \mux_cnt_122_11_g677/w_3 , \mux_cnt_122_11_g677/w_4 );
  and \mux_cnt_122_11_g677/a_4 (\mux_cnt_122_11_g677/w_4 , Gate, Tgate[1]);
  and \mux_cnt_122_11_g677/a_3 (\mux_cnt_122_11_g677/w_3 , n_326, Tgdel[1]);
  and \mux_cnt_122_11_g677/a_2 (\mux_cnt_122_11_g677/w_2 , n_746, cnt_nxt[1]);
  and \mux_cnt_122_11_g677/a_1 (\mux_cnt_122_11_g677/w_1 , Sync, Tsync[1]);
  and \mux_cnt_122_11_g677/a_0 (\mux_cnt_122_11_g677/w_0 , n_744, 
    \mux_cnt_122_11_g677/data0 );
  or \mux_cnt_122_11_g681/org (cnt[0], \mux_cnt_122_11_g681/w_0 , 
    \mux_cnt_122_11_g681/w_1 , \mux_cnt_122_11_g681/w_2 , 
    \mux_cnt_122_11_g681/w_3 , \mux_cnt_122_11_g681/w_4 );
  and \mux_cnt_122_11_g681/a_4 (\mux_cnt_122_11_g681/w_4 , Gate, Tgate[0]);
  and \mux_cnt_122_11_g681/a_3 (\mux_cnt_122_11_g681/w_3 , n_326, Tgdel[0]);
  and \mux_cnt_122_11_g681/a_2 (\mux_cnt_122_11_g681/w_2 , n_746, n_995);
  and \mux_cnt_122_11_g681/a_1 (\mux_cnt_122_11_g681/w_1 , Sync, Tsync[0]);
  and \mux_cnt_122_11_g681/a_0 (\mux_cnt_122_11_g681/w_0 , n_744, 
    \mux_cnt_122_11_g681/data0 );
  or \mux_cnt_122_11_g713/org (cnt[7], \mux_cnt_122_11_g713/w_0 , 
    \mux_cnt_122_11_g713/w_1 , \mux_cnt_122_11_g713/w_2 , 
    \mux_cnt_122_11_g713/w_3 , \mux_cnt_122_11_g713/w_4 );
  and \mux_cnt_122_11_g713/a_4 (\mux_cnt_122_11_g713/w_4 , Gate, Tgate[7]);
  and \mux_cnt_122_11_g713/a_3 (\mux_cnt_122_11_g713/w_3 , n_326, Tgdel[7]);
  and \mux_cnt_122_11_g713/a_2 (\mux_cnt_122_11_g713/w_2 , n_746, cnt_nxt[7]);
  and \mux_cnt_122_11_g713/a_1 (\mux_cnt_122_11_g713/w_1 , Sync, Tsync[7]);
  and \mux_cnt_122_11_g713/a_0 (\mux_cnt_122_11_g713/w_0 , n_744, 
    \mux_cnt_122_11_g713/data0 );
  or \mux_cnt_122_11_g653/org (cnt[15], \mux_cnt_122_11_g653/w_0 , 
    \mux_cnt_122_11_g653/w_1 , \mux_cnt_122_11_g653/w_2 );
  and \mux_cnt_122_11_g653/a_2 (\mux_cnt_122_11_g653/w_2 , Gate, Tgate[15]);
  and \mux_cnt_122_11_g653/a_1 (\mux_cnt_122_11_g653/w_1 , n_746, cnt_nxt[15]);
  and \mux_cnt_122_11_g653/a_0 (\mux_cnt_122_11_g653/w_0 , n_741, 
    \mux_cnt_122_11_g653/data0 );
  or \mux_cnt_122_11_g685/org (cnt[14], \mux_cnt_122_11_g685/w_0 , 
    \mux_cnt_122_11_g685/w_1 , \mux_cnt_122_11_g685/w_2 );
  and \mux_cnt_122_11_g685/a_2 (\mux_cnt_122_11_g685/w_2 , Gate, Tgate[14]);
  and \mux_cnt_122_11_g685/a_1 (\mux_cnt_122_11_g685/w_1 , n_746, cnt_nxt[14]);
  and \mux_cnt_122_11_g685/a_0 (\mux_cnt_122_11_g685/w_0 , n_741, 
    \mux_cnt_122_11_g685/data0 );
  or \mux_cnt_122_11_g689/org (cnt[13], \mux_cnt_122_11_g689/w_0 , 
    \mux_cnt_122_11_g689/w_1 , \mux_cnt_122_11_g689/w_2 );
  and \mux_cnt_122_11_g689/a_2 (\mux_cnt_122_11_g689/w_2 , Gate, Tgate[13]);
  and \mux_cnt_122_11_g689/a_1 (\mux_cnt_122_11_g689/w_1 , n_746, cnt_nxt[13]);
  and \mux_cnt_122_11_g689/a_0 (\mux_cnt_122_11_g689/w_0 , n_741, 
    \mux_cnt_122_11_g689/data0 );
  or \mux_cnt_122_11_g693/org (cnt[12], \mux_cnt_122_11_g693/w_0 , 
    \mux_cnt_122_11_g693/w_1 , \mux_cnt_122_11_g693/w_2 );
  and \mux_cnt_122_11_g693/a_2 (\mux_cnt_122_11_g693/w_2 , Gate, Tgate[12]);
  and \mux_cnt_122_11_g693/a_1 (\mux_cnt_122_11_g693/w_1 , n_746, cnt_nxt[12]);
  and \mux_cnt_122_11_g693/a_0 (\mux_cnt_122_11_g693/w_0 , n_741, 
    \mux_cnt_122_11_g693/data0 );
  or \mux_cnt_122_11_g697/org (cnt[11], \mux_cnt_122_11_g697/w_0 , 
    \mux_cnt_122_11_g697/w_1 , \mux_cnt_122_11_g697/w_2 );
  and \mux_cnt_122_11_g697/a_2 (\mux_cnt_122_11_g697/w_2 , Gate, Tgate[11]);
  and \mux_cnt_122_11_g697/a_1 (\mux_cnt_122_11_g697/w_1 , n_746, cnt_nxt[11]);
  and \mux_cnt_122_11_g697/a_0 (\mux_cnt_122_11_g697/w_0 , n_741, 
    \mux_cnt_122_11_g697/data0 );
  or \mux_cnt_122_11_g701/org (cnt[10], \mux_cnt_122_11_g701/w_0 , 
    \mux_cnt_122_11_g701/w_1 , \mux_cnt_122_11_g701/w_2 );
  and \mux_cnt_122_11_g701/a_2 (\mux_cnt_122_11_g701/w_2 , Gate, Tgate[10]);
  and \mux_cnt_122_11_g701/a_1 (\mux_cnt_122_11_g701/w_1 , n_746, cnt_nxt[10]);
  and \mux_cnt_122_11_g701/a_0 (\mux_cnt_122_11_g701/w_0 , n_741, 
    \mux_cnt_122_11_g701/data0 );
  or \mux_cnt_122_11_g705/org (cnt[9], \mux_cnt_122_11_g705/w_0 , 
    \mux_cnt_122_11_g705/w_1 , \mux_cnt_122_11_g705/w_2 );
  and \mux_cnt_122_11_g705/a_2 (\mux_cnt_122_11_g705/w_2 , Gate, Tgate[9]);
  and \mux_cnt_122_11_g705/a_1 (\mux_cnt_122_11_g705/w_1 , n_746, cnt_nxt[9]);
  and \mux_cnt_122_11_g705/a_0 (\mux_cnt_122_11_g705/w_0 , n_741, 
    \mux_cnt_122_11_g705/data0 );
  or \mux_cnt_122_11_g709/org (cnt[8], \mux_cnt_122_11_g709/w_0 , 
    \mux_cnt_122_11_g709/w_1 , \mux_cnt_122_11_g709/w_2 );
  and \mux_cnt_122_11_g709/a_2 (\mux_cnt_122_11_g709/w_2 , Gate, Tgate[8]);
  and \mux_cnt_122_11_g709/a_1 (\mux_cnt_122_11_g709/w_1 , n_746, cnt_nxt[8]);
  and \mux_cnt_122_11_g709/a_0 (\mux_cnt_122_11_g709/w_0 , n_741, 
    \mux_cnt_122_11_g709/data0 );
  nor sub_108_39_g111(sub_108_39_n_159, sub_108_39_n_949, prev_cnt[14]);
  xnor sub_108_39_g167(cnt_nxt[1], prev_cnt[0], prev_cnt[1]);
  xnor sub_108_39_g169(cnt_nxt[2], sub_108_39_n_103, prev_cnt[2]);
  xnor sub_108_39_g172(cnt_nxt[3], n_1052, prev_cnt[3]);
  xnor sub_108_39_g174(cnt_nxt[4], sub_108_39_n_139, prev_cnt[4]);
  xnor sub_108_39_g177(cnt_nxt[5], n_1241, prev_cnt[5]);
  xnor sub_108_39_g179(cnt_nxt[6], n_1062, prev_cnt[6]);
  xnor sub_108_39_g182(cnt_nxt[7], n_1242, prev_cnt[7]);
  xnor sub_108_39_g184(cnt_nxt[8], sub_108_39_n_166, prev_cnt[8]);
  xnor sub_108_39_g187(cnt_nxt[9], n_1245, prev_cnt[9]);
  xnor sub_108_39_g189(cnt_nxt[10], n_1246, prev_cnt[10]);
  xnor sub_108_39_g192(cnt_nxt[11], n_1247, prev_cnt[11]);
  xnor sub_108_39_g195(cnt_nxt[12], n_1069, prev_cnt[12]);
  xnor sub_108_39_g198(cnt_nxt[13], n_1248, prev_cnt[13]);
  xnor sub_108_39_g200(cnt_nxt[14], n_1249, prev_cnt[14]);
  xnor sub_108_39_g203(cnt_nxt[15], n_1250, prev_cnt[15]);
  not g1040(n_1184, prev_cnt[4]);
  not g1041(n_1185, prev_cnt[8]);
  not g1044(n_1188, prev_cnt[13]);
  not g1045(n_1189, prev_cnt[12]);
  nand g1059(sub_108_39_n_949, n_1188, n_1189);
  not g1060(n_1203, sub_108_39_n_159);
  not g1072(n_1212, sub_108_39_n_109);
  not g1079(n_1216, sub_108_39_n_151);
  nor g1104(n_1231, n_1212, prev_cnt[6]);
  nor g1110(n_1235, n_1216, prev_cnt[12]);
  nor g1111(n_1236, sub_108_39_n_949, n_1216);
  nor g1112(n_1237, n_1203, n_1216);
  nand g1116(n_1241, n_1382, n_1184);
  nand g1117(n_1242, n_1231, n_1382);
  nand g1120(n_1245, n_1387, n_1185);
  nand g1121(n_1246, sub_108_39_n_119, n_1387);
  nand g1122(n_1247, n_1049, n_1387);
  nand g1123(n_1248, n_1235, n_1387);
  nand g1124(n_1249, n_1236, n_1387);
  nand g1125(n_1250, n_1237, n_1387);
  nor g719(n_941, ena, rst);
  not g1097(n_1226, n_941);
  not g1054(n_1198, prev_state[4]);
  not g1053(n_1197, prev_state[3]);
  not g1052(n_1196, prev_state[2]);
  not g1051(n_1195, prev_state[1]);
  nand g1098(n_1227, n_1198, n_1197, n_1196, n_1195);
  not g1039(n_1183, prev_state[0]);
  nor g1099(n_1160, n_1227, n_1183);
  not g1100(n_1228, n_1160);
  not g1043(n_1187, ena);
  nor g1101(n_1229, n_1228, n_1187, rst);
  not g1102(n_1230, n_1229);
  nor g751(n_977, prev_cnt_len[14], prev_cnt_len[15], prev_cnt_len[12], 
    prev_cnt_len[13]);
  nor g755(n_976, prev_cnt_len[4], prev_cnt_len[5], prev_cnt_len[6], 
    prev_cnt_len[7]);
  nor g760(n_975, prev_cnt_len[10], prev_cnt_len[11], prev_cnt_len[8], 
    prev_cnt_len[9]);
  not g1050(n_1194, prev_cnt_len[3]);
  not g1049(n_1193, prev_cnt_len[2]);
  not g1048(n_1192, prev_cnt_len[1]);
  not g1047(n_1191, prev_cnt_len[0]);
  nand g1063(n_1206, n_1194, n_1193, n_1192, n_1191);
  not g1064(n_1207, n_1206);
  nand g1065(sub_111_47_n_67, n_977, n_976, n_975, n_1207);
  nand g1061(n_1204, prev_state[4], n_1197, n_1196, n_1195);
  nor g22(n_45, n_1204, prev_state[0]);
  not g1062(n_1205, n_45);
  nor g1067(n_1161, n_1205, n_1187, rst);
  not g1068(n_1209, n_1161);
  nor g1069(Done, sub_111_47_n_67, n_1209);
  not g646(n_732, Done);
  nand g1103(Sync, n_1230, n_732);
  not g843(n_1043, Sync);
  nand g1095(n_1224, n_1198, n_1197, n_1196, prev_state[1]);
  nor g16(n_43, n_1224, prev_state[0]);
  not g1096(n_1225, n_43);
  nor g1106(n_1164, n_1225, n_1187, rst);
  not g1107(n_1232, n_1164);
  nor g759(n_1078, prev_cnt[12], prev_cnt[13], prev_cnt[14], prev_cnt[15]);
  nor sub_108_39_g70(sub_108_39_n_119, prev_cnt[8], prev_cnt[9]);
  not g1073(n_1213, sub_108_39_n_119);
  nor g1076(n_1049, n_1213, prev_cnt[10]);
  not g1077(n_1215, n_1049);
  nor g1078(sub_108_39_n_151, n_1215, prev_cnt[11]);
  nor sub_108_39_g62(sub_108_39_n_109, prev_cnt[4], prev_cnt[5]);
  not g1046(n_1190, prev_cnt[1]);
  not g775(n_995, prev_cnt[0]);
  nand g1080(sub_108_39_n_103, n_1190, n_995);
  not g1081(n_1217, sub_108_39_n_103);
  not g1056(n_1200, prev_cnt[2]);
  nand g1082(n_1052, n_1217, n_1200);
  not g1083(n_1218, n_1052);
  not g1057(n_1201, prev_cnt[3]);
  nand g1084(sub_108_39_n_139, n_1218, n_1201);
  not g1085(n_1382, sub_108_39_n_139);
  nand g1086(n_1062, sub_108_39_n_109, n_1382);
  not g1087(n_1220, n_1062);
  not g1058(n_1202, prev_cnt[7]);
  not g1055(n_1199, prev_cnt[6]);
  nand g1088(sub_108_39_n_166, n_1220, n_1202, n_1199);
  not g1089(n_1387, sub_108_39_n_166);
  nand g1090(n_1069, sub_108_39_n_151, n_1387);
  not g1091(n_1222, n_1069);
  nand g1092(sub_108_39_n_67, n_1078, n_1222);
  nor g1126(n_326, n_1232, sub_108_39_n_67);
  not g1127(n_1251, n_326);
  nand g1132(n_1256, n_1226, n_1043, n_1251);
  not g1133(n_1257, n_1256);
  not g1042(n_1186, rst);
  nand g1135(n_741, n_1257, n_1186);
  not g1066(n_1208, sub_111_47_n_67);
  nor g1113(n_1238, n_1208, n_1209);
  not g1114(n_1239, n_1238);
  nand g1070(n_1210, n_1198, n_1197, prev_state[2], n_1195);
  nor g18(n_44, n_1210, prev_state[0]);
  not g1071(n_1211, n_44);
  nand g1108(n_1233, n_1205, n_1225, n_1228);
  not g1109(n_1234, n_1233);
  nand g1115(n_1240, n_1211, n_1234);
  nor g1118(n_1243, n_1240, n_1187, rst);
  not g1119(n_1244, n_1243);
  not g1093(n_1223, sub_108_39_n_67);
  nor g1128(n_1252, n_1232, n_1223);
  not g1129(n_1253, n_1252);
  nor g1074(n_1162, n_1211, n_1187, rst);
  not g1075(n_1214, n_1162);
  nor g1130(n_1254, n_1214, n_1223);
  not g1131(n_1255, n_1254);
  nand g1134(n_746, n_1239, n_1244, n_1253, n_1255);
  nor g1094(Gate, n_1214, sub_108_39_n_67);
  nand g1105(n_744, n_1226, n_1186);
endmodule

