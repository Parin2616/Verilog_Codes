`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:16:08 10/10/2021 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(D, rstn, clk, Q);
	input D, rstn,  clk;
	output reg Q;
	
	always @(negedge rstn or negedge clk)
	begin
	if(!rstn)
		Q <= 0;
	else 
		Q <= D;
	end
	
endmodule
