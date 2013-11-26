`timescale 1ns/100ps

module tb_ex_1;

	reg tb_a, tb_b;
	wire tb_y;
	
	ex1 ex_1_testbench(.y(tb_y),.a(tb_a),.b(tb_b));
	
	initial
	begin
	tb_a = 1'b0; tb_b = 1'b0;
	#10; tb_a = 1'b0; tb_b = 1'b1;
	#10; tb_a = 1'b1; tb_b = 1'b0;
	#10; tb_a = 1'b1; tb_b = 1'b1;
	#10; $stop;
	end
endmodule
	
	
