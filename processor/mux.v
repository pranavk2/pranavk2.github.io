`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:28:33 12/08/2015 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input [3:0] add,
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
	 input [7:0] in4,
	 input [7:0] in5,
	 input [7:0] in6,
	 input [7:0] in7,
	 input [7:0] in8,
    output reg [7:0] out
    );
	 always @ (add or in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8)
	 begin
	if (add == 4'b0000)
		out = in0 ;
	else if (add == 4'b0001)
		out = in1;
	else if (add == 4'b0010)
		out = in2;
	else if (add == 4'b0011)
		out = in3;
	else if (add == 4'd4)
		out = in4;
	else if (add == 4'd5)
		out = in5;
	else if (add == 4'd6)
		out = in6;
	else if (add == 4'd7)
		out = in7;
	else
		out = in8;
end
endmodule

