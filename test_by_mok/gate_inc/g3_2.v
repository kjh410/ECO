module test_5(y,a,b);
	input [2:0]a, b;
	output [2:0]y;
	wire [20:0]w;
	wire sub_wire0, w_eco0;

	and and_0(w[0], a[2], b[2]);
	or or_0(w[1], a[2], b[2]);
	or or_1(w[2], w[0], a[2]);
	and and_1(w[3], w[1], b[2]);
	nor nor_0(w[4], w[2], w[3]);
	nand nand_0(w[5], w[2], w[3]);
	and and_2(w[6], w[4], w[5]);
	and and_00(w[7], a[1], b[1]);
	or or_00(w[8], a[1], b[1]);
	or or_11(w[9], w[7], a[1]);
	and and_11(w[10], w[8], b[1]);
	nor nor_00(w[11], w[9], w[10]);
	nand nand_00(w[12], w[9], w[10]);
	and and_22(w[13], w[11], w[12]);
	and and_000(w[14], a[0], b[0]);
	or or_000(w[15], a[0], b[0]);
	or or_111(w[16], w[14], a[0]);
	and and_111(w[17], w[15], b[0]);
	nor nor_000(w[18], w[16], w[17]);
	nand nand_000(w[19], w[16], w[17]);
	and and_222(w[20], w[18], w[19]);
	assign y[2] = w[6];
	assign sub_wire0 = w[13];
	assign y[0] = w[20];
	and _ECO_0(w_eco0, !a[1], !b[1]);
	xor _ECO_out0(y[1], sub_wire0, w_eco0);

endmodule