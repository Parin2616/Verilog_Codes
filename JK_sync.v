`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:40 10/11/2021 
// Design Name: 
// Module Name:    JK_sync 
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
module JK_sync(J, K, clk, rst, Q);

	input J, K, clk, rst;
	output reg Q;
	
	always @(negedge clk)
	begin 
	if(!rst)
		Q <=0;
	else begin	
		case({J,K})
		2'b00 : Q <= Q;
		2'b01 : Q <= 0;
		2'b10 : Q <= 1;
		2'b11 : Q <= ~Q;
		endcase
		end
	end


endmodule
