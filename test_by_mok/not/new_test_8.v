//
// Conformal-LEC: Version 11.10-d208 (10-Mar-2012) (64 bit executable)
//
module top(a, b, op, y, parity, overflow, greater, is_eq, less);
output parity, overflow, greater, is_eq, less;
input   [7:0] a;
input   [7:0] b;
input   [1:0] op;
output  [7:0] y;
wire  \mux_44_12_g156/w_0 , \mux_44_12_g156/w_1 , \mux_44_12_g156/w_2 , 
    \mux_temp_y_21_12_g792/w_0 , \mux_temp_y_21_12_g792/w_1 , 
    \mux_temp_y_21_12_g19/w_0 , \mux_temp_y_21_12_g19/w_1 , 
    \mux_temp_y_21_12_g19/w_2 , \mux_temp_y_21_12_g19/w_3 , 
    \mux_temp_y_21_12_g18/w_0 , \mux_temp_y_21_12_g18/w_1 , 
    \mux_temp_y_21_12_g18/w_2 , \mux_temp_y_21_12_g18/w_3 , 
    \mux_temp_y_21_12_g17/w_0 , \mux_temp_y_21_12_g17/w_1 , 
    \mux_temp_y_21_12_g17/w_2 , \mux_temp_y_21_12_g17/w_3 , 
    \mux_temp_y_21_12_g16/w_0 , \mux_temp_y_21_12_g16/w_1 , 
    \mux_temp_y_21_12_g16/w_2 , \mux_temp_y_21_12_g16/w_3 , 
    \mux_temp_y_21_12_g15/w_0 , \mux_temp_y_21_12_g15/w_1 , 
    \mux_temp_y_21_12_g15/w_2 , \mux_temp_y_21_12_g15/w_3 , 
    \mux_temp_y_21_12_g10/w_0 , \mux_temp_y_21_12_g10/w_1 , 
    \mux_temp_y_21_12_g10/w_2 , \mux_temp_y_21_12_g10/w_3 , sub_29_29_n_1105, 
    sub_29_29_n_1103, sub_29_29_n_320, sub_29_29_n_69, sub_29_29_n_66, 
    sub_29_29_n_63, sub_29_29_n_59, sub_29_29_n_54, sub_29_29_n_37, 
    sub_29_29_n_32, n_1123, n_1114, n_1113, n_1112, n_1111, n_1106, n_1104, 
    n_1102, n_1101, n_1099, n_1098, n_1097, n_1096, n_1095, n_988, n_987, 
    n_986, n_985, n_984, n_983, n_982, n_981, n_980, n_979, n_978, n_977, 
    n_976, n_975, n_974, n_973, n_972, n_971, n_970, n_969, n_968, n_967, 
    n_966, n_965, n_964, n_963, n_962, n_961, n_960, n_959, n_958, n_957, 
    n_956, n_955, n_954, n_953, n_952, n_951, n_950, n_949, n_948, n_947, 
    n_946, n_945, n_944, n_943, n_942, n_940, n_939, n_938, n_937, n_936, 
    n_935, n_934, n_933, n_932, n_931, n_930, n_929, n_928, n_927, n_926, 
    n_925, n_924, n_923, n_922, n_921, n_920, n_919, n_918, n_917, n_916, 
    n_915, n_914, n_913, n_912, n_911, n_910, n_909, n_908, n_907, n_906, 
    n_905, n_904, n_903, n_902, n_901, n_900, n_898, n_897, n_895, n_894, 
    n_892, n_891, n_890, n_889, n_888, n_887, n_886, n_885, n_884, n_883, 
    n_882, n_881, n_880, n_878, n_877, n_876, n_875, n_874, n_873, n_872, 
    n_871, n_870, n_869, n_867, n_866, n_865, n_864, n_863, n_862, n_861, 
    n_860, n_859, n_858, n_857, n_856, n_840, n_827, n_806, n_805, n_620, 
    n_619, n_618, n_617, n_616, n_615, n_437, n_436, n_435, n_431, n_429, 
    n_428, n_419, n_416, n_415, n_397, n_395, n_379, n_367, n_323, n_318, 
    n_308, n_301, n_300, n_298, n_136, n_135, n_133, n_132, n_131, n_130, 
    n_129, n_77, n_76, n_75, n_74, n_73, n_43, n_41, n_39, n_38, n_37, n_35, 
    n_34, n_33, n_31, n_30, n_29, n_26, n_25, n_23, n_22, n_21, n_19, n_18, 
    n_17, n_16, gt_39_12_n_57, gt_39_12_n_52, gt_39_12_n_46, gt_25_24_n_35, 
    add_24_29_n_1115, add_24_29_n_57, add_24_29_n_55, add_24_29_n_53, 
    add_24_29_n_51, add_24_29_n_50, add_24_29_n_49, add_24_29_n_48, 
    add_24_29_n_47, add_24_29_n_43, add_24_29_n_39, add_24_29_n_37, 
    add_24_29_n_33, add_24_29_n_27, less, is_eq, greater, overflow, parity, for_not;

wire  \mux_44_12_g156/data0 ;
wire   [7:0] y;
wire   [1:0] op;
wire   [7:0] b;
wire   [7:0] a;
  assign \mux_44_12_g156/data0  = 1'b0;
  or \mux_44_12_g156/org (y[7], \mux_44_12_g156/w_0 , \mux_44_12_g156/w_1 , 
    \mux_44_12_g156/w_2 );
  and \mux_44_12_g156/a_2 (\mux_44_12_g156/w_2 , n_988, n_43);
  and \mux_44_12_g156/a_1 (\mux_44_12_g156/w_1 , n_987, n_41);
  and \mux_44_12_g156/a_0 (\mux_44_12_g156/w_0 , n_986, n_43 );
  or \mux_temp_y_21_12_g792/org (n_129, \mux_temp_y_21_12_g792/w_0 , 
    \mux_temp_y_21_12_g792/w_1 );
  and \mux_temp_y_21_12_g792/a_1 (\mux_temp_y_21_12_g792/w_1 , n_805, n_16);
  and \mux_temp_y_21_12_g792/a_0 (\mux_temp_y_21_12_g792/w_0 , n_318, n_1114);
  or \mux_temp_y_21_12_g19/org (n_136, \mux_temp_y_21_12_g19/w_0 , 
    \mux_temp_y_21_12_g19/w_1 , \mux_temp_y_21_12_g19/w_2 , 
    \mux_temp_y_21_12_g19/w_3 );
  and \mux_temp_y_21_12_g19/a_3 (\mux_temp_y_21_12_g19/w_3 , n_301, n_616);
  and \mux_temp_y_21_12_g19/a_2 (\mux_temp_y_21_12_g19/w_2 , n_318, n_35);
  and \mux_temp_y_21_12_g19/a_1 (\mux_temp_y_21_12_g19/w_1 , n_1095, n_34);
  and \mux_temp_y_21_12_g19/a_0 (\mux_temp_y_21_12_g19/w_0 , n_1111, n_33);
  or \mux_temp_y_21_12_g18/org (n_135, \mux_temp_y_21_12_g18/w_0 , 
    \mux_temp_y_21_12_g18/w_1 , \mux_temp_y_21_12_g18/w_2 , 
    \mux_temp_y_21_12_g18/w_3 );
  and \mux_temp_y_21_12_g18/a_3 (\mux_temp_y_21_12_g18/w_3 , n_301, n_615);
  and \mux_temp_y_21_12_g18/a_2 (\mux_temp_y_21_12_g18/w_2 , n_318, n_39);
  and \mux_temp_y_21_12_g18/a_1 (\mux_temp_y_21_12_g18/w_1 , n_1095, n_38);
  and \mux_temp_y_21_12_g18/a_0 (\mux_temp_y_21_12_g18/w_0 , n_1111, n_37);
  or \mux_temp_y_21_12_g17/org (n_133, \mux_temp_y_21_12_g17/w_0 , 
    \mux_temp_y_21_12_g17/w_1 , \mux_temp_y_21_12_g17/w_2 , 
    \mux_temp_y_21_12_g17/w_3 );
  and \mux_temp_y_21_12_g17/a_3 (\mux_temp_y_21_12_g17/w_3 , n_301, n_620);
  and \mux_temp_y_21_12_g17/a_2 (\mux_temp_y_21_12_g17/w_2 , n_318, n_1113);
  and \mux_temp_y_21_12_g17/a_1 (\mux_temp_y_21_12_g17/w_1 , n_1095, n_26);
  and \mux_temp_y_21_12_g17/a_0 (\mux_temp_y_21_12_g17/w_0 , n_1111, n_25);
  or \mux_temp_y_21_12_g16/org (n_132, \mux_temp_y_21_12_g16/w_0 , 
    \mux_temp_y_21_12_g16/w_1 , \mux_temp_y_21_12_g16/w_2 , 
    \mux_temp_y_21_12_g16/w_3 );
  and \mux_temp_y_21_12_g16/a_3 (\mux_temp_y_21_12_g16/w_3 , n_301, n_619);
  and \mux_temp_y_21_12_g16/a_2 (\mux_temp_y_21_12_g16/w_2 , n_318, n_31);
  and \mux_temp_y_21_12_g16/a_1 (\mux_temp_y_21_12_g16/w_1 , n_1095, n_30);
  and \mux_temp_y_21_12_g16/a_0 (\mux_temp_y_21_12_g16/w_0 , n_1111, n_29);
  or \mux_temp_y_21_12_g15/org (n_131, \mux_temp_y_21_12_g15/w_0 , 
    \mux_temp_y_21_12_g15/w_1 , \mux_temp_y_21_12_g15/w_2 , 
    \mux_temp_y_21_12_g15/w_3 );
  and \mux_temp_y_21_12_g15/a_3 (\mux_temp_y_21_12_g15/w_3 , n_301, n_618);
  and \mux_temp_y_21_12_g15/a_2 (\mux_temp_y_21_12_g15/w_2 , n_318, n_23);
  and \mux_temp_y_21_12_g15/a_1 (\mux_temp_y_21_12_g15/w_1 , n_1095, n_22);
  and \mux_temp_y_21_12_g15/a_0 (\mux_temp_y_21_12_g15/w_0 , n_1111, n_21);
  or \mux_temp_y_21_12_g10/org (n_130, \mux_temp_y_21_12_g10/w_0 , 
    \mux_temp_y_21_12_g10/w_1 , \mux_temp_y_21_12_g10/w_2 , 
    \mux_temp_y_21_12_g10/w_3 );
  and \mux_temp_y_21_12_g10/a_3 (\mux_temp_y_21_12_g10/w_3 , n_301, n_617);
  and \mux_temp_y_21_12_g10/a_2 (\mux_temp_y_21_12_g10/w_2 , n_318, n_19);
  and \mux_temp_y_21_12_g10/a_1 (\mux_temp_y_21_12_g10/w_1 , n_1095, n_18);
  and \mux_temp_y_21_12_g10/a_0 (\mux_temp_y_21_12_g10/w_0 , n_1111, n_17);
  nor add_24_29_g10(add_24_29_n_33, a[3], b[3]);
  nor add_24_29_g12(add_24_29_n_43, a[4], b[4]);
  nor add_24_29_g14(add_24_29_n_39, a[5], b[5]);
  nor add_24_29_g16(add_24_29_n_50, a[6], b[6]);
  nor add_24_29_g23(add_24_29_n_48, n_880, n_1113);
  nor add_24_29_g24(add_24_29_n_47, add_24_29_n_37, add_24_29_n_33);
  nor add_24_29_g27(add_24_29_n_51, n_884, n_35);
  nor add_24_29_g28(add_24_29_n_55, add_24_29_n_43, add_24_29_n_39);
  nand add_24_29_g32(add_24_29_n_49, add_24_29_n_47, add_24_29_n_1115);
  nand add_24_29_g33(add_24_29_n_57, add_24_29_n_48, add_24_29_n_49);
  nor add_24_29_g34(add_24_29_n_53, add_24_29_n_50, add_24_29_n_51);
  xnor add_24_29_g48(n_17, n_1114, n_965);
  xnor add_24_29_g50(n_21, add_24_29_n_1115, n_966);
  xnor add_24_29_g53(n_25, n_972, n_970);
  xnor add_24_29_g55(n_29, add_24_29_n_57, n_969);
  xnor add_24_29_g58(n_33, n_979, n_968);
  nor add_24_29_g6(add_24_29_n_27, a[1], b[1]);
  xnor add_24_29_g60(n_37, n_978, n_967);
  nor add_24_29_g8(add_24_29_n_37, a[2], b[2]);
  xor g15(n_16, a[0], b[0]);
  xor g21(n_74, n_129, n_135);
  xor g22(n_75, n_136, n_130);
  xor g23(n_76, n_131, n_73);
  xor g24(n_77, n_74, n_75);
  xor g25(parity, n_76, n_77);
  xor g3(n_73, n_132, n_133);
  not gt_39_12_g10(greater, n_840);
  nand sub_29_29_g38(sub_29_29_n_54, sub_29_29_n_320, n_1104);
  nand sub_29_29_g46(sub_29_29_n_69, sub_29_29_n_63, n_300);
  xnor sub_29_29_g56(n_18, sub_29_29_n_37, n_617);
  xnor sub_29_29_g58(n_22, sub_29_29_n_320, n_618);
  xnor sub_29_29_g61(n_26, n_977, n_620);
  xnor sub_29_29_g63(n_30, sub_29_29_n_1105, n_619);
  xnor sub_29_29_g66(n_34, n_985, n_616);
  xnor sub_29_29_g68(n_38, n_984, n_615);
  not sub_29_29_g9(n_43, sub_29_29_n_32);
  nor g251(n_395, n_916, n_1096, gt_39_12_n_57);
  nor g287(n_419, n_1102, a[0]);
  nor g298(n_429, n_1096, gt_39_12_n_57, n_397);
  nor g299(n_428, gt_39_12_n_57, n_323, n_397);
  nor g303(n_431, n_1104, gt_39_12_n_46);
  not g793(n_805, n_318);
  not g904(n_872, a[7]);
  not g907(n_875, add_24_29_n_33);
  not g915(n_881, n_1113);
  not g916(n_882, add_24_29_n_37);
  not g931(n_891, gt_39_12_n_52);
  not g933(n_892, n_308);
  nor g936(gt_39_12_n_57, n_872, b[7]);
  not g937(n_894, gt_39_12_n_57);
  nand g938(n_895, n_891, n_892, n_1097, n_894);
  not g942(n_897, n_431);
  not g949(n_901, n_419);
  nor g952(n_903, n_1102, n_871);
  not g953(n_904, n_903);
  nand g954(n_905, n_901, sub_29_29_n_1103, n_904);
  nand g955(n_906, n_1098, n_1101, n_905);
  nand g956(n_907, n_897, n_1099, n_906);
  not g957(n_908, n_907);
  nor g958(n_909, n_895, n_908);
  not g959(n_910, n_909);
  not g965(n_913, sub_29_29_n_63);
  nor g966(n_914, n_891, n_911);
  not g967(n_915, n_914);
  nand g968(n_916, n_913, n_915);
  nand g971(n_323, n_872, b[7]);
  not g972(n_918, n_323);
  nor g973(n_919, n_395, n_917, n_918);
  not g974(n_920, n_919);
  nor g975(n_921, n_395, n_894, n_918);
  not g976(n_922, n_921);
  nand g977(n_923, n_920, n_922);
  nand g978(n_840, n_910, n_923);
  not g985(n_928, sub_29_29_n_69);
  nor g992(n_397, n_918, n_932);
  not g993(n_933, n_429);
  not g994(n_934, n_428);
  nand g995(n_367, n_933, n_934);
  not g996(n_935, n_367);
  nor g997(n_936, greater, n_367);
  not g998(n_937, n_936);
  nand g1004(n_379, n_928, n_323, sub_29_29_n_1105);
  not g1005(n_942, n_379);
  nor g1006(n_943, greater, n_379);
  not g1007(n_944, n_943);
  nand g1008(is_eq, n_937, n_944);
  nor g1009(less, greater, n_935, n_942);
  nor g1036(n_318, n_1123, op[0]);
  nor g1037(n_301, n_1123, n_869);
  nand g1038(n_965, n_888, n_887);
  nand g1039(n_966, n_882, n_1112);
  nand g1041(n_615, n_300, n_1097);
  nand g1043(n_616, n_891, n_298);
  nand g1044(n_617, n_900, sub_29_29_n_1103);
  nand g1045(n_618, n_1101, n_1104);
  nand g1047(n_619, n_892, sub_29_29_n_66);
  nand g1048(n_970, n_875, n_881);
  nand g1049(n_620, n_1098, n_1099);
  nand g1050(n_971, n_882, add_24_29_n_1115);
  nand g1051(n_972, n_1112, n_971);
  nand g1056(n_977, sub_29_29_n_54, n_1101);
  nor g1059(n_980, n_913, n_1106);
  not g1060(n_981, n_980);
  nor g1061(n_982, n_912, n_1106);
  not g1062(n_983, n_982);
  nand g1063(n_984, sub_29_29_n_59, n_981);
  nand g1064(n_985, n_892, n_983);
  not g901(n_869, op[0]);
  nor g1029(n_1095, op[1], n_869);
  not g1030(n_960, n_1095);
  not g895(n_863, a[6]);
  nor g934(n_1096, n_863, b[6]);
  not g935(n_1097, n_1096);
  nand g969(n_300, n_863, b[6]);
  not g970(n_917, n_300);
  not g893(n_861, a[5]);
  nor g930(gt_39_12_n_52, n_861, b[5]);
  nand g960(n_298, n_861, b[5]);
  nor g282(n_416, gt_39_12_n_52, n_298);
  not g987(n_930, n_416);
  not g891(n_859, a[4]);
  nor g932(n_308, n_859, b[4]);
  nor g283(n_415, gt_39_12_n_52, n_308);
  not g988(n_931, n_415);
  nand g989(sub_29_29_n_59, n_930, n_931);
  nor g990(n_827, n_917, sub_29_29_n_59);
  not g991(n_932, n_827);
  not g961(n_911, n_298);
  nand g962(sub_29_29_n_66, n_859, b[4]);
  not g963(n_912, sub_29_29_n_66);
  nor g964(sub_29_29_n_63, n_911, n_912);
  not g889(n_857, a[3]);
  nor g940(gt_39_12_n_46, n_857, b[3]);
  not g941(n_1098, gt_39_12_n_46);
  nand g943(n_1099, n_857, b[3]);
  not g944(n_898, n_1099);
  not g899(n_867, a[2]);
  nor g945(n_806, n_867, b[2]);
  not g946(n_1101, n_806);
  nor g999(n_938, n_898, n_1101);
  not g1000(n_939, n_938);
  not g897(n_865, a[1]);
  nor g947(n_1102, n_865, b[1]);
  not g948(n_900, n_1102);
  nand g950(sub_29_29_n_1103, n_865, b[1]);
  not g951(n_902, sub_29_29_n_1103);
  not g902(n_870, a[0]);
  nand g979(sub_29_29_n_37, n_870, b[0]);
  not g980(n_924, sub_29_29_n_37);
  nor g981(n_925, n_902, n_924);
  not g982(n_926, n_925);
  nand g983(sub_29_29_n_320, n_900, n_926);
  nand g939(n_1104, n_867, b[2]);
  not g984(n_927, sub_29_29_n_54);
  nand g1001(n_940, n_927, n_1099);
  nand g1002(sub_29_29_n_1105, n_1098, n_939, n_940);
  not g1003(n_1106, sub_29_29_n_1105);
  nor g1010(n_945, sub_29_29_n_69, n_1106);
  not g1011(n_946, n_945);
  nand g1012(sub_29_29_n_32, n_1097, n_932, n_946);
  nor g1031(n_961, n_960, sub_29_29_n_32);
  not g1032(n_962, n_961);
  nor g108(n_1111, op[0], op[1]);
  not g986(n_929, n_1111);
  not g890(n_858, b[4]);
  nor g917(n_31, n_859, n_858);
  not g918(n_883, n_31);
  nor g919(n_884, add_24_29_n_39, n_883);
  not g892(n_860, b[5]);
  nor g920(n_35, n_861, n_860);
  not g922(n_886, add_24_29_n_55);
  not g898(n_866, b[2]);
  nor g911(n_23, n_867, n_866);
  not g912(n_1112, n_23);
  nor g913(n_880, add_24_29_n_33, n_1112);
  not g888(n_856, b[3]);
  nor g914(n_1113, n_857, n_856);
  not g896(n_864, b[1]);
  nor g923(n_19, n_865, n_864);
  not g924(n_887, n_19);
  not g925(n_888, add_24_29_n_27);
  not g903(n_871, b[0]);
  nor g926(n_1114, n_870, n_871);
  nand g927(n_889, n_888, n_1114);
  nand g928(add_24_29_n_1115, n_887, n_889);
  not g1013(n_947, add_24_29_n_57);
  nor g1052(n_973, n_886, n_947);
  not g1053(n_974, n_973);
  nand g1057(n_978, add_24_29_n_51, n_974);
  not g910(n_878, add_24_29_n_50);
  not g894(n_862, b[6]);
  nor g1014(n_39, n_863, n_862);
  not g1015(n_948, n_39);
  nand g1040(n_967, n_878, n_948);
  not g905(n_873, n_37);
  not g908(n_876, add_24_29_n_43);
  nand g1046(n_969, n_876, n_883);
  not g929(n_890, add_24_29_n_53);
  nand g1016(n_949, n_878, add_24_29_n_55);
  nor g1017(n_950, n_947, n_949);
  not g1018(n_951, n_950);
  nand g1019(n_41, n_890, n_948, n_951);
  nor g307(n_436, n_29, n_41);
  not g1021(n_953, n_436);
  nor g1054(n_975, add_24_29_n_43, n_947);
  not g1055(n_976, n_975);
  nand g1058(n_979, n_883, n_976);
  not g909(n_877, add_24_29_n_39);
  not g921(for_not, n_35);
  not g9999(n_885, for_not);
  nand g1042(n_968, n_877, n_885);
  nor g308(n_435, n_33, n_41);
  not g1022(n_954, n_435);
  nand g1023(n_437, n_953, n_954);
  nor g1024(n_955, n_873, n_437);
  not g1025(n_956, n_955);
  not g1020(n_952, n_41);
  nor g1026(n_957, n_952, n_437);
  not g1027(n_958, n_957);
  nand g1028(n_959, n_956, n_958);
  nand g498(gt_25_24_n_35, n_959, n_41);
  nor g1033(n_963, n_929, gt_25_24_n_35);
  not g1034(n_964, n_963);
  nand g1035(overflow, n_962, n_964);
  not g900(n_1123, op[1]);
  nand g1065(n_986, overflow, n_1123);
  not g906(n_874, overflow);
  nor g1066(n_987, n_874, n_929);
  nor g1067(n_988, n_874, n_960);
  and g1068(y[6], overflow, n_135);
  and g1069(y[5], overflow, n_136);
  and g1070(y[4], overflow, n_132);
  and g1071(y[3], overflow, n_133);
  and g1072(y[2], overflow, n_131);
  and g1073(y[1], overflow, n_130);
  and g1074(y[0], overflow, n_129);
endmodule

