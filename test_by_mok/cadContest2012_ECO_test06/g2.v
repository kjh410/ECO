//
// Conformal-LEC: Version 11.10-d208 (10-Mar-2012) (64 bit executable)
//
module top(clk, a, b, op, oe, y, parity, overflow, greater, is_eq, less);
input  clk, oe;
output parity, overflow, greater, is_eq, less;
input   [7:0] a;
input   [7:0] b;
input   [1:0] op;
output  [7:0] y;
wire  \mux_temp_y_21_12_g677/w_0 , \mux_temp_y_21_12_g677/w_1 , 
    \mux_44_12_g155/w_0 , \mux_44_12_g155/w_1 , \mux_44_12_g155/w_2 , 
    \mux_temp_y_21_12_g18/w_0 , \mux_temp_y_21_12_g18/w_1 , 
    \mux_temp_y_21_12_g18/w_2 , \mux_temp_y_21_12_g18/w_3 , 
    \mux_temp_y_21_12_g17/w_0 , \mux_temp_y_21_12_g17/w_1 , 
    \mux_temp_y_21_12_g17/w_2 , \mux_temp_y_21_12_g17/w_3 , 
    \mux_temp_y_21_12_g16/w_0 , \mux_temp_y_21_12_g16/w_1 , 
    \mux_temp_y_21_12_g16/w_2 , \mux_temp_y_21_12_g16/w_3 , 
    \mux_temp_y_21_12_g15/w_0 , \mux_temp_y_21_12_g15/w_1 , 
    \mux_temp_y_21_12_g15/w_2 , \mux_temp_y_21_12_g15/w_3 , 
    \mux_temp_y_21_12_g10/w_0 , \mux_temp_y_21_12_g10/w_1 , 
    \mux_temp_y_21_12_g10/w_2 , \mux_temp_y_21_12_g10/w_3 , sub_29_29_n_299, 
    sub_29_29_n_58, sub_29_29_n_55, sub_29_29_n_54, sub_29_29_n_50, 
    sub_29_29_n_34, sub_29_29_n_33, n_836, n_835, n_834, n_833, n_832, n_831, 
    n_830, n_829, n_828, n_827, n_826, n_825, n_824, n_823, n_822, n_821, 
    n_820, n_819, n_818, n_817, n_816, n_815, n_814, n_813, n_812, n_811, 
    n_810, n_809, n_808, n_807, n_806, n_805, n_804, n_803, n_802, n_801, 
    n_800, n_799, n_798, n_797, n_796, n_795, n_794, n_793, n_792, n_791, 
    n_790, n_789, n_788, n_787, n_786, n_785, n_784, n_783, n_782, n_781, 
    n_780, n_779, n_778, n_777, n_776, n_775, n_774, n_773, n_772, n_771, 
    n_770, n_769, n_768, n_767, n_766, n_765, n_764, n_763, n_762, n_761, 
    n_760, n_759, n_758, n_757, n_756, n_755, n_754, n_753, n_752, n_751, 
    n_750, n_749, n_748, n_747, n_746, n_745, n_744, n_743, n_742, n_741, 
    n_740, n_739, n_738, n_737, n_736, n_735, n_734, n_733, n_730, n_729, 
    n_695, n_694, n_693, n_692, n_690, n_546, n_545, n_544, n_543, n_542, 
    n_411, n_409, n_399, n_398, n_396, n_392, n_387, n_300, n_298, n_293, 
    n_291, n_290, n_287, n_286, n_285, n_284, n_283, n_281, n_136, n_133, 
    n_132, n_131, n_130, n_129, n_73, n_72, n_71, n_70, n_35, n_34, n_33, n_31, 
    n_30, n_29, n_27, n_26, n_25, n_23, n_22, n_21, n_19, n_18, n_17, n_16, 
    n_15, lt_40_17_n_73, lt_40_17_n_36, gt_39_12_n_73, gt_39_12_n_57, 
    gt_39_12_n_52, gt_39_12_n_46, gt_30_24_n_31, add_24_29_n_51, 
    add_24_29_n_50, add_24_29_n_47, add_24_29_n_46, add_24_29_n_45, 
    add_24_29_n_44, add_24_29_n_41, add_24_29_n_40, add_24_29_n_36, 
    add_24_29_n_34, add_24_29_n_30, add_24_29_n_24, less, is_eq, greater, 
    overflow, parity, oe, clk;
wire  \mux_44_12_g155/data0 ;
wire   [7:0] y;
wire   [1:0] op;
wire   [7:0] b;
wire   [7:0] a;
  assign \mux_44_12_g155/data0  = 1'b0;
  or \mux_temp_y_21_12_g677/org (n_129, \mux_temp_y_21_12_g677/w_0 , 
    \mux_temp_y_21_12_g677/w_1 );
  and \mux_temp_y_21_12_g677/a_1 (\mux_temp_y_21_12_g677/w_1 , n_693, n_16);
  and \mux_temp_y_21_12_g677/a_0 (\mux_temp_y_21_12_g677/w_0 , n_298, n_15);
  or \mux_44_12_g155/org (y[6], \mux_44_12_g155/w_0 , \mux_44_12_g155/w_1 , 
    \mux_44_12_g155/w_2 );
  and \mux_44_12_g155/a_2 (\mux_44_12_g155/w_2 , n_692, n_300);
  and \mux_44_12_g155/a_1 (\mux_44_12_g155/w_1 , n_694, n_835);
  and \mux_44_12_g155/a_0 (\mux_44_12_g155/w_0 , n_690, \mux_44_12_g155/data0 );
  or \mux_temp_y_21_12_g18/org (n_136, \mux_temp_y_21_12_g18/w_0 , 
    \mux_temp_y_21_12_g18/w_1 , \mux_temp_y_21_12_g18/w_2 , 
    \mux_temp_y_21_12_g18/w_3 );
  and \mux_temp_y_21_12_g18/a_3 (\mux_temp_y_21_12_g18/w_3 , n_283, n_542);
  and \mux_temp_y_21_12_g18/a_2 (\mux_temp_y_21_12_g18/w_2 , n_298, n_35);
  and \mux_temp_y_21_12_g18/a_1 (\mux_temp_y_21_12_g18/w_1 , n_293, n_34);
  and \mux_temp_y_21_12_g18/a_0 (\mux_temp_y_21_12_g18/w_0 , n_287, n_33);
  or \mux_temp_y_21_12_g17/org (n_133, \mux_temp_y_21_12_g17/w_0 , 
    \mux_temp_y_21_12_g17/w_1 , \mux_temp_y_21_12_g17/w_2 , 
    \mux_temp_y_21_12_g17/w_3 );
  and \mux_temp_y_21_12_g17/a_3 (\mux_temp_y_21_12_g17/w_3 , n_283, n_545);
  and \mux_temp_y_21_12_g17/a_2 (\mux_temp_y_21_12_g17/w_2 , n_298, n_27);
  and \mux_temp_y_21_12_g17/a_1 (\mux_temp_y_21_12_g17/w_1 , n_293, n_26);
  and \mux_temp_y_21_12_g17/a_0 (\mux_temp_y_21_12_g17/w_0 , n_287, n_25);
  or \mux_temp_y_21_12_g16/org (n_132, \mux_temp_y_21_12_g16/w_0 , 
    \mux_temp_y_21_12_g16/w_1 , \mux_temp_y_21_12_g16/w_2 , 
    \mux_temp_y_21_12_g16/w_3 );
  and \mux_temp_y_21_12_g16/a_3 (\mux_temp_y_21_12_g16/w_3 , n_283, n_543);
  and \mux_temp_y_21_12_g16/a_2 (\mux_temp_y_21_12_g16/w_2 , n_298, n_31);
  and \mux_temp_y_21_12_g16/a_1 (\mux_temp_y_21_12_g16/w_1 , n_293, n_30);
  and \mux_temp_y_21_12_g16/a_0 (\mux_temp_y_21_12_g16/w_0 , n_287, n_29);
  or \mux_temp_y_21_12_g15/org (n_131, \mux_temp_y_21_12_g15/w_0 , 
    \mux_temp_y_21_12_g15/w_1 , \mux_temp_y_21_12_g15/w_2 , 
    \mux_temp_y_21_12_g15/w_3 );
  and \mux_temp_y_21_12_g15/a_3 (\mux_temp_y_21_12_g15/w_3 , n_283, n_546);
  and \mux_temp_y_21_12_g15/a_2 (\mux_temp_y_21_12_g15/w_2 , n_298, n_23);
  and \mux_temp_y_21_12_g15/a_1 (\mux_temp_y_21_12_g15/w_1 , n_293, n_22);
  and \mux_temp_y_21_12_g15/a_0 (\mux_temp_y_21_12_g15/w_0 , n_287, n_21);
  or \mux_temp_y_21_12_g10/org (n_130, \mux_temp_y_21_12_g10/w_0 , 
    \mux_temp_y_21_12_g10/w_1 , \mux_temp_y_21_12_g10/w_2 , 
    \mux_temp_y_21_12_g10/w_3 );
  and \mux_temp_y_21_12_g10/a_3 (\mux_temp_y_21_12_g10/w_3 , n_283, n_544);
  and \mux_temp_y_21_12_g10/a_2 (\mux_temp_y_21_12_g10/w_2 , n_298, n_19);
  and \mux_temp_y_21_12_g10/a_1 (\mux_temp_y_21_12_g10/w_1 , n_293, n_18);
  and \mux_temp_y_21_12_g10/a_0 (\mux_temp_y_21_12_g10/w_0 , n_287, n_17);
  assign overflow = y[7];
  nor add_24_29_g10(add_24_29_n_30, a[3], b[3]);
  nor add_24_29_g12(add_24_29_n_40, a[4], b[4]);
  nor add_24_29_g14(add_24_29_n_36, a[5], b[5]);
  nor add_24_29_g21(add_24_29_n_45, n_755, n_27);
  nor add_24_29_g22(add_24_29_n_44, add_24_29_n_34, add_24_29_n_30);
  nor add_24_29_g25(add_24_29_n_51, n_759, n_35);
  nor add_24_29_g26(add_24_29_n_50, add_24_29_n_40, add_24_29_n_36);
  nand add_24_29_g30(add_24_29_n_46, add_24_29_n_44, add_24_29_n_41);
  xnor add_24_29_g38(n_17, n_15, n_822);
  xnor add_24_29_g40(n_21, add_24_29_n_41, n_823);
  nor add_24_29_g6(add_24_29_n_24, a[1], b[1]);
  nor add_24_29_g8(add_24_29_n_34, a[2], b[2]);
  xor g14(n_16, a[0], b[0]);
  xor g19(n_72, n_129, n_136);
  xor g20(n_70, n_132, n_130);
  xor g21(n_73, n_70, n_71);
  xor g22(parity, n_72, n_73);
  xor g3(n_71, n_133, n_131);
  not gt_39_12_g10(greater, n_729);
  nand sub_29_29_g35(sub_29_29_n_50, sub_29_29_n_299, n_285);
  xnor sub_29_29_g45(n_18, sub_29_29_n_33, n_544);
  xnor sub_29_29_g47(n_22, sub_29_29_n_299, n_546);
  nor g107(n_287, op[0], op[1]);
  not sub_29_29_g8(n_300, gt_30_24_n_31);
  xnor add_24_29_g43(n_25, n_828, n_826);
  xnor add_24_29_g45(n_29, add_24_29_n_47, n_825);
  xnor add_24_29_g48(n_33, n_834, n_824);
  nand add_24_29_g31(add_24_29_n_47, add_24_29_n_45, add_24_29_n_46);
  xnor sub_29_29_g50(n_26, n_831, n_545);
  xnor sub_29_29_g52(n_30, sub_29_29_n_54, n_543);
  xnor sub_29_29_g55(n_34, n_836, n_542);
  nand g260(n_387, sub_29_29_n_54, lt_40_17_n_73, sub_29_29_n_55, n_281);
  nor g281(n_392, gt_39_12_n_57, a[6]);
  nor g287(n_396, n_290, a[0]);
  nor g290(n_399, gt_39_12_n_52, n_281);
  nor g291(n_398, gt_39_12_n_52, n_291);
  nor g304(n_409, gt_39_12_n_57, n_284);
  nor g306(n_411, n_285, gt_39_12_n_46);
  not g678(n_693, n_298);
  nor g679(n_694, n_692, n_690);
  not g757(n_733, b[3]);
  not g758(n_734, a[3]);
  not g759(n_735, b[4]);
  not g760(n_736, a[4]);
  not g761(n_737, b[5]);
  not g762(n_738, a[5]);
  not g763(n_739, b[1]);
  not g764(n_740, a[1]);
  not g765(n_741, b[2]);
  not g766(n_742, a[2]);
  not g767(n_743, op[1]);
  not g768(n_744, op[0]);
  not g769(n_745, a[6]);
  not g770(n_746, a[0]);
  not g771(n_747, b[0]);
  not g772(n_748, a[7]);
  not g773(n_749, b[6]);
  not g774(n_750, y[7]);
  not g775(n_751, add_24_29_n_30);
  not g776(n_752, add_24_29_n_40);
  not g777(n_753, add_24_29_n_36);
  nor g778(n_23, n_742, n_741);
  not g779(n_754, n_23);
  nor g780(n_755, add_24_29_n_30, n_754);
  nor g781(n_27, n_734, n_733);
  not g782(n_756, n_27);
  not g783(n_757, add_24_29_n_34);
  nor g784(n_31, n_736, n_735);
  not g785(n_758, n_31);
  nor g786(n_759, add_24_29_n_36, n_758);
  nor g787(n_35, n_738, n_737);
  not g788(n_760, n_35);
  not g789(n_761, add_24_29_n_50);
  nor g790(n_19, n_740, n_739);
  not g791(n_762, n_19);
  not g792(n_763, add_24_29_n_24);
  nor g793(n_15, n_746, n_747);
  nand g794(n_764, n_763, n_15);
  nand g795(add_24_29_n_41, n_762, n_764);
  nor g796(n_291, n_736, b[4]);
  not g797(n_765, n_291);
  nor g798(gt_39_12_n_52, n_738, b[5]);
  not g799(n_766, gt_39_12_n_52);
  nor g800(gt_39_12_n_57, n_748, b[7]);
  not g801(n_767, gt_39_12_n_57);
  not g802(n_768, n_392);
  nor g803(n_769, gt_39_12_n_57, n_749);
  not g804(n_770, n_769);
  nand g805(gt_39_12_n_73, n_768, n_770);
  not g806(n_771, gt_39_12_n_73);
  nand g807(n_285, n_742, b[2]);
  nor g808(gt_39_12_n_46, n_734, b[3]);
  not g809(n_772, gt_39_12_n_46);
  not g810(n_773, n_411);
  nand g811(n_286, n_734, b[3]);
  not g812(n_774, n_286);
  nor g813(n_695, n_742, b[2]);
  not g814(n_775, n_695);
  nor g815(n_290, n_740, b[1]);
  not g816(n_776, n_290);
  not g817(n_777, n_396);
  nand g818(sub_29_29_n_34, n_740, b[1]);
  not g819(n_778, sub_29_29_n_34);
  nor g820(n_779, n_290, n_747);
  not g821(n_780, n_779);
  nand g822(n_781, n_777, sub_29_29_n_34, n_780);
  nand g823(n_782, n_772, n_775, n_781);
  nand g824(n_783, n_773, n_286, n_782);
  nand g825(n_784, n_765, n_766, gt_39_12_n_73, n_783);
  nand g826(n_284, n_748, b[7]);
  not g827(n_785, n_284);
  nor g828(n_786, n_767, n_785);
  not g829(n_787, n_786);
  nor g830(n_788, n_785, n_745);
  not g831(n_789, n_788);
  nor g832(n_790, n_785, b[6]);
  not g833(n_791, n_790);
  nand g834(lt_40_17_n_73, n_789, n_791);
  not g835(n_792, lt_40_17_n_73);
  nand g836(n_793, n_787, n_792);
  nand g837(n_281, n_738, b[5]);
  not g838(n_794, n_281);
  nor g839(n_795, n_281, n_771);
  not g840(n_796, n_795);
  nand g841(sub_29_29_n_55, n_736, b[4]);
  not g842(n_797, sub_29_29_n_55);
  nor g843(n_798, sub_29_29_n_55, gt_39_12_n_52, n_771);
  not g844(n_799, n_798);
  nand g845(n_800, n_796, n_799);
  not g846(n_801, n_800);
  nand g847(n_729, n_784, n_793, n_801);
  nand g848(sub_29_29_n_33, n_746, b[0]);
  not g849(n_802, sub_29_29_n_33);
  nor g850(n_803, n_778, n_802);
  not g851(n_804, n_803);
  nand g852(sub_29_29_n_299, n_776, n_804);
  not g853(n_805, sub_29_29_n_50);
  nor g854(n_806, n_774, n_775);
  not g855(n_807, n_806);
  nand g856(n_808, n_805, n_286);
  nand g857(sub_29_29_n_54, n_772, n_807, n_808);
  not g858(n_809, sub_29_29_n_54);
  not g859(n_810, n_409);
  nand g860(n_811, n_810, n_771);
  not g861(n_812, n_399);
  not g862(n_813, n_398);
  nand g863(sub_29_29_n_58, n_812, n_813);
  nor g864(n_814, sub_29_29_n_58, n_792);
  not g865(n_815, n_814);
  nand g866(lt_40_17_n_36, n_387, n_811, n_815);
  not g867(n_816, lt_40_17_n_36);
  nor g868(is_eq, greater, n_816);
  nor g869(less, greater, lt_40_17_n_36);
  nor g870(n_730, n_797, n_809);
  not g871(n_817, n_730);
  nor g872(n_818, n_794, n_817);
  not g873(n_819, n_818);
  nand g874(gt_30_24_n_31, sub_29_29_n_58, n_819);
  not g875(n_820, add_24_29_n_47);
  nor g876(n_293, op[1], n_744);
  not g877(n_821, n_293);
  nor g878(y[7], n_821, gt_30_24_n_31);
  nor g879(n_298, n_743, op[0]);
  nor g880(n_692, n_750, n_821);
  nand g881(n_690, y[7], n_743);
  nor g882(n_283, n_743, n_744);
  nand g883(n_822, n_763, n_762);
  nand g884(n_823, n_757, n_754);
  nand g885(n_824, n_753, n_760);
  nand g886(n_542, n_281, n_766);
  nand g887(n_825, n_752, n_758);
  nand g888(n_543, n_765, sub_29_29_n_55);
  nand g889(n_544, n_776, sub_29_29_n_34);
  nand g890(n_826, n_751, n_756);
  nand g891(n_545, n_772, n_286);
  nand g892(n_546, n_775, n_285);
  nand g893(n_827, n_757, add_24_29_n_41);
  nand g894(n_828, n_754, n_827);
  nor g895(n_829, add_24_29_n_40, n_820);
  not g896(n_830, n_829);
  nand g897(n_831, sub_29_29_n_50, n_775);
  nor g898(n_832, n_761, n_820);
  not g899(n_833, n_832);
  nand g900(n_834, n_758, n_830);
  nand g901(n_835, add_24_29_n_51, n_833);
  nand g902(n_836, n_765, n_817);
  and g903(y[5], y[7], n_136);
  and g904(y[4], y[7], n_132);
  and g905(y[3], y[7], n_133);
  and g906(y[2], y[7], n_131);
  and g907(y[1], y[7], n_130);
  and g908(y[0], y[7], n_129);
endmodule

