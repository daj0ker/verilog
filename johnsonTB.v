`include "johnson.v"

module johnsonTB;
	wire n0, n1, n2, n3;
	reg clk, reset;

	johnson init(n0 ,n1 ,n2 ,n3 ,clk ,reset);

	initial
		begin
		$dumpfile("johnson.vcd");
		$dumpvars(0,johnsonTB);

		reset = 1'b1;
		clk = 1'b0;
		#4

		reset = 1'b0;

		#400 $finish;

		end
	always 
	#2 clk = ~clk;
	initial
	$monitor($time,") clk = %d output = %d %d %d %d",clk,n0,n1,n2,n3);

endmodule