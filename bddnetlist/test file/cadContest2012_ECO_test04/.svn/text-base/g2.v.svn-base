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
wire  \mux_cnt_125_11_g286/w_0 , \mux_cnt_125_11_g286/w_1 , 
    \mux_cnt_125_11_g286/w_2 , \mux_cnt_125_11_g283/w_0 , 
    \mux_cnt_125_11_g283/w_1 , \mux_cnt_125_11_g283/w_2 , 
    \mux_cnt_125_11_g280/w_0 , \mux_cnt_125_11_g280/w_1 , 
    \mux_cnt_125_11_g280/w_2 , \mux_cnt_125_11_g277/w_0 , 
    \mux_cnt_125_11_g277/w_1 , \mux_cnt_125_11_g277/w_2 , 
    \mux_cnt_125_11_g274/w_0 , \mux_cnt_125_11_g274/w_1 , 
    \mux_cnt_125_11_g274/w_2 , \mux_cnt_125_11_g268/w_0 , 
    \mux_cnt_125_11_g268/w_1 , \mux_cnt_125_11_g268/w_2 , 
    \mux_cnt_125_11_g244/w_0 , \mux_cnt_125_11_g244/w_1 , 
    \mux_cnt_125_11_g244/w_2 , \mux_cnt_125_11_g241/w_0 , 
    \mux_cnt_125_11_g241/w_1 , \mux_cnt_125_11_g241/w_2 , n_470, n_469, n_468, 
    n_467, n_466, n_465, n_464, n_463, n_462, n_461, n_460, n_459, n_458, 
    n_454, n_336, n_335, n_38, Sync, rst, ena, clk;
wire  \mux_cnt_125_11_g286/data0 , \mux_cnt_125_11_g283/data0 , 
    \mux_cnt_125_11_g280/data0 , \mux_cnt_125_11_g277/data0 , 
    \mux_cnt_125_11_g274/data0 , \mux_cnt_125_11_g268/data0 , 
    \mux_cnt_125_11_g244/data0 , \mux_cnt_125_11_g241/data0 , Done, Gate;
wire   [4:0] state;
wire   [15:0] cnt;
wire   [4:0] prev_state;
wire   [15:0] prev_cnt_len;
wire   [15:0] prev_cnt;
wire   [15:0] Tlen;
wire   [15:0] Tgate;
wire   [7:0] Tgdel;
wire   [7:0] Tsync;
  assign \mux_cnt_125_11_g286/data0  = 1'b0;
  assign \mux_cnt_125_11_g283/data0  = 1'b0;
  assign \mux_cnt_125_11_g280/data0  = 1'b0;
  assign \mux_cnt_125_11_g277/data0  = 1'b0;
  assign \mux_cnt_125_11_g274/data0  = 1'b0;
  assign \mux_cnt_125_11_g268/data0  = 1'b0;
  assign \mux_cnt_125_11_g244/data0  = 1'b0;
  assign \mux_cnt_125_11_g241/data0  = 1'b0;
  assign state[4] = 1'b0;
  assign state[3] = 1'b0;
  assign state[2] = 1'b0;
  assign Done = 1'b0;
  assign Gate = 1'b0;
  or \mux_cnt_125_11_g286/org (cnt[2], \mux_cnt_125_11_g286/w_0 , 
    \mux_cnt_125_11_g286/w_1 , \mux_cnt_125_11_g286/w_2 );
  and \mux_cnt_125_11_g286/a_2 (\mux_cnt_125_11_g286/w_2 , n_336, prev_cnt[2]);
  and \mux_cnt_125_11_g286/a_1 (\mux_cnt_125_11_g286/w_1 , Sync, Tsync[2]);
  and \mux_cnt_125_11_g286/a_0 (\mux_cnt_125_11_g286/w_0 , n_335, 
    \mux_cnt_125_11_g286/data0 );
  or \mux_cnt_125_11_g283/org (cnt[3], \mux_cnt_125_11_g283/w_0 , 
    \mux_cnt_125_11_g283/w_1 , \mux_cnt_125_11_g283/w_2 );
  and \mux_cnt_125_11_g283/a_2 (\mux_cnt_125_11_g283/w_2 , n_336, prev_cnt[3]);
  and \mux_cnt_125_11_g283/a_1 (\mux_cnt_125_11_g283/w_1 , Sync, Tsync[3]);
  and \mux_cnt_125_11_g283/a_0 (\mux_cnt_125_11_g283/w_0 , n_335, 
    \mux_cnt_125_11_g283/data0 );
  or \mux_cnt_125_11_g280/org (cnt[4], \mux_cnt_125_11_g280/w_0 , 
    \mux_cnt_125_11_g280/w_1 , \mux_cnt_125_11_g280/w_2 );
  and \mux_cnt_125_11_g280/a_2 (\mux_cnt_125_11_g280/w_2 , n_336, prev_cnt[4]);
  and \mux_cnt_125_11_g280/a_1 (\mux_cnt_125_11_g280/w_1 , Sync, Tsync[4]);
  and \mux_cnt_125_11_g280/a_0 (\mux_cnt_125_11_g280/w_0 , n_335, 
    \mux_cnt_125_11_g280/data0 );
  or \mux_cnt_125_11_g277/org (cnt[5], \mux_cnt_125_11_g277/w_0 , 
    \mux_cnt_125_11_g277/w_1 , \mux_cnt_125_11_g277/w_2 );
  and \mux_cnt_125_11_g277/a_2 (\mux_cnt_125_11_g277/w_2 , n_336, prev_cnt[5]);
  and \mux_cnt_125_11_g277/a_1 (\mux_cnt_125_11_g277/w_1 , Sync, Tsync[5]);
  and \mux_cnt_125_11_g277/a_0 (\mux_cnt_125_11_g277/w_0 , n_335, 
    \mux_cnt_125_11_g277/data0 );
  or \mux_cnt_125_11_g274/org (cnt[6], \mux_cnt_125_11_g274/w_0 , 
    \mux_cnt_125_11_g274/w_1 , \mux_cnt_125_11_g274/w_2 );
  and \mux_cnt_125_11_g274/a_2 (\mux_cnt_125_11_g274/w_2 , n_336, prev_cnt[6]);
  and \mux_cnt_125_11_g274/a_1 (\mux_cnt_125_11_g274/w_1 , Sync, Tsync[6]);
  and \mux_cnt_125_11_g274/a_0 (\mux_cnt_125_11_g274/w_0 , n_335, 
    \mux_cnt_125_11_g274/data0 );
  or \mux_cnt_125_11_g268/org (cnt[7], \mux_cnt_125_11_g268/w_0 , 
    \mux_cnt_125_11_g268/w_1 , \mux_cnt_125_11_g268/w_2 );
  and \mux_cnt_125_11_g268/a_2 (\mux_cnt_125_11_g268/w_2 , n_336, prev_cnt[7]);
  and \mux_cnt_125_11_g268/a_1 (\mux_cnt_125_11_g268/w_1 , Sync, Tsync[7]);
  and \mux_cnt_125_11_g268/a_0 (\mux_cnt_125_11_g268/w_0 , n_335, 
    \mux_cnt_125_11_g268/data0 );
  or \mux_cnt_125_11_g244/org (cnt[0], \mux_cnt_125_11_g244/w_0 , 
    \mux_cnt_125_11_g244/w_1 , \mux_cnt_125_11_g244/w_2 );
  and \mux_cnt_125_11_g244/a_2 (\mux_cnt_125_11_g244/w_2 , n_336, prev_cnt[0]);
  and \mux_cnt_125_11_g244/a_1 (\mux_cnt_125_11_g244/w_1 , Sync, Tsync[0]);
  and \mux_cnt_125_11_g244/a_0 (\mux_cnt_125_11_g244/w_0 , n_335, 
    \mux_cnt_125_11_g244/data0 );
  or \mux_cnt_125_11_g241/org (cnt[1], \mux_cnt_125_11_g241/w_0 , 
    \mux_cnt_125_11_g241/w_1 , \mux_cnt_125_11_g241/w_2 );
  and \mux_cnt_125_11_g241/a_2 (\mux_cnt_125_11_g241/w_2 , n_336, prev_cnt[1]);
  and \mux_cnt_125_11_g241/a_1 (\mux_cnt_125_11_g241/w_1 , Sync, Tsync[1]);
  and \mux_cnt_125_11_g241/a_0 (\mux_cnt_125_11_g241/w_0 , n_335, 
    \mux_cnt_125_11_g241/data0 );
  assign state[1] = Sync;
  not g10(state[0], Sync);
  nor g35(n_38, n_335, prev_state[0]);
  not g324(n_458, prev_state[0]);
  not g325(n_459, rst);
  not g326(n_460, prev_state[1]);
  not g327(n_461, prev_state[2]);
  not g328(n_462, prev_state[4]);
  not g329(n_463, prev_state[3]);
  nand g330(n_454, n_462, n_461, n_460);
  not g331(n_464, n_454);
  nand g332(n_465, n_464, ena);
  nor g333(Sync, n_465, rst, prev_state[3], n_458);
  nand g334(n_335, ena, n_459);
  not g335(n_466, n_38);
  nor g336(n_467, n_335, n_463);
  not g337(n_468, n_467);
  nor g338(n_469, n_335, n_464);
  not g339(n_470, n_469);
  nand g340(n_336, n_466, n_468, n_470);
  and g341(cnt[14], n_336, prev_cnt[14]);
  and g342(cnt[13], n_336, prev_cnt[13]);
  and g343(cnt[12], n_336, prev_cnt[12]);
  and g344(cnt[11], n_336, prev_cnt[11]);
  and g345(cnt[10], n_336, prev_cnt[10]);
  and g346(cnt[9], n_336, prev_cnt[9]);
  and g347(cnt[8], n_336, prev_cnt[8]);
  and g348(cnt[15], n_336, prev_cnt[15]);
endmodule

