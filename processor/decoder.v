`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:27:48 12/08/2015 
// Design Name: 
// Module Name:    decoder 
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
module decoder(add, out);
input [3:0] add ;
output wire [8:0] out;
assign out[0] = (add==4'd0);
assign out[1] = (add==4'd1);
assign out[2] = (add==4'd2);
assign out[3] = (add==4'd3);
assign out[4] = (add==4'd4);
assign out[5] = (add==4'd5);
assign out[6] = (add==4'd6);
assign out[7] = (add==4'd7);
assign out[8] = (add==4'd8);
endmodule