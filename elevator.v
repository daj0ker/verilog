`include "dff1.v"
module elevator(n,r,g,clk,reset);
	input n,clk,reset;
	output r,g;
	wire q;
	dff1 t1(n,clk,reset,q);
	assign r=~q;
	assign g=q;
	endmodule