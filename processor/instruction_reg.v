`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:56 12/22/2015 
// Design Name: 
// Module Name:    instruction_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instruction_reg(ins, load, clk, out  
    );
	 input [15:0] ins;
	 input load, clk;
	 output reg [15:0] out;
	 
	 always @(posedge clk) begin
	 if (load)
		out = ins;
	end
endmodule
	
		



