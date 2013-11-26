module ex2_2(y2,a,b);
	input [1:0] a,b;
	output [1:0] y2;
	wire [8:0] w;

	and and_1(w[0],a[1],b[1]);
	nor nor_1(w[1],a[1],b[1]);
	or or_1(w[2],w[0],w[1]);
	xor xor_1(w[3],w[2],w[1]);
	and and_3(w[4],a[0],b[0]);
	nor nor_2(w[5],a[0],b[0]);
	or or_2(w[6],w[5],w[4]);
	and and_4(w[7],w[5],w[4]);
	xor xor_2(w[8],w[7],w[6]);
	assign y2[1]=w[3];
	assign y2[0]=w[8];
endmodule
