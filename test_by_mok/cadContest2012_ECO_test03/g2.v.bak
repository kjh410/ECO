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
wire  \mux_cnt_124_11_g275/w_0 , \mux_cnt_124_11_g275/w_1 , 
    \mux_cnt_124_11_g275/w_2 , \mux_cnt_124_11_g272/w_0 , 
    \mux_cnt_124_11_g272/w_1 , \mux_cnt_124_11_g272/w_2 , 
    \mux_cnt_124_11_g269/w_0 , \mux_cnt_124_11_g269/w_1 , 
    \mux_cnt_124_11_g269/w_2 , \mux_cnt_124_11_g266/w_0 , 
    \mux_cnt_124_11_g266/w_1 , \mux_cnt_124_11_g266/w_2 , 
    \mux_cnt_124_11_g263/w_0 , \mux_cnt_124_11_g263/w_1 , 
    \mux_cnt_124_11_g263/w_2 , \mux_cnt_124_11_g257/w_0 , 
    \mux_cnt_124_11_g257/w_1 , \mux_cnt_124_11_g257/w_2 , 
    \mux_cnt_124_11_g233/w_0 , \mux_cnt_124_11_g233/w_1 , 
    \mux_cnt_124_11_g233/w_2 , \mux_cnt_124_11_g230/w_0 , 
    \mux_cnt_124_11_g230/w_1 , \mux_cnt_124_11_g230/w_2 , n_459, n_458, n_457, 
    n_456, n_455, n_454, n_453, n_452, n_451, n_450, n_449, n_448, n_447, 
    n_443, n_328, n_327, n_38, Sync, rst, ena, clk;
wire  \mux_cnt_124_11_g275/data0 , \mux_cnt_124_11_g272/data0 , 
    \mux_cnt_124_11_g269/data0 , \mux_cnt_124_11_g266/data0 , 
    \mux_cnt_124_11_g263/data0 , \mux_cnt_124_11_g257/data0 , 
    \mux_cnt_124_11_g233/data0 , \mux_cnt_124_11_g230/data0 , Done, Gate;
wire   [15:0] cnt;
wire   [4:0] prev_state;
wire   [15:0] prev_cnt_len;
wire   [15:0] prev_cnt;
wire   [15:0] Tlen;
wire   [15:0] Tgate;
wire   [7:0] Tgdel;
wire   [7:0] Tsync;
  assign \mux_cnt_124_11_g275/data0  = 1'b0;
  assign \mux_cnt_124_11_g272/data0  = 1'b0;
  assign \mux_cnt_124_11_g269/data0  = 1'b0;
  assign \mux_cnt_124_11_g266/data0  = 1'b0;
  assign \mux_cnt_124_11_g263/data0  = 1'b0;
  assign \mux_cnt_124_11_g257/data0  = 1'b0;
  assign \mux_cnt_124_11_g233/data0  = 1'b0;
  assign \mux_cnt_124_11_g230/data0  = 1'b0;
  assign Done = 1'b0;
  assign Gate = 1'b0;
  or \mux_cnt_124_11_g275/org (cnt[2], \mux_cnt_124_11_g275/w_0 , 
    \mux_cnt_124_11_g275/w_1 , \mux_cnt_124_11_g275/w_2 );
  and \mux_cnt_124_11_g275/a_2 (\mux_cnt_124_11_g275/w_2 , n_328, prev_cnt[2]);
  and \mux_cnt_124_11_g275/a_1 (\mux_cnt_124_11_g275/w_1 , Sync, Tsync[2]);
  and \mux_cnt_124_11_g275/a_0 (\mux_cnt_124_11_g275/w_0 , n_327, 
    \mux_cnt_124_11_g275/data0 );
  or \mux_cnt_124_11_g272/org (cnt[3], \mux_cnt_124_11_g272/w_0 , 
    \mux_cnt_124_11_g272/w_1 , \mux_cnt_124_11_g272/w_2 );
  and \mux_cnt_124_11_g272/a_2 (\mux_cnt_124_11_g272/w_2 , n_328, prev_cnt[3]);
  and \mux_cnt_124_11_g272/a_1 (\mux_cnt_124_11_g272/w_1 , Sync, Tsync[3]);
  and \mux_cnt_124_11_g272/a_0 (\mux_cnt_124_11_g272/w_0 , n_327, 
    \mux_cnt_124_11_g272/data0 );
  or \mux_cnt_124_11_g269/org (cnt[4], \mux_cnt_124_11_g269/w_0 , 
    \mux_cnt_124_11_g269/w_1 , \mux_cnt_124_11_g269/w_2 );
  and \mux_cnt_124_11_g269/a_2 (\mux_cnt_124_11_g269/w_2 , n_328, prev_cnt[4]);
  and \mux_cnt_124_11_g269/a_1 (\mux_cnt_124_11_g269/w_1 , Sync, Tsync[4]);
  and \mux_cnt_124_11_g269/a_0 (\mux_cnt_124_11_g269/w_0 , n_327, 
    \mux_cnt_124_11_g269/data0 );
  or \mux_cnt_124_11_g266/org (cnt[5], \mux_cnt_124_11_g266/w_0 , 
    \mux_cnt_124_11_g266/w_1 , \mux_cnt_124_11_g266/w_2 );
  and \mux_cnt_124_11_g266/a_2 (\mux_cnt_124_11_g266/w_2 , n_328, prev_cnt[5]);
  and \mux_cnt_124_11_g266/a_1 (\mux_cnt_124_11_g266/w_1 , Sync, Tsync[5]);
  and \mux_cnt_124_11_g266/a_0 (\mux_cnt_124_11_g266/w_0 , n_327, 
    \mux_cnt_124_11_g266/data0 );
  or \mux_cnt_124_11_g263/org (cnt[6], \mux_cnt_124_11_g263/w_0 , 
    \mux_cnt_124_11_g263/w_1 , \mux_cnt_124_11_g263/w_2 );
  and \mux_cnt_124_11_g263/a_2 (\mux_cnt_124_11_g263/w_2 , n_328, prev_cnt[6]);
  and \mux_cnt_124_11_g263/a_1 (\mux_cnt_124_11_g263/w_1 , Sync, Tsync[6]);
  and \mux_cnt_124_11_g263/a_0 (\mux_cnt_124_11_g263/w_0 , n_327, 
    \mux_cnt_124_11_g263/data0 );
  or \mux_cnt_124_11_g257/org (cnt[7], \mux_cnt_124_11_g257/w_0 , 
    \mux_cnt_124_11_g257/w_1 , \mux_cnt_124_11_g257/w_2 );
  and \mux_cnt_124_11_g257/a_2 (\mux_cnt_124_11_g257/w_2 , n_328, prev_cnt[7]);
  and \mux_cnt_124_11_g257/a_1 (\mux_cnt_124_11_g257/w_1 , Sync, Tsync[7]);
  and \mux_cnt_124_11_g257/a_0 (\mux_cnt_124_11_g257/w_0 , n_327, 
    \mux_cnt_124_11_g257/data0 );
  or \mux_cnt_124_11_g233/org (cnt[0], \mux_cnt_124_11_g233/w_0 , 
    \mux_cnt_124_11_g233/w_1 , \mux_cnt_124_11_g233/w_2 );
  and \mux_cnt_124_11_g233/a_2 (\mux_cnt_124_11_g233/w_2 , n_328, prev_cnt[0]);
  and \mux_cnt_124_11_g233/a_1 (\mux_cnt_124_11_g233/w_1 , Sync, Tsync[0]);
  and \mux_cnt_124_11_g233/a_0 (\mux_cnt_124_11_g233/w_0 , n_327, 
    \mux_cnt_124_11_g233/data0 );
  or \mux_cnt_124_11_g230/org (cnt[1], \mux_cnt_124_11_g230/w_0 , 
    \mux_cnt_124_11_g230/w_1 , \mux_cnt_124_11_g230/w_2 );
  and \mux_cnt_124_11_g230/a_2 (\mux_cnt_124_11_g230/w_2 , n_328, prev_cnt[1]);
  and \mux_cnt_124_11_g230/a_1 (\mux_cnt_124_11_g230/w_1 , Sync, Tsync[1]);
  and \mux_cnt_124_11_g230/a_0 (\mux_cnt_124_11_g230/w_0 , n_327, 
    \mux_cnt_124_11_g230/data0 );
  nor g35(n_38, n_327, prev_state[0]);
  not g311(n_447, prev_state[0]);
  not g312(n_448, rst);
  not g313(n_449, prev_state[1]);
  not g314(n_450, prev_state[2]);
  not g315(n_451, prev_state[4]);
  not g316(n_452, prev_state[3]);
  nand g317(n_443, n_451, n_450, n_449);
  not g318(n_453, n_443);
  nand g319(n_454, n_453, ena);
  nor g320(Sync, n_454, rst, prev_state[3], n_447);
  nand g321(n_327, ena, n_448);
  not g322(n_455, n_38);
  nor g323(n_456, n_327, n_452);
  not g324(n_457, n_456);
  nor g325(n_458, n_327, n_453);
  not g326(n_459, n_458);
  nand g327(n_328, n_455, n_457, n_459);
  and g328(cnt[14], n_328, prev_cnt[14]);
  and g329(cnt[13], n_328, prev_cnt[13]);
  and g330(cnt[12], n_328, prev_cnt[12]);
  and g331(cnt[11], n_328, prev_cnt[11]);
  and g332(cnt[10], n_328, prev_cnt[10]);
  and g333(cnt[9], n_328, prev_cnt[9]);
  and g334(cnt[8], n_328, prev_cnt[8]);
  and g335(cnt[15], n_328, prev_cnt[15]);
endmodule

