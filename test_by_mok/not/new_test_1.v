module test_4(y,a,b);


input [3:0] a;
input [3:0] b;
output [3:0] y;

wire [10:0] w;

and	and_1(w[0],w[1],a[1]);
and 	and_2 (w[2],a[2],b[2]);
xor	xor_1 (y[2],a[2],w[3]);
nand	nand_1 (y[0],w[5],w[0]);
nand	nand_2 (w[4],w[6],w[8]);
nor	nor_1 (w[7],b[3],w[6]);
nor	nor_2 (y[3],w[7],w[3]);
and	and_3 (w[8],a[3],b[0]);
and	and_4 (w[3],b[1],w[7]);
or	or_1 (w[1],b[3],a[0]);
or	or_2 (w[10],b[0],a[1]);
not	not_1 (w[5],w[10]);
xnor	xnor_1 (w[9],w[5],w[2]);
xnor	xnor_2 (w[6],a[3],b[1]);
xor	xor_2 (y[1],w[9],w[4]);

endmodule
