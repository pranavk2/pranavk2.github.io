`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:57:05 12/22/2015 
// Design Name: 
// Module Name:    processor 
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
module processor(clk, OP
    );
	 input clk;
	 output [7:0] OP;
	 wire [7:0] data_out, add_out;
	 wire [15:0] data_in;
	 wire MW;
	 
	 CPU cpu(data_in, clk, add_out, data_out, MW);
	 memory Main_mem(MW, add_out, data_out, data_in);

endmodule
