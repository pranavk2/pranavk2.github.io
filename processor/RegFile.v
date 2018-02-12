`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:06 12/08/2015 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile(
    input [2:0] SA,
    input [2:0] SB,
    input [2:0] SD,
	 input TD, 
	 input TA,
	 input TB,
	 input RW,
    input [7:0] DDATA,
    input CLK,
    output [7:0] ADATA,
    output [7:0] BDATA
    );
	
	//wire en;
	wire [8:0] DEC_OUT;
	wire [7:0] R0_OUT;
	wire [7:0] R1_OUT;
	wire [7:0] R2_OUT;
	wire [7:0] R3_OUT;
	wire [7:0] R4_OUT;
	wire [7:0] R5_OUT;
	wire [7:0] R6_OUT;
	wire [7:0] R7_OUT;
	wire [7:0] R8_OUT;
	wire [3:0] AA, BA, DA;
	assign AA[3] = TA;
	assign BA[3] = TB;
	assign DA[3] = TD;
	assign AA[2:0] = SA;
	assign BA[2:0] = SB;
	assign DA[2:0] = SD;
	//reg L0, L1, L2, L3 ;	
	//assign en = RW;
	//decoder DEC(1, DA, DEC_OUT);
	decoder DEC(DA,DEC_OUT);
	//L0 = DEC_OUT[0];
	//L1 = DEC_OUT[1];
	//L2 = DEC_OUT[2];
	//L3 = DEC_OUT[3];
	register R0(DDATA, DEC_OUT[0]&RW, R0_OUT, CLK);
	register R1(DDATA, DEC_OUT[1]&RW, R1_OUT, CLK);
	register R2(DDATA, DEC_OUT[2]&RW, R2_OUT, CLK);
	register R3(DDATA, DEC_OUT[3]&RW, R3_OUT, CLK);
	register R4(DDATA, DEC_OUT[4]&RW, R4_OUT, CLK);
	register R5(DDATA, DEC_OUT[5]&RW, R5_OUT, CLK);
	register R6(DDATA, DEC_OUT[6]&RW, R6_OUT, CLK);
	register R7(DDATA, DEC_OUT[7]&RW, R7_OUT, CLK);
	
	//Temporary Register for storage, invisible to the user
	register R8(DDATA, DEC_OUT[8]&RW, R8_OUT, CLK);
	mux MUX_A(AA, R0_OUT, R1_OUT, R2_OUT, R3_OUT, R4_OUT, R5_OUT, R6_OUT, R7_OUT, R8_OUT, ADATA);
	mux MUX_B(BA, R0_OUT, R1_OUT, R2_OUT, R3_OUT, R4_OUT, R5_OUT, R6_OUT, R7_OUT, R8_OUT, BDATA);
	
	
endmodule

