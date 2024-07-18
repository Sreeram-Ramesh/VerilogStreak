`timescale 1ns / 1ns
`include "Problem5.v"

module top_module_tb;

	reg A, B;
	wire Out;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.out_1(Out)
	);

	initial begin

		$dumpfile("Problem5_tb.vcd");
		$dumpvars(0, top_module_tb);

		A <= 0;
		B <= 0;
		#20;

		B <= 1;
		#20;

		A <= 1;
		#20;

		B <= 0;
		#20;

		$display("Simulation complete, results are available.");
		$finish;

	end

endmodule
