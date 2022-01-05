`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:20:56 11/02/2021 
// Design Name: 
// Module Name:    Moorey_101 
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
module Moorey_101(rst, clk, din, dout);

	input rst, clk;
	input din;
	output reg dout;
	parameter S0 = 4'b0001, S1 = 4'b0010, S2 = 4'b0100, S3 = 4'b1000;
	
	reg [3:0]state, next_state;
	always @(posedge clk, posedge rst)
	begin
	if(rst==1)
	state <= S0;
	else
	state <= next_state;
	end
	
	always @(state, din)
	begin 
	case(state)
	S0: begin
		if(din==1)
			next_state = S1;
		else
			next_state = S0;
		end
	S1: begin
		if(din ==0)
			next_state =S2;
		else
			next_state =S1;
		end
	S2: begin
		if(din ==1)
			next_state =S3;
		else
			next_state =S0;
		end
	S3: begin
		if(din ==1)
			next_state =S1;
		else
			next_state =S2;
		end
	default: next_state = S0;
	endcase
	end
	
	always @(state)
		begin
		
		case(state)
		S0: dout = 0;
		S1: dout = 0;
		S2: dout = 0;
		S3: dout = 1;
		default: dout = 0;
		endcase
		end
endmodule
