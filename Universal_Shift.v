`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:22 10/18/2021 
// Design Name: 
// Module Name:    Universal_Shift 
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
module Universal_Shift(Sin, Pin, Pout, sel, rst, clk);
	input [3:0]Pin;
	input Sin;
	input [1:0]sel;
	input rst, clk;
	output reg [3:0]Pout;
	
	always @(posedge clk)
	begin
	if(!rst)
		begin
			Pout <= 4'b0;
		end
	else
		begin	
			case(sel)
				2'b00 : Pout <= Pin;
				2'b01 : Pout <= {Sin, Pout[3:1]};
				2'b10 : Pout <= {Pout[2:0], Sin};
				2'b11 : Pout <= Pout;
				endcase
			end
		end
endmodule
