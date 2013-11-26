`timescale 1ns/100ps

module tb_ex4;

	reg [3:0] tb_a, tb_b;
	wire [3:0] tb_y;
	
	ex4 tb_ex4(.y(tb_y),.a(tb_a), .b(tb_b));
	
	initial
	begin
	tb_a = 4'h0;
	tb_b = 4'h0; 		#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a = 4'h1; tb_b=4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h2; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h3; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h4; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h5; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h6; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h7; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h8; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'h9; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'hA; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'hB; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'hC; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'hD; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'hE; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
	
	#10; tb_a= 4'hF; tb_b= 4'h0;			#10; tb_b= 4'h1;  #10; tb_b= 4'h2;  #10; tb_b= 4'h3;	#10; tb_b= 4'h4;	
	#10; tb_b= 4'h5;	#10; tb_b= 4'h6;	#10; tb_b= 4'h7;  #10; tb_b= 4'h8;   #10; tb_b= 4'h9;	#10; tb_b= 4'hA;	
	#10; tb_b= 4'hB;	#10; tb_b= 4'hC;	#10; tb_b= 4'hD;	#10; tb_b= 4'hE;	#10; tb_b= 4'hF;
		
	#10; $stop;

	end
endmodule
	

/*
`timescale 1ns/100ps

module tb_ex4;

	reg [2:0] tb_a, tb_b;
	wire [2:0] tb_y;
	
	ex4 ex4_testbench(.y(tb_y),.a(tb_a),.b(tb_b));

	initial
	begin
	tb_a[2] = 1'b0; tb_a[1] = 1'b0; tb_a[0] = 1'b0;
	tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;

	#10; tb_a[0] = 1'b1; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b0; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	
	#10; tb_a[1] = 1'b1; tb_a[0] = 1'b1; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;

	#10; tb_a[2] = 1'b1; tb_a[1] = 1'b0; tb_a[0] = 1'b0; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	
	#10; tb_a[2] = 1'b1; tb_a[1] = 1'b0; tb_a[0] = 1'b1; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	
	#10; tb_a[2] = 1'b1; tb_a[1] = 1'b1; tb_a[0] = 1'b0; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	
	#10; tb_a[2] = 1'b1; tb_a[1] = 1'b1; tb_a[0] = 1'b1; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b0; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b0; tb_b[0] = 1'b1;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b0;
	#10; tb_b[2] = 1'b1; tb_b[1] = 1'b1; tb_b[0] = 1'b1;
	
	#10; $stop;	
	end
endmodule
		
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
	
