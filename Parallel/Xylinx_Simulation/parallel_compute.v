`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:57 01/05/2024 
// Design Name: 
// Module Name:    parallel_compute 
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
module parallel_compute(clk, reset, in, crc, out);
input clk,reset;
input [7:0]in;
input [15:0]crc;
output reg [15:0]out;


always @(posedge clk)
   begin
	    if( reset == 0)
		   begin
   		 out[0] <= in[0]^in[1]^in[2]^in[5]^in[6]^in[7]^crc[8]^crc[9]^crc[10]^crc[13]^crc[14]^crc[15];
	       out[1] <= in[1]^in[2]^in[3]^in[6]^in[7]^crc[9]^crc[10]^crc[11]^crc[14]^crc[15];
          out[2] <= in[0]^in[1]^in[3]^in[4]^in[5]^in[6]^crc[8]^crc[9]^crc[11]^crc[12]^crc[13]^crc[14];
          out[3] <= in[0]^in[4]^crc[8]^crc[12];
			 out[4] <= in[1]^in[5]^crc[9]^crc[13];
			 out[5] <= in[0]^in[1]^in[5]^in[7]^crc[8]^crc[9]^crc[13]^crc[15];
			 out[6] <= in[1]^in[2]^in[6]^crc[9]^crc[10]^crc[14];
			 out[7] <= in[0]^in[1]^in[3]^in[5]^in[6]^crc[8]^crc[9]^crc[11]^crc[13]^crc[14];
			 out[8] <= in[1]^in[2]^in[4]^in[6]^in[7]^crc[9]^crc[12]^crc[14]^crc[15]^crc[10]^crc[0];
			 out[9] <= in[0]^in[1]^in[3]^in[6]^crc[8]^crc[9]^crc[11]^crc[14]^crc[1];
			 out[10] <= in[1]^in[2]^in[4]^in[7]^crc[9]^crc[10]^crc[12]^crc[15]^crc[2];
			 out[11] <= in[0]^in[1]^in[3]^in[6]^in[7]^crc[8]^crc[9]^crc[11]^crc[14]^crc[15]^crc[3];
			 out[12] <= in[0]^in[4]^in[5]^in[6]^crc[8]^crc[12]^crc[13]^crc[14]^crc[4];
			 out[13] <= in[0]^in[2]^crc[8]^crc[10]^crc[5];
			 out[14] <= in[1]^in[3]^crc[9]^crc[11]^crc[6];
			 out[15] <= in[0]^in[1]^in[4]^in[5]^in[6]^in[7]^crc[8]^crc[9]^crc[12]^crc[13]^crc[14]^crc[15]^crc[7];	 
		  end
	end 

endmodule

