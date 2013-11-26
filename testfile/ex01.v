module ex01(yxor, a, b);
  input a, b;
  output yxor;
  wire  a, b;
  wire yxor;
  wire w0, w1, w2, w3;
  not g0 (w0, a);
  not g1 (w1, b);
  and g2 (w2, w0, b);
  and g3 (w3, w1, a);
  or g4 (yxor, w2, w3);
endmodule

