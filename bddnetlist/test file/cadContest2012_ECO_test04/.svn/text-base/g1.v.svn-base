//
// Conformal-LEC: Version 11.10-d208 (10-Mar-2012) (64 bit executable)
//
module top(clk, ena, rst, Tsync, Tgdel, Tgate, Tlen, Sync, Gate, Done, 
    prev_state, prev_cnt, prev_cnt_len, cnt, state);
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
output  [4:0] state;
wire  \mux_cnt_123_11_g723/w_0 , \mux_cnt_123_11_g723/w_1 , 
    \mux_cnt_123_11_g723/w_2 , \mux_cnt_123_11_g723/w_3 , 
    \mux_cnt_123_11_g723/w_4 , \mux_cnt_123_11_g727/w_0 , 
    \mux_cnt_123_11_g727/w_1 , \mux_cnt_123_11_g727/w_2 , 
    \mux_cnt_123_11_g727/w_3 , \mux_cnt_123_11_g727/w_4 , 
    \mux_cnt_123_11_g731/w_0 , \mux_cnt_123_11_g731/w_1 , 
    \mux_cnt_123_11_g731/w_2 , \mux_cnt_123_11_g731/w_3 , 
    \mux_cnt_123_11_g731/w_4 , \mux_cnt_123_11_g735/w_0 , 
    \mux_cnt_123_11_g735/w_1 , \mux_cnt_123_11_g735/w_2 , 
    \mux_cnt_123_11_g735/w_3 , \mux_cnt_123_11_g735/w_4 , 
    \mux_cnt_123_11_g739/w_0 , \mux_cnt_123_11_g739/w_1 , 
    \mux_cnt_123_11_g739/w_2 , \mux_cnt_123_11_g739/w_3 , 
    \mux_cnt_123_11_g739/w_4 , \mux_cnt_123_11_g743/w_0 , 
    \mux_cnt_123_11_g743/w_1 , \mux_cnt_123_11_g743/w_2 , 
    \mux_cnt_123_11_g743/w_3 , \mux_cnt_123_11_g743/w_4 , 
    \mux_cnt_123_11_g747/w_0 , \mux_cnt_123_11_g747/w_1 , 
    \mux_cnt_123_11_g747/w_2 , \mux_cnt_123_11_g747/w_3 , 
    \mux_cnt_123_11_g747/w_4 , \mux_cnt_123_11_g779/w_0 , 
    \mux_cnt_123_11_g779/w_1 , \mux_cnt_123_11_g779/w_2 , 
    \mux_cnt_123_11_g779/w_3 , \mux_cnt_123_11_g779/w_4 , 
    \mux_cnt_123_11_g719/w_0 , \mux_cnt_123_11_g719/w_1 , 
    \mux_cnt_123_11_g719/w_2 , \mux_cnt_123_11_g751/w_0 , 
    \mux_cnt_123_11_g751/w_1 , \mux_cnt_123_11_g751/w_2 , 
    \mux_cnt_123_11_g755/w_0 , \mux_cnt_123_11_g755/w_1 , 
    \mux_cnt_123_11_g755/w_2 , \mux_cnt_123_11_g759/w_0 , 
    \mux_cnt_123_11_g759/w_1 , \mux_cnt_123_11_g759/w_2 , 
    \mux_cnt_123_11_g763/w_0 , \mux_cnt_123_11_g763/w_1 , 
    \mux_cnt_123_11_g763/w_2 , \mux_cnt_123_11_g767/w_0 , 
    \mux_cnt_123_11_g767/w_1 , \mux_cnt_123_11_g767/w_2 , 
    \mux_cnt_123_11_g771/w_0 , \mux_cnt_123_11_g771/w_1 , 
    \mux_cnt_123_11_g771/w_2 , \mux_cnt_123_11_g775/w_0 , 
    \mux_cnt_123_11_g775/w_1 , \mux_cnt_123_11_g775/w_2 , sub_112_47_n_67, 
    sub_109_39_n_1553, sub_109_39_n_1051, sub_109_39_n_166, sub_109_39_n_159, 
    sub_109_39_n_151, sub_109_39_n_139, sub_109_39_n_119, sub_109_39_n_109, 
    sub_109_39_n_103, n_1552, n_1547, n_1408, n_1407, n_1406, n_1405, n_1404, 
    n_1403, n_1402, n_1401, n_1400, n_1399, n_1398, n_1397, n_1396, n_1395, 
    n_1394, n_1393, n_1392, n_1391, n_1390, n_1389, n_1388, n_1387, n_1386, 
    n_1385, n_1384, n_1383, n_1382, n_1381, n_1380, n_1379, n_1378, n_1377, 
    n_1376, n_1375, n_1374, n_1373, n_1372, n_1371, n_1370, n_1369, n_1367, 
    n_1365, n_1364, n_1363, n_1362, n_1361, n_1360, n_1359, n_1358, n_1357, 
    n_1356, n_1355, n_1354, n_1353, n_1352, n_1351, n_1350, n_1349, n_1348, 
    n_1347, n_1346, n_1345, n_1344, n_1343, n_1342, n_1341, n_1340, n_1339, 
    n_1338, n_1337, n_1336, n_1335, n_1334, n_1333, n_1332, n_1331, n_1330, 
    n_1329, n_1328, n_1327, n_1326, n_1303, n_1294, n_1286, n_1256, n_1191, 
    n_1181, n_1174, n_1168, n_1165, n_1101, n_1079, n_1078, n_1077, n_1044, 
    n_818, n_816, n_813, n_804, n_775, n_757, n_745, n_731, n_14, n_13, n_12, 
    n_11, Done, Gate, Sync, rst, ena, clk;
wire  \mux_cnt_123_11_g723/data0 , \mux_cnt_123_11_g727/data0 , 
    \mux_cnt_123_11_g731/data0 , \mux_cnt_123_11_g735/data0 , 
    \mux_cnt_123_11_g739/data0 , \mux_cnt_123_11_g743/data0 , 
    \mux_cnt_123_11_g747/data0 , \mux_cnt_123_11_g779/data0 , 
    \mux_cnt_123_11_g719/data0 , \mux_cnt_123_11_g751/data0 , 
    \mux_cnt_123_11_g755/data0 , \mux_cnt_123_11_g759/data0 , 
    \mux_cnt_123_11_g763/data0 , \mux_cnt_123_11_g767/data0 , 
    \mux_cnt_123_11_g771/data0 , \mux_cnt_123_11_g775/data0 ;
wire   [16:0] cnt_nxt;
wire   [4:0] state;
wire   [15:0] cnt;
wire   [4:0] prev_state;
wire   [15:0] prev_cnt_len;
wire   [15:0] prev_cnt;
wire   [15:0] Tlen;
wire   [15:0] Tgate;
wire   [7:0] Tgdel;
wire   [7:0] Tsync;
  assign \mux_cnt_123_11_g723/data0  = 1'b0;
  assign \mux_cnt_123_11_g727/data0  = 1'b0;
  assign \mux_cnt_123_11_g731/data0  = 1'b0;
  assign \mux_cnt_123_11_g735/data0  = 1'b0;
  assign \mux_cnt_123_11_g739/data0  = 1'b0;
  assign \mux_cnt_123_11_g743/data0  = 1'b0;
  assign \mux_cnt_123_11_g747/data0  = 1'b0;
  assign \mux_cnt_123_11_g779/data0  = 1'b0;
  assign \mux_cnt_123_11_g719/data0  = 1'b0;
  assign \mux_cnt_123_11_g751/data0  = 1'b0;
  assign \mux_cnt_123_11_g755/data0  = 1'b0;
  assign \mux_cnt_123_11_g759/data0  = 1'b0;
  assign \mux_cnt_123_11_g763/data0  = 1'b0;
  assign \mux_cnt_123_11_g767/data0  = 1'b0;
  assign \mux_cnt_123_11_g771/data0  = 1'b0;
  assign \mux_cnt_123_11_g775/data0  = 1'b0;
  or \mux_cnt_123_11_g723/org (cnt[6], \mux_cnt_123_11_g723/w_0 , 
    \mux_cnt_123_11_g723/w_1 , \mux_cnt_123_11_g723/w_2 , 
    \mux_cnt_123_11_g723/w_3 , \mux_cnt_123_11_g723/w_4 );
  and \mux_cnt_123_11_g723/a_4 (\mux_cnt_123_11_g723/w_4 , Gate, Tgate[6]);
  and \mux_cnt_123_11_g723/a_3 (\mux_cnt_123_11_g723/w_3 , state[2], Tgdel[6]);
  and \mux_cnt_123_11_g723/a_2 (\mux_cnt_123_11_g723/w_2 , n_818, cnt_nxt[6]);
  and \mux_cnt_123_11_g723/a_1 (\mux_cnt_123_11_g723/w_1 , Sync, Tsync[6]);
  and \mux_cnt_123_11_g723/a_0 (\mux_cnt_123_11_g723/w_0 , n_816, 
    \mux_cnt_123_11_g723/data0 );
  or \mux_cnt_123_11_g727/org (cnt[5], \mux_cnt_123_11_g727/w_0 , 
    \mux_cnt_123_11_g727/w_1 , \mux_cnt_123_11_g727/w_2 , 
    \mux_cnt_123_11_g727/w_3 , \mux_cnt_123_11_g727/w_4 );
  and \mux_cnt_123_11_g727/a_4 (\mux_cnt_123_11_g727/w_4 , Gate, Tgate[5]);
  and \mux_cnt_123_11_g727/a_3 (\mux_cnt_123_11_g727/w_3 , state[2], Tgdel[5]);
  and \mux_cnt_123_11_g727/a_2 (\mux_cnt_123_11_g727/w_2 , n_818, cnt_nxt[5]);
  and \mux_cnt_123_11_g727/a_1 (\mux_cnt_123_11_g727/w_1 , Sync, Tsync[5]);
  and \mux_cnt_123_11_g727/a_0 (\mux_cnt_123_11_g727/w_0 , n_816, 
    \mux_cnt_123_11_g727/data0 );
  or \mux_cnt_123_11_g731/org (cnt[4], \mux_cnt_123_11_g731/w_0 , 
    \mux_cnt_123_11_g731/w_1 , \mux_cnt_123_11_g731/w_2 , 
    \mux_cnt_123_11_g731/w_3 , \mux_cnt_123_11_g731/w_4 );
  and \mux_cnt_123_11_g731/a_4 (\mux_cnt_123_11_g731/w_4 , Gate, Tgate[4]);
  and \mux_cnt_123_11_g731/a_3 (\mux_cnt_123_11_g731/w_3 , state[2], Tgdel[4]);
  and \mux_cnt_123_11_g731/a_2 (\mux_cnt_123_11_g731/w_2 , n_818, cnt_nxt[4]);
  and \mux_cnt_123_11_g731/a_1 (\mux_cnt_123_11_g731/w_1 , Sync, Tsync[4]);
  and \mux_cnt_123_11_g731/a_0 (\mux_cnt_123_11_g731/w_0 , n_816, 
    \mux_cnt_123_11_g731/data0 );
  or \mux_cnt_123_11_g735/org (cnt[3], \mux_cnt_123_11_g735/w_0 , 
    \mux_cnt_123_11_g735/w_1 , \mux_cnt_123_11_g735/w_2 , 
    \mux_cnt_123_11_g735/w_3 , \mux_cnt_123_11_g735/w_4 );
  and \mux_cnt_123_11_g735/a_4 (\mux_cnt_123_11_g735/w_4 , Gate, Tgate[3]);
  and \mux_cnt_123_11_g735/a_3 (\mux_cnt_123_11_g735/w_3 , state[2], Tgdel[3]);
  and \mux_cnt_123_11_g735/a_2 (\mux_cnt_123_11_g735/w_2 , n_818, cnt_nxt[3]);
  and \mux_cnt_123_11_g735/a_1 (\mux_cnt_123_11_g735/w_1 , Sync, Tsync[3]);
  and \mux_cnt_123_11_g735/a_0 (\mux_cnt_123_11_g735/w_0 , n_816, 
    \mux_cnt_123_11_g735/data0 );
  or \mux_cnt_123_11_g739/org (cnt[2], \mux_cnt_123_11_g739/w_0 , 
    \mux_cnt_123_11_g739/w_1 , \mux_cnt_123_11_g739/w_2 , 
    \mux_cnt_123_11_g739/w_3 , \mux_cnt_123_11_g739/w_4 );
  and \mux_cnt_123_11_g739/a_4 (\mux_cnt_123_11_g739/w_4 , Gate, Tgate[2]);
  and \mux_cnt_123_11_g739/a_3 (\mux_cnt_123_11_g739/w_3 , state[2], Tgdel[2]);
  and \mux_cnt_123_11_g739/a_2 (\mux_cnt_123_11_g739/w_2 , n_818, cnt_nxt[2]);
  and \mux_cnt_123_11_g739/a_1 (\mux_cnt_123_11_g739/w_1 , Sync, Tsync[2]);
  and \mux_cnt_123_11_g739/a_0 (\mux_cnt_123_11_g739/w_0 , n_816, 
    \mux_cnt_123_11_g739/data0 );
  or \mux_cnt_123_11_g743/org (cnt[1], \mux_cnt_123_11_g743/w_0 , 
    \mux_cnt_123_11_g743/w_1 , \mux_cnt_123_11_g743/w_2 , 
    \mux_cnt_123_11_g743/w_3 , \mux_cnt_123_11_g743/w_4 );
  and \mux_cnt_123_11_g743/a_4 (\mux_cnt_123_11_g743/w_4 , Gate, Tgate[1]);
  and \mux_cnt_123_11_g743/a_3 (\mux_cnt_123_11_g743/w_3 , state[2], Tgdel[1]);
  and \mux_cnt_123_11_g743/a_2 (\mux_cnt_123_11_g743/w_2 , n_818, cnt_nxt[1]);
  and \mux_cnt_123_11_g743/a_1 (\mux_cnt_123_11_g743/w_1 , Sync, Tsync[1]);
  and \mux_cnt_123_11_g743/a_0 (\mux_cnt_123_11_g743/w_0 , n_816, 
    \mux_cnt_123_11_g743/data0 );
  or \mux_cnt_123_11_g747/org (cnt[0], \mux_cnt_123_11_g747/w_0 , 
    \mux_cnt_123_11_g747/w_1 , \mux_cnt_123_11_g747/w_2 , 
    \mux_cnt_123_11_g747/w_3 , \mux_cnt_123_11_g747/w_4 );
  and \mux_cnt_123_11_g747/a_4 (\mux_cnt_123_11_g747/w_4 , Gate, Tgate[0]);
  and \mux_cnt_123_11_g747/a_3 (\mux_cnt_123_11_g747/w_3 , state[2], Tgdel[0]);
  and \mux_cnt_123_11_g747/a_2 (\mux_cnt_123_11_g747/w_2 , n_818, n_1101);
  and \mux_cnt_123_11_g747/a_1 (\mux_cnt_123_11_g747/w_1 , Sync, Tsync[0]);
  and \mux_cnt_123_11_g747/a_0 (\mux_cnt_123_11_g747/w_0 , n_816, 
    \mux_cnt_123_11_g747/data0 );
  or \mux_cnt_123_11_g779/org (cnt[7], \mux_cnt_123_11_g779/w_0 , 
    \mux_cnt_123_11_g779/w_1 , \mux_cnt_123_11_g779/w_2 , 
    \mux_cnt_123_11_g779/w_3 , \mux_cnt_123_11_g779/w_4 );
  and \mux_cnt_123_11_g779/a_4 (\mux_cnt_123_11_g779/w_4 , Gate, Tgate[7]);
  and \mux_cnt_123_11_g779/a_3 (\mux_cnt_123_11_g779/w_3 , state[2], Tgdel[7]);
  and \mux_cnt_123_11_g779/a_2 (\mux_cnt_123_11_g779/w_2 , n_818, cnt_nxt[7]);
  and \mux_cnt_123_11_g779/a_1 (\mux_cnt_123_11_g779/w_1 , Sync, Tsync[7]);
  and \mux_cnt_123_11_g779/a_0 (\mux_cnt_123_11_g779/w_0 , n_816, 
    \mux_cnt_123_11_g779/data0 );
  or \mux_cnt_123_11_g719/org (cnt[15], \mux_cnt_123_11_g719/w_0 , 
    \mux_cnt_123_11_g719/w_1 , \mux_cnt_123_11_g719/w_2 );
  and \mux_cnt_123_11_g719/a_2 (\mux_cnt_123_11_g719/w_2 , Gate, Tgate[15]);
  and \mux_cnt_123_11_g719/a_1 (\mux_cnt_123_11_g719/w_1 , n_818, cnt_nxt[15]);
  and \mux_cnt_123_11_g719/a_0 (\mux_cnt_123_11_g719/w_0 , n_813, 
    \mux_cnt_123_11_g719/data0 );
  or \mux_cnt_123_11_g751/org (cnt[14], \mux_cnt_123_11_g751/w_0 , 
    \mux_cnt_123_11_g751/w_1 , \mux_cnt_123_11_g751/w_2 );
  and \mux_cnt_123_11_g751/a_2 (\mux_cnt_123_11_g751/w_2 , Gate, Tgate[14]);
  and \mux_cnt_123_11_g751/a_1 (\mux_cnt_123_11_g751/w_1 , n_818, cnt_nxt[14]);
  and \mux_cnt_123_11_g751/a_0 (\mux_cnt_123_11_g751/w_0 , n_813, 
    \mux_cnt_123_11_g751/data0 );
  or \mux_cnt_123_11_g755/org (cnt[13], \mux_cnt_123_11_g755/w_0 , 
    \mux_cnt_123_11_g755/w_1 , \mux_cnt_123_11_g755/w_2 );
  and \mux_cnt_123_11_g755/a_2 (\mux_cnt_123_11_g755/w_2 , Gate, Tgate[13]);
  and \mux_cnt_123_11_g755/a_1 (\mux_cnt_123_11_g755/w_1 , n_818, cnt_nxt[13]);
  and \mux_cnt_123_11_g755/a_0 (\mux_cnt_123_11_g755/w_0 , n_813, 
    \mux_cnt_123_11_g755/data0 );
  or \mux_cnt_123_11_g759/org (cnt[12], \mux_cnt_123_11_g759/w_0 , 
    \mux_cnt_123_11_g759/w_1 , \mux_cnt_123_11_g759/w_2 );
  and \mux_cnt_123_11_g759/a_2 (\mux_cnt_123_11_g759/w_2 , Gate, Tgate[12]);
  and \mux_cnt_123_11_g759/a_1 (\mux_cnt_123_11_g759/w_1 , n_818, cnt_nxt[12]);
  and \mux_cnt_123_11_g759/a_0 (\mux_cnt_123_11_g759/w_0 , n_813, 
    \mux_cnt_123_11_g759/data0 );
  or \mux_cnt_123_11_g763/org (cnt[11], \mux_cnt_123_11_g763/w_0 , 
    \mux_cnt_123_11_g763/w_1 , \mux_cnt_123_11_g763/w_2 );
  and \mux_cnt_123_11_g763/a_2 (\mux_cnt_123_11_g763/w_2 , Gate, Tgate[11]);
  and \mux_cnt_123_11_g763/a_1 (\mux_cnt_123_11_g763/w_1 , n_818, cnt_nxt[11]);
  and \mux_cnt_123_11_g763/a_0 (\mux_cnt_123_11_g763/w_0 , n_813, 
    \mux_cnt_123_11_g763/data0 );
  or \mux_cnt_123_11_g767/org (cnt[10], \mux_cnt_123_11_g767/w_0 , 
    \mux_cnt_123_11_g767/w_1 , \mux_cnt_123_11_g767/w_2 );
  and \mux_cnt_123_11_g767/a_2 (\mux_cnt_123_11_g767/w_2 , Gate, Tgate[10]);
  and \mux_cnt_123_11_g767/a_1 (\mux_cnt_123_11_g767/w_1 , n_818, cnt_nxt[10]);
  and \mux_cnt_123_11_g767/a_0 (\mux_cnt_123_11_g767/w_0 , n_813, 
    \mux_cnt_123_11_g767/data0 );
  or \mux_cnt_123_11_g771/org (cnt[9], \mux_cnt_123_11_g771/w_0 , 
    \mux_cnt_123_11_g771/w_1 , \mux_cnt_123_11_g771/w_2 );
  and \mux_cnt_123_11_g771/a_2 (\mux_cnt_123_11_g771/w_2 , Gate, Tgate[9]);
  and \mux_cnt_123_11_g771/a_1 (\mux_cnt_123_11_g771/w_1 , n_818, cnt_nxt[9]);
  and \mux_cnt_123_11_g771/a_0 (\mux_cnt_123_11_g771/w_0 , n_813, 
    \mux_cnt_123_11_g771/data0 );
  or \mux_cnt_123_11_g775/org (cnt[8], \mux_cnt_123_11_g775/w_0 , 
    \mux_cnt_123_11_g775/w_1 , \mux_cnt_123_11_g775/w_2 );
  and \mux_cnt_123_11_g775/a_2 (\mux_cnt_123_11_g775/w_2 , Gate, Tgate[8]);
  and \mux_cnt_123_11_g775/a_1 (\mux_cnt_123_11_g775/w_1 , n_818, cnt_nxt[8]);
  and \mux_cnt_123_11_g775/a_0 (\mux_cnt_123_11_g775/w_0 , n_813, 
    \mux_cnt_123_11_g775/data0 );
  assign state[3] = Gate;
  assign state[1] = Sync;
  nor sub_109_39_g111(sub_109_39_n_159, sub_109_39_n_1051, prev_cnt[14]);
  xnor sub_109_39_g167(cnt_nxt[1], prev_cnt[0], prev_cnt[1]);
  xnor sub_109_39_g169(cnt_nxt[2], sub_109_39_n_103, prev_cnt[2]);
  xnor sub_109_39_g172(cnt_nxt[3], n_1168, prev_cnt[3]);
  xnor sub_109_39_g174(cnt_nxt[4], sub_109_39_n_139, prev_cnt[4]);
  xnor sub_109_39_g177(cnt_nxt[5], n_1392, prev_cnt[5]);
  xnor sub_109_39_g179(cnt_nxt[6], n_1174, prev_cnt[6]);
  xnor sub_109_39_g182(cnt_nxt[7], n_1393, prev_cnt[7]);
  xnor sub_109_39_g184(cnt_nxt[8], sub_109_39_n_166, prev_cnt[8]);
  xnor sub_109_39_g187(cnt_nxt[9], n_1397, prev_cnt[9]);
  xnor sub_109_39_g189(cnt_nxt[10], n_1398, prev_cnt[10]);
  xnor sub_109_39_g192(cnt_nxt[11], n_1399, prev_cnt[11]);
  xnor sub_109_39_g195(cnt_nxt[12], n_1181, prev_cnt[12]);
  xnor sub_109_39_g198(cnt_nxt[13], n_1400, prev_cnt[13]);
  xnor sub_109_39_g200(cnt_nxt[14], n_1401, prev_cnt[14]);
  xnor sub_109_39_g203(cnt_nxt[15], n_1402, prev_cnt[15]);
  nor g22(n_13, n_1349, prev_state[0]);
  not g1128(state[0], n_1286);
  not g1181(n_1326, prev_cnt[4]);
  not g1182(n_1327, prev_cnt[8]);
  not g1186(n_1331, prev_cnt[13]);
  not g1187(n_1332, prev_cnt[12]);
  nand g1201(sub_109_39_n_1051, n_1331, n_1332);
  not g1202(n_1346, sub_109_39_n_159);
  not g1203(n_1347, sub_109_39_n_109);
  nand g1205(n_1349, n_1341, prev_state[3], n_1339, n_1338);
  not g1206(n_1350, n_13);
  not g1225(n_1363, sub_109_39_n_151);
  nor g1251(n_731, n_1350, n_1330, rst);
  not g1252(n_1377, n_731);
  nand g1253(n_1378, n_1361, n_1372, n_1377);
  not g1254(n_1379, n_1378);
  nor g1255(n_1380, n_1379, sub_109_39_n_1553);
  not g1256(n_1381, n_1380);
  nand g1257(n_1286, n_1294, n_1381);
  nor g1258(state[4], n_1377, sub_109_39_n_1553);
  nor g1259(n_1382, n_1347, prev_cnt[6]);
  nor g1263(n_1385, n_1363, prev_cnt[12]);
  nor g1264(n_1386, sub_109_39_n_1051, n_1363);
  nor g1265(n_1387, n_1346, n_1363);
  nand g1270(n_1392, n_1547, n_1326);
  nand g1271(n_1393, n_1382, n_1547);
  nand g1275(n_1397, n_1552, n_1327);
  nand g1276(n_1398, sub_109_39_n_119, n_1552);
  nand g1277(n_1399, n_1165, n_1552);
  nand g1278(n_1400, n_1385, n_1552);
  nand g1279(n_1401, n_1386, n_1552);
  nand g1280(n_1402, n_1387, n_1552);
  nor g799(n_1044, ena, rst);
  not g1241(n_1371, n_1044);
  not g1196(n_1341, prev_state[4]);
  not g1195(n_1340, prev_state[3]);
  not g1194(n_1339, prev_state[2]);
  not g1193(n_1338, prev_state[1]);
  nand g1245(n_1373, n_1341, n_1340, n_1339, n_1338);
  not g1183(n_1328, prev_state[0]);
  nor g1246(n_1303, n_1373, n_1328);
  not g1247(n_1374, n_1303);
  not g1185(n_1330, ena);
  nor g1248(n_1375, n_1374, n_1330, rst);
  not g1249(n_1376, n_1375);
  nor g839(n_1079, prev_cnt_len[12], prev_cnt_len[13], prev_cnt_len[14], 
    prev_cnt_len[15]);
  nor g840(n_1078, prev_cnt_len[4], prev_cnt_len[5], prev_cnt_len[6], 
    prev_cnt_len[7]);
  nor g841(n_1077, prev_cnt_len[8], prev_cnt_len[9], prev_cnt_len[10], 
    prev_cnt_len[11]);
  not g1192(n_1337, prev_cnt_len[3]);
  not g1191(n_1336, prev_cnt_len[2]);
  not g1190(n_1335, prev_cnt_len[1]);
  not g1189(n_1334, prev_cnt_len[0]);
  nand g1213(n_1357, n_1337, n_1336, n_1335, n_1334);
  not g1214(n_1358, n_1357);
  nand g1215(sub_112_47_n_67, n_1079, n_1078, n_1077, n_1358);
  nand g1211(n_1355, prev_state[4], n_1340, n_1339, n_1338);
  nor g24(n_14, n_1355, prev_state[0]);
  not g1212(n_1356, n_14);
  nor g1217(n_775, n_1356, n_1330, rst);
  not g1218(n_1360, n_775);
  nor g1219(Done, sub_112_47_n_67, n_1360);
  not g712(n_804, Done);
  nand g1250(Sync, n_1376, n_804);
  not g1127(n_1294, Sync);
  nand g1209(n_1353, n_1341, n_1340, n_1339, prev_state[1]);
  nor g18(n_11, n_1353, prev_state[0]);
  not g1210(n_1354, n_11);
  nor g1242(n_757, n_1354, n_1330, rst);
  not g1243(n_1372, n_757);
  nor g834(n_1191, prev_cnt[14], prev_cnt[15], prev_cnt[12], prev_cnt[13]);
  nor sub_109_39_g70(sub_109_39_n_119, prev_cnt[8], prev_cnt[9]);
  not g1204(n_1348, sub_109_39_n_119);
  nor g1222(n_1165, n_1348, prev_cnt[10]);
  not g1223(n_1362, n_1165);
  nor g1224(sub_109_39_n_151, n_1362, prev_cnt[11]);
  nor sub_109_39_g62(sub_109_39_n_109, prev_cnt[4], prev_cnt[5]);
  not g1188(n_1333, prev_cnt[1]);
  not g862(n_1101, prev_cnt[0]);
  nand g1226(sub_109_39_n_103, n_1333, n_1101);
  not g1227(n_1364, sub_109_39_n_103);
  not g1198(n_1343, prev_cnt[2]);
  nand g1228(n_1168, n_1364, n_1343);
  not g1229(n_1365, n_1168);
  not g1199(n_1344, prev_cnt[3]);
  nand g1230(sub_109_39_n_139, n_1365, n_1344);
  not g1231(n_1547, sub_109_39_n_139);
  nand g1232(n_1174, sub_109_39_n_109, n_1547);
  not g1233(n_1367, n_1174);
  not g1200(n_1345, prev_cnt[7]);
  not g1197(n_1342, prev_cnt[6]);
  nand g1234(sub_109_39_n_166, n_1367, n_1345, n_1342);
  not g1235(n_1552, sub_109_39_n_166);
  nand g1236(n_1181, sub_109_39_n_151, n_1552);
  not g1237(n_1369, n_1181);
  nand g1238(sub_109_39_n_1553, n_1191, n_1369);
  nor g1244(state[2], n_1372, sub_109_39_n_1553);
  not g1087(n_1256, state[2]);
  nand g1285(n_1407, n_1371, n_1294, n_1256);
  not g1286(n_1408, n_1407);
  not g1184(n_1329, rst);
  nand g1288(n_813, n_1408, n_1329);
  not g1216(n_1359, sub_112_47_n_67);
  nor g1266(n_1388, n_1359, n_1360);
  not g1267(n_1389, n_1388);
  nand g1207(n_1351, n_1341, n_1340, prev_state[2], n_1338);
  nor g20(n_12, n_1351, prev_state[0]);
  not g1208(n_1352, n_12);
  nand g1261(n_1383, n_1354, n_1374);
  not g1262(n_1384, n_1383);
  nand g1268(n_1390, n_1356, n_1384);
  not g1269(n_1391, n_1390);
  nand g1272(n_1394, n_1352, n_1391);
  nor g1273(n_1395, n_1394, n_1330, rst);
  not g1274(n_1396, n_1395);
  not g1239(n_1370, sub_109_39_n_1553);
  nor g1281(n_1403, n_1372, n_1370);
  not g1282(n_1404, n_1403);
  nor g1220(n_745, n_1352, n_1330, rst);
  not g1221(n_1361, n_745);
  nor g1283(n_1405, n_1361, n_1370);
  not g1284(n_1406, n_1405);
  nand g1287(n_818, n_1389, n_1396, n_1404, n_1406);
  nor g1240(Gate, n_1361, sub_109_39_n_1553);
  nand g1260(n_816, n_1371, n_1329);
endmodule

