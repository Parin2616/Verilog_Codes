`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:52 09/23/2021 
// Design Name: 
// Module Name:    BCD_7 
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
module BCD_7(bcd, segment);
   
	input wire [3:0]bcd;
	output reg [6:0]segment;
	
	always @(*)
	begin
		case(bcd)
		
		0 : begin segment = 7'b1111110; end
		1 : begin segment = 7'b0110000; end
		2 : begin segment = 7'b1101101; end
		3 : begin segment = 7'b1111001; end
		4 : begin segment = 7'b0110011; end
		5 : begin segment = 7'b1011011; end
		6 : begin segment = 7'b1011111; end
		7 : begin segment = 7'b1110000; end
		8 : begin segment = 7'b1111111; end
		9 : begin segment = 7'b1111011; end
		default : begin segment = 7'b1111111; end
		endcase
	end	
endmodule
