`timescale 1ns/100ps

module tb_project;

	reg tb_a, tb_b;
	wire tb_y;
	
	project pr_testbench(.y(tb_y),.a(tb_a),.b(tb_b));
	
	initial
	begin
	tb_a = 1'b0; tb_b = 1'b0;
	#10; tb_a = 1'b0; tb_b = 1'b1;
	#10; tb_a = 1'b1; tb_b = 1'b0;
	#10; tb_a = 1'b1; tb_b = 1'b1;
	#10; $stop;
	end
endmodule
	
	
