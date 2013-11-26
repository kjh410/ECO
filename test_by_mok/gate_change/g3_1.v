module test_4(y,a,b);
	input [3:0]a, b;
	output [3:0]y;
	wire [9:0]w;
	wire sub_wire0, w_eco0, sub_wire1, w_eco1, w_eco2, w_eco3, w_eco4;

	and and_1(w[0], w[1], a[1]);
	and and_2(w[2], a[2], b[2]);
	xor xor_1(sub_wire0, a[2], w[3]);
	nand nand_1(y[0], w[5], w[0]);
	nand nand_2(w[4], w[6], w[8]);
	nor nor_1(w[7], b[3], w[6]);
	nor nor_2(sub_wire1, w[7], w[3]);
	and and_3(w[8], a[3], b[0]);
	and and_4(w[3], b[1], w[7]);
	or or_1(w[1], b[3], a[0]);
	or or_2(w[5], b[0], a[1]);
	xnor xnor_1(w[9], w[5], w[2]);
	xnor xnor_2(w[6], a[3], b[1]);
	xor xor_2(y[1], w[9], w[4]);
	assign w_eco0 = 1'b1;
	xor _ECO_out0(y[2], sub_wire0, w_eco0);
	assign w_eco1 = b[3];
	and _ECO_2(w_eco2, a[3], b[1]);
	and _ECO_3(w_eco3, !a[3], !b[1]);
	or _ECO_4(w_eco4, w_eco1, w_eco2, w_eco3);
	xor _ECO_out1(y[3], sub_wire1, w_eco4);

endmodule