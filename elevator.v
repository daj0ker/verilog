`include "dff1.v"
module elevator(in,r,g,clk,reset);
	input in,clk,reset;
	output r,g;
	wire q;
	dff1 t1(in,clk,reset,q);
	assign r=~q;
	assign g=q;
	endmodule