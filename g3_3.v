module test_3(y,a,b);
	input [3:0]a, b;
	output [3:0]y;
	wire [7:0]w;
	wire sub_wire0, w_eco0, w_eco1, w_eco2, sub_wire1, w_eco3, w_eco4, w_eco5;

	xor xor_1(w[0], a[0], b[1]);
	or or_1(w[1], w[0], b[0]);
	and and_1(w[2], a[2], b[0]);
	or or_2(w[3], a[1], w[2]);
	and and_2(sub_wire0, w[1], w[3]);
	nand nand_1(w[4], w[3], b[1]);
	xor xor_2(y[1], w[4], b[2]);
	or or_3(w[5], a[3], b[2]);
	and and_3(w[7], w[5], b[3]);
	nor nor_1(w[6], a[3], w[7]);
	or or_4(sub_wire1, a[1], w[6]);
	nand nand_2(y[3], w[7], b[3]);
	and _ECO_0(w_eco0, !a[0], !b[1], b[0], a[1]);
	and _ECO_1(w_eco1, !a[0], !b[1], b[0], a[2]);
	or _ECO_2(w_eco2, w_eco0, w_eco1);
	xor _ECO_out0(y[0], sub_wire0, w_eco2);
	and _ECO_3(w_eco3, !a[1], !b[3]);
	and _ECO_4(w_eco4, !a[1], !b[2], !a[3]);
	or _ECO_5(w_eco5, w_eco3, w_eco4);
	xor _ECO_out1(y[2], sub_wire1, w_eco5);

endmodule