module test1(x,y,z);
	input x,y;
	output z;
	assign z = !y;
endmodule

module testb;
	reg A,B;
	wire C;
	test1 ted(A,B,C);
	initial 
		begin
			A = 1'b0;	B = 1'b0;
			$display("C = %b",C);
		end
endmodule

