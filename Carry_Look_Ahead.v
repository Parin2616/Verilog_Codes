`timescale 1ns / 1ps

module CLA(A, B, Cin, Cout, Sum);
		input [3:0]A;
		input [3:0]B;
		input Cin;
		output Cout;
		output [3:0]Sum;
		wire t1, t2, t3;
		assign t1 = ((A[0]&B[0])|(B[0]&Cin)|(A[0]&Cin));
		assign t2 = ((A[1]&B[1])|(B[1]&t1)|(A[1]&t1));
		assign t3 = ((A[2]&B[2])|(B[2]&t2)|(A[2]&t2));
		//assign Cout = ((A[3]&B[3])|(B[3]&t3)|(A[3]&t3));
		
	Full_Adder fa1(A[0], B[0], Cin, Sum[0]);
	Full_Adder fa2(A[1], B[1], t1, Sum[1]);
	Full_Adder fa3(A[2], B[2], t2, Sum[2]);
	Full_Adder fa4(A[3], B[3], t3, Sum[3], Cout);


endmodule
