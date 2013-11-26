module project(y,a,b);
	input a,b;
	output y;
	
	wire [2:0] w;
	
	or or_1(w[0],a,b);
	nand nand_1(w[1],a,b);
	and and_1(w[2],w[0],w[1]);
	or or_2(y,w[2],w[1]);
	
endmodule