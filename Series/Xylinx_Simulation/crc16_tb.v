`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:24:35 12/16/2023
// Design Name:   crc16
// Module Name:   E:/MINI_PROJECT/Series_CRC/crc16_tb.v
// Project Name:  Series_CRC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: crc16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module crc16_tb;

	// Inputs
	reg clk;
	reg reset;
	reg data_in;
   integer i;
	reg [33:0]data;
	reg [15:0]crc;
	
	reg [49:0]in_put;
	// Outputs
	wire [15:0] crc_out;

	// Instantiate the Unit Under Test (UUT)
	crc16 uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.crc_out(crc_out)
	);

initial begin
        // Initialize signals
        clk = 1;
		  data = 34'b1010101010101010101010101010101010;
		  crc = 16'b0000000000000000;
		  in_put ={data,crc};

        // Apply reset
        reset = 1; #10;
		  reset = 0;

        for (i = 49; i >=0; i = i - 1)
    		  begin
             data_in = in_put[i]; #10;
			  end
 end
    // Generate clock
  always #5 clk = ~clk;
endmodule