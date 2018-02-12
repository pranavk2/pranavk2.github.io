`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:23 12/22/2015 
// Design Name: 
// Module Name:    memory 
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
module memory(MW, address, DataIn, DataOut
);
input MW;
input [7:0] address;
input [7:0] DataIn;
output reg[15:0] DataOut;
reg [15:0]mem[0:255];
always begin
if(MW==1) begin
mem[address] = 16'b0 + DataIn[7:0];
//mem[address*16+7:address*16] = 8'b0;
DataOut <= 0;
end
else
DataOut <= mem[address];
end
endmodule
