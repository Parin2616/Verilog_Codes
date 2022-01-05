`timescale 1ns / 1ps

module Decoder4x16(output_line,input_line, Ena);
	 output [15:0]output_line;
    input [3:0]input_line;
	 input Ena;
	 
	 Decoder3_8 c1(output_line[7:0], input_line[2:0], ~input_line[3]&Ena);
	 Decoder3_8 c2(output_line[15:8], input_line[2:0], input_line[3]&Ena);
	
endmodule
