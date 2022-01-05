`timescale 1ns / 1ps

//Initializing Module
module Parallel_adder(A, B, Cin, Sum, Cout); 
								// Declaring Inputs
	input [3:0]A;										
	input [3:0]B;
	input Cin;
								//Declaring Outputs
	output[3:0]Sum;
	output Cout;
								//Declaring Wires
	wire temp1, temp2, temp3;
	
	//Implementing Parallel Adder by calling Full Adder
	Full_Adder fa1(A[0], B[0], Cin, Sum[0], temp1);
	Full_Adder fa2(A[1], B[1], temp1, Sum[1], temp2);
	Full_Adder fa3(A[2], B[2], temp2, Sum[2], temp3);
	Full_Adder fa4(A[3], B[3], temp3, Sum[3], Cout);
endmodule

