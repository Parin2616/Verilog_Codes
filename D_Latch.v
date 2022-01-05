`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:51:55 10/10/2021 
// Design Name: 
// Module Name:    D_Latch 
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
module D_Latch(D, rstn, en, Q);
	input D, en, rstn;
	output reg Q;
	
	always @(*)
	if(!rstn)
		Q <= 0;
	else if(en)
		Q <= D;
endmodule
