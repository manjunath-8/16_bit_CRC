`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:22:29 01/05/2024 
// Design Name: 
// Module Name:    clk_initial 
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
module clk_initial(clk,reset,data_in,data);

input clk,reset;
input [33:0]data_in;
output reg [39:0]data ;

always @(posedge clk)
begin
if (reset)
begin
data<={6'd0,data_in};
end
end
endmodule
