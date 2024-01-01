`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:42 12/22/2023 
// Design Name: 
// Module Name:    series 
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
module series(clk,reset,data_in,data_out);
input clk,reset;
input [33:0]data_in;

output [49:0]data_out;

reg [15:0]lfsr;
reg [6:0]count;

reg [49:0]data;
reg [15:0]crc;

reg [15:0]crc_feed;

initial crc = 16'b0000_0000_0000_0000;
initial crc_feed = 16'b0000_0000_0000_0000;
initial count = 7'b0000000;

always @ (posedge clk)
if (reset) 
   begin
     data <= {data_in,crc};
     lfsr <= 16'b0000_0000_0000_0000;
     count <= 7'b0000000;
   end 
else 
   begin  
         if (count < 16) 
           begin
			    data <= {data[48:0], 1'b0};
             lfsr[count] <= data[49];
             count <= count + 7'b0000001;
           end
			if (count <50)
           begin
			    data <= {data[48:0], 1'b0};
				 
             lfsr[0]  <= data[49] ^ lfsr[15];
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
		  
		       count <= count+ 7'b0000001;
           end
			if (count<66)
			  begin
				 crc_feed[count-50]<=lfsr[count-50];
				 count <=count+ 7'b0000001;
			  end
      end
assign data_out = {data_in,crc_feed};
endmodule
