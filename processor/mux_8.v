`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:28 12/08/2015 
// Design Name: 
// Module Name:    MUX_d 
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
module mux_8(
   input sel,
	input [7:0] in0,
	input [7:0] in1,
  output reg  [7:0] out);


always @ (sel or in0 or in1) begin
  if (sel==0)
   out = in0 ;
  else 
   out = in1 ;
end
endmodule
