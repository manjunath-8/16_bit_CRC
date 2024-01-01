`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:47 12/22/2023 
// Design Name: 
// Module Name:    top_module 
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
module top_module(clk);

input clk;
wire[35:0]q;

wire [34:0]d;
wire [49:0]o;

icon q1 (
    .CONTROL0(q) // INOUT BUS [35:0]
);

vio q2 (
    .CONTROL(q), // INOUT BUS [35:0]
    .CLK(clk), // IN
    .ASYNC_OUT(d), // OUT BUS [33:0]
    .SYNC_IN(o) // IN BUS [49:0]
);

series q3(
	.clk(clk),
	.data_in(d[33:0]),
	.reset(d[34:34]),
	.data_out(o[49:0]));

endmodule
