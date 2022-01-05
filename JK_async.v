`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:47:58 10/12/2021 
// Design Name: 
// Module Name:    JK_async 
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
module JK_async(J, K, rst, clk, Q);
	input J, K, rst, clk;
	output reg Q;
	
	always @(negedge clk or negedge rst)
	begin
	if(!rst)
		Q <= 0;
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
