`timescale 1ns / 1ps

//Declaring Module
module Decoder3_8(output[7:0]output_line, input[2:0]input_line, Ena);
//Implementingg Decode using vector
assign output_line[0] = ~input_line[2] & ~input_line[1] & ~input_line[0]&Ena;
assign output_line[1] = ~input_line[2] & ~input_line[1] & input_line[0]&Ena;
assign output_line[2] = ~input_line[2] & input_line[1] & ~input_line[0]&Ena;
assign output_line[3] = ~input_line[2] & input_line[1] & input_line[0]&Ena;
assign output_line[4] = input_line[2] & ~input_line[1] & ~input_line[0]&Ena;
assign output_line[5] = input_line[2] & ~input_line[1] & input_line[0]&Ena;
assign output_line[6] = input_line[2] & input_line[1] & ~input_line[0]&Ena;
assign output_line[7] = input_line[2] & input_line[1] & input_line[0]&Ena;

endmodule
