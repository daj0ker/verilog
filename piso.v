`include "nand4.v"
`include "dff1.v"
module piso(d,d1,d2,d3,clk,reset,q);
	input d,d1,d2,d3,clk,reset;
	output q;
	wire q1,q2,q3,s1,s2,s3;
	dff1 t1(d,clk,reset,q1);
	nand4 t2(d1,~d,d,q1,s1);
	dff1 t3(s1,clk,reset,q2);
	nand4 t4(d2,~d,1'b1,q2,s2);
	dff1 t5(s2,clk,reset,q3);
	nand4 t6(d3,~d,1'b1,q3,s3);
	dff1 t7(s3,clk,reset,q);
endmodule