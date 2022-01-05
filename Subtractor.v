`timescale 1ns / 1ps

// Declaring Module
module Subtractor(a, b, c, diff, borrow);
    input a, b, c;
    output diff, borrow;
	 
// Implementing Subtractor
	assign diff = a ^ b ^ c;
	assign borrow = ((~a & b) | ((~(a ^ b)) & borrow));

endmodule
