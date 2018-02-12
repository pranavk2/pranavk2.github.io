`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:18 12/22/2015 
// Design Name: 
// Module Name:    control_rom 
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
module control_rom(addr, word
);
input [7:0] addr;
output reg [15:0] word;

always@(addr) begin
case(addr[7:0])
0: word <= 16'd1;
default: word <= 16'd0;
endcase
end
endmodule
