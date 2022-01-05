`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:34 10/17/2021 
// Design Name: 
// Module Name:    PISO 
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
module PISO(pin, sout, clk, mode, rst);
	input [3:0]pin;
	input clk, mode, rst;
	output sout;
	reg [3:0]q;
	
	always @(posedge clk)
	begin
	if(!rst)
	begin
		q <= 0;
		end
		
	else if(mode)
	begin
		q <= pin;
		end
		
	else
	begin
		q <= {q[2:0], 1'b0};
	end
end	
	assign sout = q[3];
	
endmodule
