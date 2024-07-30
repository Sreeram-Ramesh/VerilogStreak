`timescale 1ns / 1ns
`include "Problem18.v"

module top_module_tb;

	reg A, B;
	wire Sum, Carry;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.sum(Sum),
		.carry(Carry)
	);

	initial

		begin

			$dumpfile("Problem18_tb.vcd");
			$dumpvars(0, top_module_tb);

			A = 1'b0;
			B = 1'b0;
			#20;

			B = 1'b1;
			#20;

			A = 1'b1;
			B = 1'b0;
			#20;

			B = 1'b1;
			#20;

			$monitor("Time = %t, A = %b, B = %b, Sum = %b, Carry = %b", $time, A, B, Sum, Carry);
			$display("Simulations complete, results are ready.");
			$finish;

		end

endmodule
