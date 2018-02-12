`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:04 12/22/2015 
// Design Name: 
// Module Name:    main 
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
module CPU(data_in, clk, add_out, data_out, MW
    );
	 input clk;
	 input [15:0] data_in;
	 output [7:0] add_out, data_out;
	 output MW;
	 wire TD, TA, TB, MB, MD, MM, RW, PI, PL, IL, cond, MO, V, C, N, Z;
	 wire [2:0] DR, SA, SB, MC;
	 wire [3:0] FS;
	 wire [7:0] const_in, PC_out, B_data;
	 wire [15:0] inst;
	 wire [5:0] AD;
	 wire [7:0] opt_add, BA, NA, CA;
	 wire [27:0] c_word;
	 assign AD[5:3] = DR;
	 assign AD[2:0] = SB;
	 assign opt_add = 8'b0 + inst[15:9];
	 
	 assign DR = inst[8:6]; // Register Address assignment
	 assign SB = inst[2:0];
	 assign SA = inst[5:3];
	  
	 
	 mux_8 muxM(MM, B_data, PC_out, add_out);  // memory mux
	 mux_8 muxO(MO, NA, opt_add, BA);			// operation mux
	 mux_cond MuxC(MC, V, C, N, Z, ~C, ~Z, cond);	// condition mux
	 instruction_reg IR(data_in, IL, clk, inst);		// Instruction Register
	 program_counter PC(PC_out, AD, PI, PL, clk);	// Program Counter
	 car CAR(cond, BA, clk, CA);	// Control Add. Register
	 control_rom CROM(CA, c_word);	// Control ROM
	 datapath DP(DR,SA, SB, TD, TA, TB, RW, MB, MD, FS, const_in, data_in[7:0], clk,
	 V, C, N, Z, data_out, B_data);
	 
	 
endmodule
