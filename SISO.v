`include "dLatch.v"

module SISO(out, sin, clk, reset);
	input sin, clk, reset;
	output out;
	wire w1,w2,w3;

	dLatch l1 (w1, sin, clk, reset);
	dLatch l2 (w2, w1, clk, reset);
	dLatch l3 (w3, w2, clk, reset);
	dLatch l4 (out, w3, clk, reset);

endmodule