module ex5_2 (y,a,b,cin,cout);

	input [4:0] a,b;
	input cin;
	output cout;
	output [4:0] y;
	
	wire [24:0] w;
		
	xor xor_0 (w[0],a[4],b[4]);
	and and_0 (w[1],a[4],b[4]);
	or or_1 (w[2],w[0],cin);	//s
	and and_1 (w[3],w[0],cin);
	or or_0 (w[4],w[3],w[1]);		//cout
	
	assign y[4]= w[2];
	
	xor xor_00(w[5],a[3],b[3]);
	and and_00(w[6],a[3],b[3]);
	or or_11(w[7],w[5],w[4]);	//s
	and and_11(w[8],w[5],w[4]);
	or or_00(w[9],w[8],w[6]);	//cout
	
	assign y[3] = w[7];
	
	xor xor_000(w[10],a[2],b[2]);
	and and_000(w[11],a[2],b[2]);
	or or_111(w[12],w[10],w[9]);	//s
	and and_111(w[13],w[10],w[9]);
	or or_000(w[14],w[13],w[11]);	//cout
	
	assign y[2] = w[12];
	
	xor xor_0000(w[15],a[1],b[1]);
	and and_0000(w[16],a[1],b[1]);
	or or_1111(w[17],w[15],w[14]);	//s
	and and_1111(w[18],w[15],w[14]);
	or or_0000(w[19],w[18],w[16]);	//cout
	
	assign y[1] = w[17];
	
	xor xor_00000(w[20],a[0],b[0]);
	and and_00000(w[21],a[0],b[0]);
	or or_11111(w[22],w[20],w[19]);	//s
	and and_11111(w[23],w[20],w[19]);
	or or_00000(w[24],w[23],w[21]);	//cout
	
	assign y[0] = w[22];
	assign cout = w[24];
	
endmodule

/*
	and and_0(w[0],a[4],b[4]);
	or or_0(w[1],a[4],b[4]);
	not not_0(w[2],a[4]);
	not not_1(w[3],b[4]);
	or or_1(w[4],w[2],w[0]);
	and and_1(w[5],w[3],w[1]);
	nand nand_0(w[6],w[4],w[5]);
	nor nor_0(w[7],w[4],w[5]);
	and and_2(w[8],w[6],w[7]);
	
	assign y[4] = w[8];
	
	and and_00(w[9],a[3],b[3]);
	or or_00(w[10],a[3],b[3]);
	not not_00(w[11],a[3]);
	not not_11(w[12],b[3]);
	or or_11(w[13],w[11],w[9]);
	and and_11(w[14],w[12],w[10]);
	nand nand_00(w[15],w[13],w[14]);
	nor nor_00(w[16],w[13],w[14]);
	and and_22(w[17],w[15],w[16]);
	
	assign y[3] = w[17];
	
	and and_000(w[18],a[2],b[2]);
	or or_000(w[19],a[2],b[2]);
	not not_000(w[20],a[2]);
	not not_111(w[21],b[2]);
	or or_111(w[22],w[20],w[18]);
	and and_111(w[23],w[21],w[19]);
	nand nand_000(w[24],w[22],w[23]);
	nor nor_000(w[25],w[22],w[23]);
	and and_222(w[26],w[24],w[25]);
	
	assign y[2] = w[26];
	
	and and_0000(w[27],a[1],b[1]);
	or or_0000(w[28],a[1],b[1]);
	not not_0000(w[29],a[1]);
	not not_1111(w[30],b[1]);
	or or_1111(w[31],w[29],w[27]);
	and and_1111(w[32],w[30],w[28]);
	nand nand_0000(w[33],w[31],w[32]);
	nor nor_0000(w[34],w[31],w[32]);
	and and_2222(w[35],w[33],w[34]);
	
	assign y[1] = w[35];
	
	and and_00000(w[36],a[0],b[0]);
	or or_00000(w[37],a[0],b[0]);
	not not_00000(w[38],a[0]);
	not not_11111(w[39],b[0]);
	or or_11111(w[40],w[38],w[36]);
	and and_11111(w[41],w[39],w[37]);
	nand nand_00000(w[42],w[40],w[41]);
	nor nor_00000(w[43],w[40],w[41]);
	and and_22222(w[44],w[42],w[43]);
	
	assign y[0] = w[44];
	*/
	