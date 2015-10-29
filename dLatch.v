module dLatch(out,data,clock,reset);

	output out;
	input data, clock ,reset;

	wire w0, w1, w2, out_bar;

	not (w0, data);
	nand (w1, data, clock);
	nand (w2, w0, clock);
	nor (out, w1, out_bar, reset);
	nor (out_bar, w2, out);

endmodule
/*
module test_bench;
	wire Q;
	reg data, clock, reset;
	// Instantiating module dLatch
	dLatch inst(Q, d, clk, reset);
	initial
		begin
			reset = 1'b1;
			clock = 1'b0;
			//Set delay 
			#4
			data = 1'b0;
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
		$monitor($time," d = %b q = %b",data,Q);
endmodule*/