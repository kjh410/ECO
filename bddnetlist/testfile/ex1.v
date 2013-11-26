module ex1(y, a, b);
  input a, b;
  output y;
  wire a, b;
  wire y;
  wire w3, w2, w1, w0;
  or or_1 (w0, a, b);
  nand nand_1 (w1, a, b);
  and and_1 (w2, w0, w1);
  nor nor_1 (w3, w0, w1);
  or or_2 (y, w3, w2);
endmodule

