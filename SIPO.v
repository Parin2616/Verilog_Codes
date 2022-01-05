`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:17 10/17/2021 
// Design Name: 
// Module Name:    SIPO 
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
module SIPO(sin, pout, clk);
	input sin,clk;
	output reg [3:0]pout;
	
	always @(posedge clk)
	begin 
	pout[0] <= sin;
	pout[1] <= pout[0];
	pout[2] <= pout[1];
	pout[3] <= pout[2];
	end
endmodule
