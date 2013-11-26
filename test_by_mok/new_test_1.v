module top (n1, n2, n3, n6, n7, n22, n23);

input n1, n2, n3, n6, n7;
output n22, n23;
wire n10, n11, n16, n19;

nand nand2_1(n10, n1, n3);
nand nand2_2(n11, n3, n6);
nand nand2_3(n16, n2, n11);
nand nand2_4(n19, n11, n7);
nand nand2_5(n22, n10, n16);
nand nand2_6(n23, n16, n19);

endmodule
