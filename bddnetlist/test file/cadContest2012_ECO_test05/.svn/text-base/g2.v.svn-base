//
// Conformal-LEC: Version 11.10-d208 (10-Mar-2012) (64 bit executable)
//
module top(clk, ena, rst, Tsync, Tgdel, Tgate, Tlen, Sync, Gate, Done, 
    prev_state, prev_cnt, prev_cnt_len, cnt, state, state2);
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
output  [4:0] state2;
wire  \mux_cnt_124_11_g721/w_0 , \mux_cnt_124_11_g721/w_1 , 
    \mux_cnt_124_11_g721/w_2 , \mux_cnt_124_11_g721/w_3 , 
    \mux_cnt_124_11_g721/w_4 , \mux_cnt_124_11_g725/w_0 , 
    \mux_cnt_124_11_g725/w_1 , \mux_cnt_124_11_g725/w_2 , 
    \mux_cnt_124_11_g725/w_3 , \mux_cnt_124_11_g725/w_4 , 
    \mux_cnt_124_11_g729/w_0 , \mux_cnt_124_11_g729/w_1 , 
    \mux_cnt_124_11_g729/w_2 , \mux_cnt_124_11_g729/w_3 , 
    \mux_cnt_124_11_g729/w_4 , \mux_cnt_124_11_g733/w_0 , 
    \mux_cnt_124_11_g733/w_1 , \mux_cnt_124_11_g733/w_2 , 
    \mux_cnt_124_11_g733/w_3 , \mux_cnt_124_11_g733/w_4 , 
    \mux_cnt_124_11_g737/w_0 , \mux_cnt_124_11_g737/w_1 , 
    \mux_cnt_124_11_g737/w_2 , \mux_cnt_124_11_g737/w_3 , 
    \mux_cnt_124_11_g737/w_4 , \mux_cnt_124_11_g741/w_0 , 
    \mux_cnt_124_11_g741/w_1 , \mux_cnt_124_11_g741/w_2 , 
    \mux_cnt_124_11_g741/w_3 , \mux_cnt_124_11_g741/w_4 , 
    \mux_cnt_124_11_g745/w_0 , \mux_cnt_124_11_g745/w_1 , 
    \mux_cnt_124_11_g745/w_2 , \mux_cnt_124_11_g745/w_3 , 
    \mux_cnt_124_11_g745/w_4 , \mux_cnt_124_11_g777/w_0 , 
    \mux_cnt_124_11_g777/w_1 , \mux_cnt_124_11_g777/w_2 , 
    \mux_cnt_124_11_g777/w_3 , \mux_cnt_124_11_g777/w_4 , 
    \mux_cnt_124_11_g717/w_0 , \mux_cnt_124_11_g717/w_1 , 
    \mux_cnt_124_11_g717/w_2 , \mux_cnt_124_11_g749/w_0 , 
    \mux_cnt_124_11_g749/w_1 , \mux_cnt_124_11_g749/w_2 , 
    \mux_cnt_124_11_g753/w_0 , \mux_cnt_124_11_g753/w_1 , 
    \mux_cnt_124_11_g753/w_2 , \mux_cnt_124_11_g757/w_0 , 
    \mux_cnt_124_11_g757/w_1 , \mux_cnt_124_11_g757/w_2 , 
    \mux_cnt_124_11_g761/w_0 , \mux_cnt_124_11_g761/w_1 , 
    \mux_cnt_124_11_g761/w_2 , \mux_cnt_124_11_g765/w_0 , 
    \mux_cnt_124_11_g765/w_1 , \mux_cnt_124_11_g765/w_2 , 
    \mux_cnt_124_11_g769/w_0 , \mux_cnt_124_11_g769/w_1 , 
    \mux_cnt_124_11_g769/w_2 , \mux_cnt_124_11_g773/w_0 , 
    \mux_cnt_124_11_g773/w_1 , \mux_cnt_124_11_g773/w_2 , sub_113_47_n_67, 
    sub_110_39_n_1525, sub_110_39_n_1040, sub_110_39_n_166, sub_110_39_n_159, 
    sub_110_39_n_151, sub_110_39_n_139, sub_110_39_n_119, sub_110_39_n_109, 
    sub_110_39_n_103, n_1524, n_1519, n_1375, n_1374, n_1373, n_1372, n_1371, 
    n_1370, n_1369, n_1368, n_1367, n_1366, n_1365, n_1364, n_1363, n_1362, 
    n_1361, n_1360, n_1359, n_1358, n_1357, n_1356, n_1355, n_1354, n_1353, 
    n_1352, n_1351, n_1350, n_1349, n_1348, n_1347, n_1346, n_1345, n_1344, 
    n_1343, n_1342, n_1341, n_1340, n_1338, n_1336, n_1335, n_1334, n_1333, 
    n_1332, n_1331, n_1330, n_1329, n_1328, n_1327, n_1326, n_1325, n_1324, 
    n_1323, n_1322, n_1321, n_1320, n_1319, n_1318, n_1317, n_1316, n_1315, 
    n_1314, n_1313, n_1312, n_1311, n_1310, n_1309, n_1308, n_1307, n_1306, 
    n_1305, n_1304, n_1303, n_1302, n_1301, n_1300, n_1299, n_1298, n_1297, 
    n_1296, n_1295, n_1273, n_1272, n_1260, n_1240, n_1175, n_1165, n_1158, 
    n_1151, n_1148, n_1140, n_1087, n_1069, n_1068, n_1067, n_1034, n_818, 
    n_816, n_813, n_804, n_803, n_781, n_767, n_758, n_14, n_13, n_12, n_11, 
    Done, Gate, Sync, rst, ena, clk;
wire  \mux_cnt_124_11_g721/data0 , \mux_cnt_124_11_g725/data0 , 
    \mux_cnt_124_11_g729/data0 , \mux_cnt_124_11_g733/data0 , 
    \mux_cnt_124_11_g737/data0 , \mux_cnt_124_11_g741/data0 , 
    \mux_cnt_124_11_g745/data0 , \mux_cnt_124_11_g777/data0 , 
    \mux_cnt_124_11_g717/data0 , \mux_cnt_124_11_g749/data0 , 
    \mux_cnt_124_11_g753/data0 , \mux_cnt_124_11_g757/data0 , 
    \mux_cnt_124_11_g761/data0 , \mux_cnt_124_11_g765/data0 , 
    \mux_cnt_124_11_g769/data0 , \mux_cnt_124_11_g773/data0 ;
wire   [16:0] cnt_nxt;
wire   [4:0] state2;
wire   [4:0] state;
wire   [15:0] cnt;
wire   [4:0] prev_state;
wire   [15:0] prev_cnt_len;
wire   [15:0] prev_cnt;
wire   [15:0] Tlen;
wire   [15:0] Tgate;
wire   [7:0] Tgdel;
wire   [7:0] Tsync;
  assign \mux_cnt_124_11_g721/data0  = 1'b0;
  assign \mux_cnt_124_11_g725/data0  = 1'b0;
  assign \mux_cnt_124_11_g729/data0  = 1'b0;
  assign \mux_cnt_124_11_g733/data0  = 1'b0;
  assign \mux_cnt_124_11_g737/data0  = 1'b0;
  assign \mux_cnt_124_11_g741/data0  = 1'b0;
  assign \mux_cnt_124_11_g745/data0  = 1'b0;
  assign \mux_cnt_124_11_g777/data0  = 1'b0;
  assign \mux_cnt_124_11_g717/data0  = 1'b0;
  assign \mux_cnt_124_11_g749/data0  = 1'b0;
  assign \mux_cnt_124_11_g753/data0  = 1'b0;
  assign \mux_cnt_124_11_g757/data0  = 1'b0;
  assign \mux_cnt_124_11_g761/data0  = 1'b0;
  assign \mux_cnt_124_11_g765/data0  = 1'b0;
  assign \mux_cnt_124_11_g769/data0  = 1'b0;
  assign \mux_cnt_124_11_g773/data0  = 1'b0;
  or \mux_cnt_124_11_g721/org (cnt[6], \mux_cnt_124_11_g721/w_0 , 
    \mux_cnt_124_11_g721/w_1 , \mux_cnt_124_11_g721/w_2 , 
    \mux_cnt_124_11_g721/w_3 , \mux_cnt_124_11_g721/w_4 );
  and \mux_cnt_124_11_g721/a_4 (\mux_cnt_124_11_g721/w_4 , Gate, Tgate[6]);
  and \mux_cnt_124_11_g721/a_3 (\mux_cnt_124_11_g721/w_3 , state[2], Tgdel[6]);
  and \mux_cnt_124_11_g721/a_2 (\mux_cnt_124_11_g721/w_2 , n_818, cnt_nxt[6]);
  and \mux_cnt_124_11_g721/a_1 (\mux_cnt_124_11_g721/w_1 , Sync, Tsync[6]);
  and \mux_cnt_124_11_g721/a_0 (\mux_cnt_124_11_g721/w_0 , n_816, 
    \mux_cnt_124_11_g721/data0 );
  or \mux_cnt_124_11_g725/org (cnt[5], \mux_cnt_124_11_g725/w_0 , 
    \mux_cnt_124_11_g725/w_1 , \mux_cnt_124_11_g725/w_2 , 
    \mux_cnt_124_11_g725/w_3 , \mux_cnt_124_11_g725/w_4 );
  and \mux_cnt_124_11_g725/a_4 (\mux_cnt_124_11_g725/w_4 , Gate, Tgate[5]);
  and \mux_cnt_124_11_g725/a_3 (\mux_cnt_124_11_g725/w_3 , state[2], Tgdel[5]);
  and \mux_cnt_124_11_g725/a_2 (\mux_cnt_124_11_g725/w_2 , n_818, cnt_nxt[5]);
  and \mux_cnt_124_11_g725/a_1 (\mux_cnt_124_11_g725/w_1 , Sync, Tsync[5]);
  and \mux_cnt_124_11_g725/a_0 (\mux_cnt_124_11_g725/w_0 , n_816, 
    \mux_cnt_124_11_g725/data0 );
  or \mux_cnt_124_11_g729/org (cnt[4], \mux_cnt_124_11_g729/w_0 , 
    \mux_cnt_124_11_g729/w_1 , \mux_cnt_124_11_g729/w_2 , 
    \mux_cnt_124_11_g729/w_3 , \mux_cnt_124_11_g729/w_4 );
  and \mux_cnt_124_11_g729/a_4 (\mux_cnt_124_11_g729/w_4 , Gate, Tgate[4]);
  and \mux_cnt_124_11_g729/a_3 (\mux_cnt_124_11_g729/w_3 , state[2], Tgdel[4]);
  and \mux_cnt_124_11_g729/a_2 (\mux_cnt_124_11_g729/w_2 , n_818, cnt_nxt[4]);
  and \mux_cnt_124_11_g729/a_1 (\mux_cnt_124_11_g729/w_1 , Sync, Tsync[4]);
  and \mux_cnt_124_11_g729/a_0 (\mux_cnt_124_11_g729/w_0 , n_816, 
    \mux_cnt_124_11_g729/data0 );
  or \mux_cnt_124_11_g733/org (cnt[3], \mux_cnt_124_11_g733/w_0 , 
    \mux_cnt_124_11_g733/w_1 , \mux_cnt_124_11_g733/w_2 , 
    \mux_cnt_124_11_g733/w_3 , \mux_cnt_124_11_g733/w_4 );
  and \mux_cnt_124_11_g733/a_4 (\mux_cnt_124_11_g733/w_4 , Gate, Tgate[3]);
  and \mux_cnt_124_11_g733/a_3 (\mux_cnt_124_11_g733/w_3 , state[2], Tgdel[3]);
  and \mux_cnt_124_11_g733/a_2 (\mux_cnt_124_11_g733/w_2 , n_818, cnt_nxt[3]);
  and \mux_cnt_124_11_g733/a_1 (\mux_cnt_124_11_g733/w_1 , Sync, Tsync[3]);
  and \mux_cnt_124_11_g733/a_0 (\mux_cnt_124_11_g733/w_0 , n_816, 
    \mux_cnt_124_11_g733/data0 );
  or \mux_cnt_124_11_g737/org (cnt[2], \mux_cnt_124_11_g737/w_0 , 
    \mux_cnt_124_11_g737/w_1 , \mux_cnt_124_11_g737/w_2 , 
    \mux_cnt_124_11_g737/w_3 , \mux_cnt_124_11_g737/w_4 );
  and \mux_cnt_124_11_g737/a_4 (\mux_cnt_124_11_g737/w_4 , Gate, Tgate[2]);
  and \mux_cnt_124_11_g737/a_3 (\mux_cnt_124_11_g737/w_3 , state[2], Tgdel[2]);
  and \mux_cnt_124_11_g737/a_2 (\mux_cnt_124_11_g737/w_2 , n_818, cnt_nxt[2]);
  and \mux_cnt_124_11_g737/a_1 (\mux_cnt_124_11_g737/w_1 , Sync, Tsync[2]);
  and \mux_cnt_124_11_g737/a_0 (\mux_cnt_124_11_g737/w_0 , n_816, 
    \mux_cnt_124_11_g737/data0 );
  or \mux_cnt_124_11_g741/org (cnt[1], \mux_cnt_124_11_g741/w_0 , 
    \mux_cnt_124_11_g741/w_1 , \mux_cnt_124_11_g741/w_2 , 
    \mux_cnt_124_11_g741/w_3 , \mux_cnt_124_11_g741/w_4 );
  and \mux_cnt_124_11_g741/a_4 (\mux_cnt_124_11_g741/w_4 , Gate, Tgate[1]);
  and \mux_cnt_124_11_g741/a_3 (\mux_cnt_124_11_g741/w_3 , state[2], Tgdel[1]);
  and \mux_cnt_124_11_g741/a_2 (\mux_cnt_124_11_g741/w_2 , n_818, cnt_nxt[1]);
  and \mux_cnt_124_11_g741/a_1 (\mux_cnt_124_11_g741/w_1 , Sync, Tsync[1]);
  and \mux_cnt_124_11_g741/a_0 (\mux_cnt_124_11_g741/w_0 , n_816, 
    \mux_cnt_124_11_g741/data0 );
  or \mux_cnt_124_11_g745/org (cnt[0], \mux_cnt_124_11_g745/w_0 , 
    \mux_cnt_124_11_g745/w_1 , \mux_cnt_124_11_g745/w_2 , 
    \mux_cnt_124_11_g745/w_3 , \mux_cnt_124_11_g745/w_4 );
  and \mux_cnt_124_11_g745/a_4 (\mux_cnt_124_11_g745/w_4 , Gate, Tgate[0]);
  and \mux_cnt_124_11_g745/a_3 (\mux_cnt_124_11_g745/w_3 , state[2], Tgdel[0]);
  and \mux_cnt_124_11_g745/a_2 (\mux_cnt_124_11_g745/w_2 , n_818, n_1087);
  and \mux_cnt_124_11_g745/a_1 (\mux_cnt_124_11_g745/w_1 , Sync, Tsync[0]);
  and \mux_cnt_124_11_g745/a_0 (\mux_cnt_124_11_g745/w_0 , n_816, 
    \mux_cnt_124_11_g745/data0 );
  or \mux_cnt_124_11_g777/org (cnt[7], \mux_cnt_124_11_g777/w_0 , 
    \mux_cnt_124_11_g777/w_1 , \mux_cnt_124_11_g777/w_2 , 
    \mux_cnt_124_11_g777/w_3 , \mux_cnt_124_11_g777/w_4 );
  and \mux_cnt_124_11_g777/a_4 (\mux_cnt_124_11_g777/w_4 , Gate, Tgate[7]);
  and \mux_cnt_124_11_g777/a_3 (\mux_cnt_124_11_g777/w_3 , state[2], Tgdel[7]);
  and \mux_cnt_124_11_g777/a_2 (\mux_cnt_124_11_g777/w_2 , n_818, cnt_nxt[7]);
  and \mux_cnt_124_11_g777/a_1 (\mux_cnt_124_11_g777/w_1 , Sync, Tsync[7]);
  and \mux_cnt_124_11_g777/a_0 (\mux_cnt_124_11_g777/w_0 , n_816, 
    \mux_cnt_124_11_g777/data0 );
  or \mux_cnt_124_11_g717/org (cnt[15], \mux_cnt_124_11_g717/w_0 , 
    \mux_cnt_124_11_g717/w_1 , \mux_cnt_124_11_g717/w_2 );
  and \mux_cnt_124_11_g717/a_2 (\mux_cnt_124_11_g717/w_2 , Gate, Tgate[15]);
  and \mux_cnt_124_11_g717/a_1 (\mux_cnt_124_11_g717/w_1 , n_818, cnt_nxt[15]);
  and \mux_cnt_124_11_g717/a_0 (\mux_cnt_124_11_g717/w_0 , n_813, 
    \mux_cnt_124_11_g717/data0 );
  or \mux_cnt_124_11_g749/org (cnt[14], \mux_cnt_124_11_g749/w_0 , 
    \mux_cnt_124_11_g749/w_1 , \mux_cnt_124_11_g749/w_2 );
  and \mux_cnt_124_11_g749/a_2 (\mux_cnt_124_11_g749/w_2 , Gate, Tgate[14]);
  and \mux_cnt_124_11_g749/a_1 (\mux_cnt_124_11_g749/w_1 , n_818, cnt_nxt[14]);
  and \mux_cnt_124_11_g749/a_0 (\mux_cnt_124_11_g749/w_0 , n_813, 
    \mux_cnt_124_11_g749/data0 );
  or \mux_cnt_124_11_g753/org (cnt[13], \mux_cnt_124_11_g753/w_0 , 
    \mux_cnt_124_11_g753/w_1 , \mux_cnt_124_11_g753/w_2 );
  and \mux_cnt_124_11_g753/a_2 (\mux_cnt_124_11_g753/w_2 , Gate, Tgate[13]);
  and \mux_cnt_124_11_g753/a_1 (\mux_cnt_124_11_g753/w_1 , n_818, cnt_nxt[13]);
  and \mux_cnt_124_11_g753/a_0 (\mux_cnt_124_11_g753/w_0 , n_813, 
    \mux_cnt_124_11_g753/data0 );
  or \mux_cnt_124_11_g757/org (cnt[12], \mux_cnt_124_11_g757/w_0 , 
    \mux_cnt_124_11_g757/w_1 , \mux_cnt_124_11_g757/w_2 );
  and \mux_cnt_124_11_g757/a_2 (\mux_cnt_124_11_g757/w_2 , Gate, Tgate[12]);
  and \mux_cnt_124_11_g757/a_1 (\mux_cnt_124_11_g757/w_1 , n_818, cnt_nxt[12]);
  and \mux_cnt_124_11_g757/a_0 (\mux_cnt_124_11_g757/w_0 , n_813, 
    \mux_cnt_124_11_g757/data0 );
  or \mux_cnt_124_11_g761/org (cnt[11], \mux_cnt_124_11_g761/w_0 , 
    \mux_cnt_124_11_g761/w_1 , \mux_cnt_124_11_g761/w_2 );
  and \mux_cnt_124_11_g761/a_2 (\mux_cnt_124_11_g761/w_2 , Gate, Tgate[11]);
  and \mux_cnt_124_11_g761/a_1 (\mux_cnt_124_11_g761/w_1 , n_818, cnt_nxt[11]);
  and \mux_cnt_124_11_g761/a_0 (\mux_cnt_124_11_g761/w_0 , n_813, 
    \mux_cnt_124_11_g761/data0 );
  or \mux_cnt_124_11_g765/org (cnt[10], \mux_cnt_124_11_g765/w_0 , 
    \mux_cnt_124_11_g765/w_1 , \mux_cnt_124_11_g765/w_2 );
  and \mux_cnt_124_11_g765/a_2 (\mux_cnt_124_11_g765/w_2 , Gate, Tgate[10]);
  and \mux_cnt_124_11_g765/a_1 (\mux_cnt_124_11_g765/w_1 , n_818, cnt_nxt[10]);
  and \mux_cnt_124_11_g765/a_0 (\mux_cnt_124_11_g765/w_0 , n_813, 
    \mux_cnt_124_11_g765/data0 );
  or \mux_cnt_124_11_g769/org (cnt[9], \mux_cnt_124_11_g769/w_0 , 
    \mux_cnt_124_11_g769/w_1 , \mux_cnt_124_11_g769/w_2 );
  and \mux_cnt_124_11_g769/a_2 (\mux_cnt_124_11_g769/w_2 , Gate, Tgate[9]);
  and \mux_cnt_124_11_g769/a_1 (\mux_cnt_124_11_g769/w_1 , n_818, cnt_nxt[9]);
  and \mux_cnt_124_11_g769/a_0 (\mux_cnt_124_11_g769/w_0 , n_813, 
    \mux_cnt_124_11_g769/data0 );
  or \mux_cnt_124_11_g773/org (cnt[8], \mux_cnt_124_11_g773/w_0 , 
    \mux_cnt_124_11_g773/w_1 , \mux_cnt_124_11_g773/w_2 );
  and \mux_cnt_124_11_g773/a_2 (\mux_cnt_124_11_g773/w_2 , Gate, Tgate[8]);
  and \mux_cnt_124_11_g773/a_1 (\mux_cnt_124_11_g773/w_1 , n_818, cnt_nxt[8]);
  and \mux_cnt_124_11_g773/a_0 (\mux_cnt_124_11_g773/w_0 , n_813, 
    \mux_cnt_124_11_g773/data0 );
  assign state2[4] = Gate;
  assign state2[3] = state[2];
  assign state2[2] = state[4];
  assign state2[1] = state[1];
  assign state2[0] = state[0];
  assign state[3] = Gate;
  nor sub_110_39_g111(sub_110_39_n_159, sub_110_39_n_1040, prev_cnt[14]);
  xnor sub_110_39_g167(cnt_nxt[1], prev_cnt[0], prev_cnt[1]);
  xnor sub_110_39_g169(cnt_nxt[2], sub_110_39_n_103, prev_cnt[2]);
  xnor sub_110_39_g172(cnt_nxt[3], n_1151, prev_cnt[3]);
  xnor sub_110_39_g174(cnt_nxt[4], sub_110_39_n_139, prev_cnt[4]);
  xnor sub_110_39_g177(cnt_nxt[5], n_1359, prev_cnt[5]);
  xnor sub_110_39_g179(cnt_nxt[6], n_1158, prev_cnt[6]);
  xnor sub_110_39_g182(cnt_nxt[7], n_1360, prev_cnt[7]);
  xnor sub_110_39_g184(cnt_nxt[8], sub_110_39_n_166, prev_cnt[8]);
  xnor sub_110_39_g187(cnt_nxt[9], n_1364, prev_cnt[9]);
  xnor sub_110_39_g189(cnt_nxt[10], n_1365, prev_cnt[10]);
  xnor sub_110_39_g192(cnt_nxt[11], n_1366, prev_cnt[11]);
  xnor sub_110_39_g195(cnt_nxt[12], n_1165, prev_cnt[12]);
  xnor sub_110_39_g198(cnt_nxt[13], n_1367, prev_cnt[13]);
  xnor sub_110_39_g200(cnt_nxt[14], n_1368, prev_cnt[14]);
  xnor sub_110_39_g203(cnt_nxt[15], n_1369, prev_cnt[15]);
  nor g24(n_13, n_1324, prev_state[0]);
  not g1109(state[0], n_1260);
  not g1163(n_1295, prev_cnt[4]);
  not g1164(n_1296, prev_cnt[8]);
  not g1168(n_1300, prev_cnt[13]);
  not g1169(n_1301, prev_cnt[12]);
  nand g1183(sub_110_39_n_1040, n_1300, n_1301);
  not g1184(n_1315, sub_110_39_n_159);
  not g1189(n_1318, sub_110_39_n_109);
  nand g1195(n_1324, n_1306, prev_state[3], n_1304, n_1303);
  not g1196(n_1325, n_13);
  not g1211(n_1334, sub_110_39_n_151);
  nor g1232(n_781, n_1325, n_1299, rst);
  not g1233(n_1344, n_781);
  nand g1234(n_1345, n_1332, n_1343, n_1344);
  not g1235(n_1346, n_1345);
  nor g1236(n_1347, n_1346, sub_110_39_n_1525);
  not g1237(n_1348, n_1347);
  nand g1238(n_1260, n_803, n_1348);
  nor g1239(state[4], n_1344, sub_110_39_n_1525);
  nor g1240(n_1349, n_1318, prev_cnt[6]);
  nor g1244(n_1352, n_1334, prev_cnt[12]);
  nor g1245(n_1353, sub_110_39_n_1040, n_1334);
  nor g1246(n_1354, n_1315, n_1334);
  nand g1251(n_1359, n_1519, n_1295);
  nand g1252(n_1360, n_1349, n_1519);
  nand g1256(n_1364, n_1524, n_1296);
  nand g1257(n_1365, sub_110_39_n_119, n_1524);
  nand g1258(n_1366, n_1148, n_1524);
  nand g1259(n_1367, n_1352, n_1524);
  nand g1260(n_1368, n_1353, n_1524);
  nand g1261(n_1369, n_1354, n_1524);
  nor g794(n_1034, ena, rst);
  not g1227(n_1342, n_1034);
  not g1174(n_1306, prev_state[4]);
  not g1173(n_1305, prev_state[3]);
  not g1172(n_1304, prev_state[2]);
  not g1171(n_1303, prev_state[1]);
  nand g1185(n_1316, n_1306, n_1305, n_1304, n_1303);
  not g1165(n_1297, prev_state[0]);
  nor g1186(n_1272, n_1316, n_1297);
  not g1187(n_1317, n_1272);
  not g1167(n_1299, ena);
  nor g1188(state[1], n_1317, n_1299, rst);
  not g708(n_803, state[1]);
  nor g829(n_1069, prev_cnt_len[4], prev_cnt_len[5], prev_cnt_len[6], 
    prev_cnt_len[7]);
  nor g832(n_1067, prev_cnt_len[12], prev_cnt_len[13], prev_cnt_len[14], 
    prev_cnt_len[15]);
  nor g836(n_1068, prev_cnt_len[8], prev_cnt_len[9], prev_cnt_len[10], 
    prev_cnt_len[11]);
  not g1178(n_1310, prev_cnt_len[3]);
  not g1177(n_1309, prev_cnt_len[2]);
  not g1176(n_1308, prev_cnt_len[1]);
  not g1175(n_1307, prev_cnt_len[0]);
  nand g1199(n_1328, n_1310, n_1309, n_1308, n_1307);
  not g1200(n_1329, n_1328);
  nand g1201(sub_113_47_n_67, n_1069, n_1067, n_1068, n_1329);
  nand g1197(n_1326, prev_state[4], n_1305, n_1304, n_1303);
  nor g31(n_14, n_1326, prev_state[0]);
  not g1198(n_1327, n_14);
  nor g1203(n_1273, n_1327, n_1299, rst);
  not g1204(n_1331, n_1273);
  nor g1205(Done, sub_113_47_n_67, n_1331);
  not g710(n_804, Done);
  nand g1228(Sync, n_803, n_804);
  not g931(n_1140, Sync);
  nand g1193(n_1322, n_1306, n_1305, n_1304, prev_state[1]);
  nor g20(n_11, n_1322, prev_state[0]);
  not g1194(n_1323, n_11);
  nor g1229(n_767, n_1323, n_1299, rst);
  not g1230(n_1343, n_767);
  nor g827(n_1175, prev_cnt[14], prev_cnt[15], prev_cnt[12], prev_cnt[13]);
  nor sub_110_39_g70(sub_110_39_n_119, prev_cnt[8], prev_cnt[9]);
  not g1190(n_1319, sub_110_39_n_119);
  nor g1208(n_1148, n_1319, prev_cnt[10]);
  not g1209(n_1333, n_1148);
  nor g1210(sub_110_39_n_151, n_1333, prev_cnt[11]);
  nor sub_110_39_g62(sub_110_39_n_109, prev_cnt[4], prev_cnt[5]);
  not g1170(n_1302, prev_cnt[1]);
  not g855(n_1087, prev_cnt[0]);
  nand g1212(sub_110_39_n_103, n_1302, n_1087);
  not g1213(n_1335, sub_110_39_n_103);
  not g1180(n_1312, prev_cnt[2]);
  nand g1214(n_1151, n_1335, n_1312);
  not g1215(n_1336, n_1151);
  not g1181(n_1313, prev_cnt[3]);
  nand g1216(sub_110_39_n_139, n_1336, n_1313);
  not g1217(n_1519, sub_110_39_n_139);
  nand g1218(n_1158, sub_110_39_n_109, n_1519);
  not g1219(n_1338, n_1158);
  not g1182(n_1314, prev_cnt[7]);
  not g1179(n_1311, prev_cnt[6]);
  nand g1220(sub_110_39_n_166, n_1338, n_1314, n_1311);
  not g1221(n_1524, sub_110_39_n_166);
  nand g1222(n_1165, sub_110_39_n_151, n_1524);
  not g1223(n_1340, n_1165);
  nand g1224(sub_110_39_n_1525, n_1175, n_1340);
  nor g1231(state[2], n_1343, sub_110_39_n_1525);
  not g1075(n_1240, state[2]);
  nand g1266(n_1374, n_1342, n_1140, n_1240);
  not g1267(n_1375, n_1374);
  not g1166(n_1298, rst);
  nand g1269(n_813, n_1375, n_1298);
  not g1202(n_1330, sub_113_47_n_67);
  nor g1247(n_1355, n_1330, n_1331);
  not g1248(n_1356, n_1355);
  nand g1191(n_1320, n_1306, n_1305, prev_state[2], n_1303);
  nor g22(n_12, n_1320, prev_state[0]);
  not g1192(n_1321, n_12);
  nand g1242(n_1350, n_1323, n_1317);
  not g1243(n_1351, n_1350);
  nand g1249(n_1357, n_1327, n_1351);
  not g1250(n_1358, n_1357);
  nand g1253(n_1361, n_1321, n_1358);
  nor g1254(n_1362, n_1361, n_1299, rst);
  not g1255(n_1363, n_1362);
  not g1225(n_1341, sub_110_39_n_1525);
  nor g1262(n_1370, n_1343, n_1341);
  not g1263(n_1371, n_1370);
  nor g1206(n_758, n_1321, n_1299, rst);
  not g1207(n_1332, n_758);
  nor g1264(n_1372, n_1332, n_1341);
  not g1265(n_1373, n_1372);
  nand g1268(n_818, n_1356, n_1363, n_1371, n_1373);
  nor g1226(Gate, n_1332, sub_110_39_n_1525);
  nand g1241(n_816, n_1342, n_1298);
endmodule

