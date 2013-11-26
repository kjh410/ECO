module new_test_2(y,a,b);

input [2:0] a,b;
output [2:0] y;

wire [7:0] w;

or or_1(w[0],a[0],b[2]);
xor xor_2(w[6],w[0],w[2]);
and and_1(w[1],w[0],b[0]);

and and_2(w[2],a[2],b[2]);
or or_2(w[4],a[1],b[0]);
or or_3(w[3],w[2],b[1]);

and and_3(y[1],w[6],w[3]);
not not_1(w[7],b[2]);
and and_4(w[5],w[4],w[7]);

xor xor_1(y[0],w[1],w[2]);

or or_4(y[2],w[3],w[5]);

endmodule
