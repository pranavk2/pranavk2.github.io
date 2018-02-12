`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:45 12/08/2015 
// Design Name: 
// Module Name:    FunctionUnit 
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
module FunctionUnit(
    input [7:0] ABUS,
    input [7:0] BBUS,
    input [3:0] FS,
    output reg V,
    output  C,
    output reg N,
    output reg Z,
    output [7:0] FS_OUT
    );
	 
	reg [8:0] result = 0;
	assign FS_OUT[7:0] = result[7:0];
	assign C = result[8];
	always @ (ABUS or BBUS or FS) begin
		if (FS == 2'b00)
			result = ABUS ;
			else if (FS == 1)
			result = ABUS + 1;
			else if (FS == 2)
			result = ABUS + BBUS ;
			else if (FS == 3)
			result = ABUS + BBUS + 1 ;
			else if (FS == 4)
			result = ABUS + ~(BBUS) ;
			else if (FS == 5)
			result = ABUS + ~(BBUS) + 1 ;
			else if (FS == 6)
			result = ABUS - 1 ;
			else if (FS == 7)
			result = ABUS ;
			else if (FS == 8)
			result = ABUS & BBUS ;
			else if (FS == 9)
			result = ABUS | BBUS ;
			else if (FS == 10)
			result = ABUS ^ BBUS ;
			else if (FS == 11)
			result = ~(ABUS);
			else if (FS == 12)
			result = BBUS ;
			else if (FS == 13)
			result = BBUS >> 1 ;
			else
			result = BBUS << 1;
	end

	always @(result) begin
		if (FS_OUT==0) 
			Z = 1;// zero flag 
		else 
			Z = 0;

	end
endmodule
