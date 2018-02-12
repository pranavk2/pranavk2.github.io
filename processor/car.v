module car(cond, BA, clk, NA );
	input cond, clk;
	input [7:0] BA;
	output [7:0] NA;
	reg [7:0] NA = 8'd0;
	
	always @(posedge clk)
	begin
		if(cond == 1'd0)
		begin
			NA = NA + 8'd1;
		end
		else
		begin
			NA = BA;
		end
	end
endmodule	
	

