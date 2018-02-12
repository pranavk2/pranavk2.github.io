// Code your design here
module datapath(DA,AA, BA, TD, TA, TB, RW, MB, MD, FS, const_in, data_in, clk, V, C, N, Z, A_data, B_data); 
	input TD, TA, TB, MB, MD, RW, clk;
 	 input [2:0] DA, AA, BA;
	input [3:0] FS;
  	input [7:0] const_in, data_in;
	output V, C, N, Z;
  	output [7:0] A_data, B_data;
	
  
  wire [7:0] D_in, A_data, B_data, muxB_out, FU_out, data_write;

  RegFile reg_file(AA, BA, DA, TA, TB, TD, RW, data_write, clk, A_data, B_data);
  FunctionUnit FU(A_data, muxB_out, FS, V, C, N, Z, FU_out);
  mux_8 MuxB(MB, B_data, const_in, muxB_out);
  mux_8 MuxD(MD, FU_out, data_in, data_write);

endmodule

	