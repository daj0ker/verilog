module nandx (x,y,z);
	output x;
	input y,z;
	assign x = y ~& z ;
endmodule

module andx (x,y,z);
	output x;
	input y,z;
	assign x = y & z ;
endmodule

module orx (x,y,z);
	output x;
	input y,z;
	assign x = y | z ;
endmodule


module test;
	reg A,B;
	wire C;
      reg L,M;
      wire N;
      reg P,Q;
      wire R;
	nandx S1(C,A,B);
      andx S2(N,L,M);
      orx S3(R,P,Q);
	initial
		begin
			A = 1'b0; B = 1'b0; 
      		#50 $display($time,":Delay A = %b, B = %b, NAND output C = %b\n", A, B, C);
      		A = 1'b0; B = 1'b1 ;
      		#50 $monitor($time, ":Delay A = %b, B = %b, NAND output C = %b\n", A, B, C);
      		A = 1'b1; B = 1'b0;
      		#50 $monitor($time, ":Delay A = %b, B = %b, NAND output C = %b\n", A, B, C);
      		A = 1'b1; B = 1'b1;
      		#50 $monitor($time, ":Delay A = %b, B = %b, NAND output C = %b\n", A, B, C);
                  L = 1'b0; M = 1'b0; 
                  #50 $monitor($time, ":Delay L = %b, M = %b, AND output N = %b\n", L, M, N);
                  L = 1'b0; M = 1'b1 ;
                  #50 $monitor($time, ":Delay L = %b, M = %b, AND output N = %b\n", L, M, N);
                  L = 1'b1; M = 1'b0;
                  #50 $monitor($time, ":Delay L = %b, M = %b, AND output N = %b\n", L, M, N);
                  L = 1'b1; M = 1'b1; 
                  #50 $monitor($time, ":Delay L = %b, M = %b, AND output N = %b\n", L, M, N);
                  P = 1'b0; Q = 1'b0; 
                  #50 $monitor($time, ":Delay P = %b, Q = %b, OR output R = %b\n", P, Q, R);
                  P = 1'b0; Q = 1'b1 ;
                  #50 $monitor($time, ":Delay P = %b, Q = %b, OR output R = %b \n", P, Q, R);
                  P = 1'b1; Q = 1'b0;
                  #50 $monitor($time, ":Delay P = %b, Q = %b, OR output R = %b\n", P, Q, R);
                  P = 1'b1; Q = 1'b1;
                  #50 $monitor($time, ":Delay P = %b, Q = %b, OR output R = %b\n", P, Q, R);
      		
    	end
endmodule

