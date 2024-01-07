`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:44 01/05/2024
// Design Name:   Series
// Module Name:   E:/MINI_PROJECT/Series/Project/Series/Series_tb.v
// Project Name:  Series
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Series
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Series_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [33:0] data_in;

	// Outputs
	wire [49:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Series uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.data_out(data_out)
	);

	initial begin
        // Initialize signals
        clk = 1;
		  data_in = 34'b0101010101010101010101010101010101;
        // Apply reset
        reset = 1; #10;
		  reset = 0;
    end
    // Generate clock
	 always #5 clk = ~clk;
      
endmodule

