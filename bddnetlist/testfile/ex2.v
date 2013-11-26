module ex2(y1,a,b);
	input [1:0] a,b;
	output [1:0] y1;
	wire [7:0] w;

	and and_1(w[0],a[1],b[1]);
	nor nor_1(w[1],a[1],b[1]);
	or or_1(w[2],w[0],w[1]);
	xor xor_1(w[3],w[2],w[1]);
	and and_2(w[4],a[0],b[0]);
	nor nor_2(w[5],a[0],b[0]);
	or or_2(w[6],w[4],w[5]);
	xor xor_2(w[7],w[6],w[5]);
	assign y1[1]=w[3];
	assign y1[0]=w[7];
endmodule
