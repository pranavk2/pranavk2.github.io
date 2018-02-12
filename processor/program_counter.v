module program_counter(add_out, AD, PI, PL, clk);
  input PI, PL, clk;
  input[5:0] AD;
  output[7:0] add_out;
  reg [7:0] offset;
  reg [7:0] add_out = 0;
  always @(AD)
    begin
  	if (AD[5] == 1)
        begin
       	offset <= 8'b11000000 + AD[5:0];
    	end
  	else 
   		 begin
     	 offset <= 8'b00000000 + AD[5:0];
    end
    end
  
  always @(posedge clk)
    begin
      if ((PI == 1'b1) & (PL == 1'b0))
        begin 
          add_out <= add_out + 1;
        end
      else if ((PL == 1'b1) & (PI == 1'b0))
        begin
           add_out <= (add_out + offset);
        end
    end
endmodule
