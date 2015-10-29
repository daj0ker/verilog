`include "dLatch.v"

module test_bench;
	wire out;
	reg data, clock, reset;
	// Instantiating module dLatch
	dLatch inst(out, data, clock, reset);
	initial
		begin
			reset = 1'b1;
			clock = 1'b0;
			//Set delay 
			#4
			data = 1'b1;
			reset = 1'b0;
			//Set delay
			#4
			data = 1'b0;
			#4
			data = 1'b1;
			#4
			data = 1'b0;
			// What does "finish" do ?
			#8 $finish;
		end
		always 
		#2 clock = ~clock;
		initial
		// $display($time," Data = %d, Clock = %d output = %d", data, clock, Q);
		$monitor($time," d = %b q = %b",data,out);
endmodule