`include "SISO.v"

module test_bench;
	wire out;
	reg dat, clk, reset;
	// Instantiating module dLatch
	dLatch inst(out, dat, clk, reset);
	initial
		begin
			reset = 1'b1;
			clk = 1'b0;
			//Set delay 
			#4
			dat = 1'b1;
			reset = 1'b0;
			//Set delay
			#4
			dat = 1'b0;
			#4
			dat = 1'b1;
			#4
			dat = 1'b0;
			#4
			dat = 1'b1;
			#4
			dat = 1'b0;
			#4
			dat = 1'b1;
			#4
			dat = 1'b0;
			// What does "finish" do ?
			#20 $finish;
		end
		initial
		begin
			$dumpfile("siso.vcd");
			$dumpvars;
		end
		always 
		#2 clk = ~clk;
		initial
		// $display($time," Data = %d, Clock = %d output = %d", dat, clk, Q);
		$monitor($time," d = %b q = %b",dat,out);
endmodule
