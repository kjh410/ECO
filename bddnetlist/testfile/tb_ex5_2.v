`timescale 1ns/100ps

module tb_ex5_2;

	reg [4:0] tb_a, tb_b;
	reg tb_cin;
	wire tb_cout;
	wire [4:0] tb_y;
	
	ex5_2 tb_ex5(.y(tb_y),.a(tb_a), .b(tb_b), .cin(tb_cin), .cout(tb_cout));
	
	initial
	begin
	tb_a = 5'h0;	tb_cin = 1'b0; 
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	#10; tb_a = 5'h1;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;	
	
	tb_a = 5'h2;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h3;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h4;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h5;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h6;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h7;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h8;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h9;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hA;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hB;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hC;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hD;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hE;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hF;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h10;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h11;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h12;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h13;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h14;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h15;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h16;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h17;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h18;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h19;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1A;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1B;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1C;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1D;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1E;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1F;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	
	//cin == 1
	tb_a = 5'h0;	tb_cin = 1'b1; 
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	#10; tb_a = 5'h1;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;	
	
	tb_a = 5'h2;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h3;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h4;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h5;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h6;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h7;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h8;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h9;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hA;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hB;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hC;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hD;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hE;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'hF;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h10;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h11;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h12;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h13;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h14;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h15;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h16;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h17;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h18;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h19;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1A;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1B;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1C;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1D;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1E;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
	tb_a = 5'h1F;
	tb_b = 5'h0; 		#10; tb_b= 5'h1;  #10; tb_b= 5'h2;  #10; tb_b= 5'h3;	#10; tb_b= 5'h4;	#10; tb_b= 5'h5;
	#10; tb_b= 5'h6;	#10; tb_b= 5'h7;  #10; tb_b= 5'h8;  #10; tb_b= 5'h9;	#10; tb_b= 5'hA;	#10; tb_b= 5'hB;
	#10; tb_b= 5'hC;	#10; tb_b= 5'hD;	#10; tb_b= 5'hE;	#10; tb_b= 5'hF;  #10; tb_b= 5'h10; #10; tb_b= 5'h11;
	#10; tb_b= 5'h12; #10; tb_b= 5'h13; #10; tb_b= 5'h14; #10; tb_b= 5'h15; #10; tb_b= 5'h16; #10; tb_b= 5'h17;
	#10; tb_b= 5'h18; #10; tb_b= 5'h19; #10; tb_b= 5'h1A; #10; tb_b= 5'h1B; #10; tb_b= 5'h1C; #10; tb_b= 5'h1D;
	#10; tb_b= 5'h1E; #10; tb_b= 5'h1F;
	
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
	
