module new_test_3(y,a,b);

input [3:0] a,b;
output [3:0] y;
wire [9:0] w;

xor xor_1(w[0],a[0],b[1]);
and and_4(w[9],a[0],b[0]);

or or_1(w[1],w[0],w[9]);

and and_1(w[2],a[2],b[0]);
or or_2(w[3],a[1],w[2]);
and and_2(y[0],w[1],w[3]);
nand nand_1(w[4],w[3],b[1]);
xor xor_2(y[1],w[4],b[2]);
or or_3(w[5],a[3],b[2]);
and and_3(w[7],w[5],b[3]);

not not_1(w[8],a[3]);

nor nor_1(w[6],w[8],w[7]);
or or_4(y[2],a[1],w[6]);
nand nand_2(y[3],w[7],b[3]);

endmodule
  