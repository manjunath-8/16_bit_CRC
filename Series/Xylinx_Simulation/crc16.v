`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:16:24 12/16/2023 
// Design Name: 
// Module Name:    crc16 
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
module crc16(clk, reset, data_in, crc_out);

input clk     ;
input reset   ;
input data_in ;

output [15:0] crc_out;
reg   [15:0] lfsr;
reg [5:0]count;

initial count = 6'b000000;

always @ (posedge clk)
if (reset) 
  begin
     lfsr <= 16'b0000_0000_0000_0000;
     count <= 6'b000000;
  end 
else 
  begin
    if (count < 16) 
      begin
        lfsr[count] <= data_in;
        count <= count + 1;
      end
    if (count <50)
      begin
        lfsr[0]  <= data_in ^ lfsr[15];
        lfsr[1]  <= lfsr[0];
        lfsr[2]  <= lfsr[1] ^ lfsr[15];
        lfsr[3]  <= lfsr[2] ^ lfsr[15];
        lfsr[4]  <= lfsr[3];
        lfsr[5]  <= lfsr[4] ^ lfsr[15];
        lfsr[6]  <= lfsr[5];
        lfsr[7]  <= lfsr[6] ^ lfsr[15];
        lfsr[8]  <= lfsr[7];
        lfsr[9]  <= lfsr[8] ^ lfsr[15];
        lfsr[10] <= lfsr[9];
        lfsr[11] <= lfsr[10] ^ lfsr[15];
        lfsr[12] <= lfsr[11] ^ lfsr[15];
        lfsr[13] <= lfsr[12] ^ lfsr[15];
        lfsr[14] <= lfsr[13];
        lfsr[15] <= lfsr[14] ^ lfsr[15];
		  
		  count = count+1;
      end
  end
assign crc_out = lfsr;
endmodule