`timescale 1ns/100ps

module tb_ex2;

	reg [1:0] tb_a, tb_b;
	wire [1:0] tb_y;
	
	ex2 ex2_testbench(.y(tb_y),.a(tb_a),.b(tb_b));

	initial
	begin
	tb_a[0] = 1'b0; tb_b[0] = 1'b0; tb_a[1] = 1'b0; tb_b[1] = 1'b0;
	#10; tb_a[1] = 1'b0; tb_a[0] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_a[1] = 1'b0; tb_a[0] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_a[1] = 1'b0; tb_a[0] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_a[1] = 1'b0; tb_a[0] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_a[1] = 1'b0; tb_a[0] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_a[1] = 1'b0; tb_a[0] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_a[1] = 1'b0; tb_a[0] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; $stop;	
	end
endmodule
	
/*	
	initial
	begin
	tb_a = 2'b00; tb_b = 2'b00;
	#10; tb_a = 2'b00; tb_b = 2'b01;
	#10; tb_a = 2'b00; tb_b = 2'b10;
	#10; tb_a = 2'b00; tb_b = 2'b11;
	#10; tb_a = 2'b01; tb_b = 2'b00;
	#10; tb_a = 2'b01; tb_b = 2'b01;
	#10; tb_a = 2'b01; tb_b = 2'b10;
	#10; tb_a = 2'b01; tb_b = 2'b11;
	#10; tb_a = 2'b10; tb_b = 2'b00;
	#10; tb_a = 2'b10; tb_b = 2'b01;
	#10; tb_a = 2'b10; tb_b = 2'b10;
	#10; tb_a = 2'b10; tb_b = 2'b11;
	#10; tb_a = 2'b11; tb_b = 2'b00;
	#10; tb_a = 2'b11; tb_b = 2'b01;
	#10; tb_a = 2'b11; tb_b = 2'b10;
	#10; tb_a = 2'b11; tb_b = 2'b11;
	#10; $stop;
	end
endmodule
*/	
	
