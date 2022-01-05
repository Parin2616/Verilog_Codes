`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:25 10/18/2021 
// Design Name: 
// Module Name:    SISO 
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
module SISO(Sin, Sout, clk, rst);
	input Sin, rst, clk;
	output reg Sout;
	
	reg [2:0]shift;
	
	always @(posedge clk)
	begin
		if (!rst)
			begin
				shift[0] <= 1'b0;
				shift[1] <= 1'b0;
				shift[2] <= 1'b0;
				Sout <= 1'b0;
			end
		else
			begin
				shift[0] <= Sin;
				shift[1] <= shift[0];
				shift[2] <= shift[1];
				Sout		<= shift[2];
			end
		end
endmodule
