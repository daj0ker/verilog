`include "elevator.v"
module elevator_t;
	reg in,clk,reset;
	wire r,g;

	elevator inst(in,r,g,clk,reset);
	initial


	begin
	$dumpfile("elevator.vcd");
	$dumpvars(0,elevator_t);
			
			reset=1'b1;
			clk=1'b0;
			#4
			in=1'b1;
			reset=1'b0;
			#4
			in=1'b0;

			
			#4
			in=1'b1;
		
			#4
			in=1'b0;
			#4
			in=1'b1;
		
			#4
			in=1'b0;
			#4
			in=1'b1;
		
			#4
			in=1'b0;
			#8 $finish;

			
	end
	always
	#2 clk=~clk;
	initial
	$monitor($time,"input=%d red=%d green=%d",in,r,g);
endmodule

