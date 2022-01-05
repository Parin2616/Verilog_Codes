`timescale 1ns / 1ps


//Declaring Module

module Full_Adder(a,b,c,sum,carry); 
    input a,b,c;
    output sum, carry;

//Implementing Full Adder

	assign sum = (a^b^c);				
	assign carry = ((a&b)|(b&c)|(a&c));
	
endmodule
