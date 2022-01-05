`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:37:44 09/19/2021 
// Design Name: 
// Module Name:    Multiplexer4x1_Behav 
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
//////////////////////////////////////////////////////////////////////
module Multiplexer4x1_Behav(in1,sel, Out);
	input wire [3:0]in1;
	input wire [1:0]sel;
	output reg Out;
	
	always @(*)
	begin
	
	case (sel)
	2'b00: begin Out = in1[0]; end
	2'b01: begin Out = in1[1]; end
	2'b10: begin Out = in1[2]; end
	2'b11: begin Out = in1[3]; end
	endcase
	end

endmodule
