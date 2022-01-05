`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:11 11/02/2021 
// Design Name: 
// Module Name:    Melay_101 
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
module Melay_101(clk, reset, din, dout);

	input clk, reset;
	input din;
	output reg dout;

	parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;
	reg [1:0]state, rst_state;
	
	always @(posedge clk or posedge reset)
	begin
	if(reset)
	begin
	dout <=1'b0;
	rst_state <= S0;
	end
	else begin
		state <=S0;
		
		case(state)
		S0: begin
		if(din) begin
			state <= S1;
			dout <= 1'b0;
			end
		else
			dout <=1'b0;
		end
		S1: begin
			if(~din) begin
			state <= S2;
			dout <= 1'b0;
				end
			else
				state <= S1;
				dout <= 1'b0;
			end
			
		S2: begin
				if(din)begin
					state <=S1;
					dout <=1'b1;
					end
				else begin
					state <=S0;
					dout <=1'b0;
						end
				end
			endcase
		end
	end
endmodule			
				