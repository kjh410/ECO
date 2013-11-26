module ex4 (y,a,b);

	input [3:0] a,b;
	output [3:0] y;
	
	wire [31:0] w;
	
	and and_0(w[0],a[3],b[3]);
	or or_0(w[1],a[3],b[3]);
	or or_1(w[2],a[3],w[0]);
	and and_1(w[3],b[3],w[1]);
	or or_2(w[4],w[0],w[1]);
	nand nand_0(w[5],w[2],w[4]);
	nor nor_0(w[6],w[3],w[4]);
	xor xor_0(w[7],w[5],w[6]);
	
	assign y[3] = w[7];
	
	and and_00(w[8],a[2],b[2]);
	or or_00(w[9],a[2],b[2]);
	or or_11(w[10],a[2],w[8]);
	and and_11(w[11],b[2],w[9]);
	or or_22(w[12],w[8],w[9]);
	nand nand_00(w[13],w[10],w[12]);
	nor nor_00(w[14],w[11],w[12]);
	xor xor_00(w[15],w[13],w[14]);
	
	assign y[2] = w[15];
	
	and and_000(w[16],a[1],b[1]);
	or or_000(w[17],a[1],b[1]);
	or or_111(w[18],a[1],w[16]);
	and and_111(w[19],b[1],w[17]);
	or or_222(w[20],w[16],w[17]);
	nand nand_000(w[21],w[18],w[20]);
	nor nor_000(w[22],w[19],w[20]);
	xor xor_000(w[23],w[21],w[22]);
	
	assign y[1] = w[23];
	
	and and_0000(w[24],a[0],b[0]);
	or or_0000(w[25],a[0],b[0]);
	or or_1111(w[26],a[0],w[24]);
	and and_1111(w[27],b[0],w[25]);
	or or_2222(w[28],w[24],w[25]);
	nand nand_0000(w[29],w[26],w[28]);
	nor nor_0000(w[30],w[27],w[28]);
	xor xor_0000(w[31],w[29],w[30]);
	
	assign y[0] = w[31];
	
endmodule
	