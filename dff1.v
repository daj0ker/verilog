module dff1(d,reset,clk,q);
	input d,reset,clk;
	output q;
	reg q;
	
	
		always @ ( posedge clk ) 
		begin
		if(reset) begin
		q<=1'b0;
		end
		else begin
			q<=d;
			end
	end
	

endmodule