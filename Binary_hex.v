`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:12:33 09/24/2021 
// Design Name: 
// Module Name:    Binary_hex 
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
module Binary_hex(binary, hex);

	input wire[3:0]binary;
	output reg [15:0]hex;
	
	always @(*)
	begin
		case(binary)
		0 : begin hex = 16'b0000_0000_0000_0001; end
		1 : begin hex = 16'b0000_0000_0000_0010; end
		2 : begin hex = 16'b0000_0000_0000_0100; end
		3 : begin hex = 16'b0000_0000_0000_1000; end
		4 : begin hex = 16'b0000_0000_0001_0000; end
		5 : begin hex = 16'b0000_0000_0010_0000; end
		6 : begin hex = 16'b0000_0000_0100_0000; end
		7 : begin hex = 16'b0000_0000_1000_0000; end
		8 : begin hex = 16'b0000_0001_0000_0000; end
		9 : begin hex = 16'b0000_0010_0000_0000; end
		10 : begin hex = 16'b0000_0100_0000_0000; end
		11 : begin hex = 16'b0000_1000_0000_0000; end
		12 : begin hex = 16'b0001_0000_0000_0000; end
		13 : begin hex = 16'b0010_0000_0000_0000; end
		14 : begin hex = 16'b0100_0000_0000_0000; end
		15 : begin hex = 16'b1000_0000_0000_0000; end
		endcase
		end
endmodule
