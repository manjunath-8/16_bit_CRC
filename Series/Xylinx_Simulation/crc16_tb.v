`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:59:24 12/20/2023
// Design Name:   try
// Module Name:   E:/MINI_PROJECT/CRC_BLOCK/try_tb.v
// Project Name:  CRC_BLOCK
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: try
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module try_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [33:0] data_in;

	// Outputs
	wire [49:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	try uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in),		
		.data_out(data_out)
	);

	initial begin
        // Initialize signals
        clk = 1;
		  data_in = 34'b1010101010101010101010101010101010;
        // Apply reset
        reset = 1; #10;
		  reset = 0;
    end
    // Generate clock
	 always #5 clk = ~clk;
endmodule

