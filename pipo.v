`include "dff1.v"
module pipo(d,d1,d2,d3,clk,reset,q,q1,q2,q3);
	output q,q1,q2,q3;
	
	input d,d1,d2,d3,clk,reset;
	dff1 t1(d,clk,reset,q);
	dff1 t2(d1,clk,reset,q1);
	dff1 t3(d2,clk,reset,q2);
	dff1 t4(d3,clk,reset,q3);
endmodule	