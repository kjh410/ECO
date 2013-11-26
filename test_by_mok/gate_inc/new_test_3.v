module test_6(Y,A,B);
	input [4:0] A;
	input [4:0] B;
	output [2:0] Y;
	wire [22:0] W;

	and and_1(W[1],A[0],B[4]);
	and and_2(W[2],A[3],B[0]);
	and and_3(W[7],B[4],W[1]);
	and and_4(W[8],A[4],W[2]);
	and and_5(W[14],W[3],W[4]);
	and and_6(Y[2],W[0],W[20]);
	nand nand_1(W[21],B[3],A[4]);
	nand nand_2(W[12],W[5],W[6]);
	nand nand_3(W[10],B[3],W[21]);
	nand nand_4(W[17],W[7],W[6]);
	nor nor_1(Y[1],W[14],W[15]);
	or or_1(W[6],A[2],B[2]);
	or or_2(W[5],B[1],A[1]);
	or or_3(W[11],A[1],W[1]);
	or or_4(W[9],B[4],W[2]);
	or or_5(W[3],W[8],W[5]);
	or or_6(W[22],W[9],W[10]);
	nand nand_5(W[13],W[4],W[8]);
	or or_7(W[19],W[11],W[16]);
	or or_8(W[15],W[7],W[17]);
	or or_9(W[0],W[18],W[3]);
	xnor xnor_1(W[16],W[11],W[12]);
	xnor xnor_2(W[18],W[4],W[13]);
	xor xor_1(W[4],W[8],W[10]);
	nor nor_2(W[20],W[9],W[13]);
	xor xor_2(Y[0],W[19],W[12]);

endmodule
