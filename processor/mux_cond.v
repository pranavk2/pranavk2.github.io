`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:54 12/22/2015 
// Design Name: 
// Module Name:    mux_cond 
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
module mux_cond(sel, in2, in3, in4, in5, in6, in7, out
    );
	 input in2, in3, in4, in5, in6, in7;
	 input [7:0] sel;
	 output reg out;
	 
	 always @(sel or in2 or in3 or in4 or in5 or in6 or in7)
	 begin
		case(sel)
			8'd0: out <= 0;
			8'd1: out <= 1;
			8'd2: out <= in2;
			8'd3: out <= in3;
			8'd4: out <= in4;
			8'd5: out <= in5;
			8'd6: out <= in6;
			8'd7: out <= in7;
			endcase
	end
endmodule
