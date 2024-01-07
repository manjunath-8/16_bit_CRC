`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:46 01/05/2024 
// Design Name: 
// Module Name:    Parallel 
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
module Parallel(clk,reset,data_in,data_out);

input [33:0]data_in;
input clk,reset;
output [49:0]data_out;

reg [15:0]crc;
wire [39:0]data;
wire [15:0]out1,out2,out3,out4,out5;

initial crc = 16'b0000_0000_0000_0000;

clk_initial i0(clk,reset,data_in,data);
parallel_compute i1(clk,reset,data[39:32],crc,out1);
parallel_compute i2(clk,reset,data[31:24],out1,out2);
parallel_compute i3(clk,reset,data[23:16],out2,out3);
parallel_compute i4(clk,reset,data[15:8],out3,out4);
parallel_compute i5(clk,reset,data[7:0],out4,out5);

assign data_out = {data_in,out5};

endmodule
