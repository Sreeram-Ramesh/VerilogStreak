`timescale 1ns / 1ns
`include "Problem7.v"

module top_module_tb;

	reg A, B, C, D;
	wire Out1, Out2;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.in_3(C),
		.in_4(D),
		.out_1(Out1),
		.out_2(Out2)

	);

	initial begin

		$dumpfile("Problem7_tb.vcd");
		$dumpvars(0, top_module_tb);

		A = 1;
		B = 1;
		C = 1;
		D = 1;
		#160;

		$display("Simulation complete, results are ready.");
		$finish;

	end

	always begin

		A = ~A;
		#10;

	end

	always begin

		B = ~B;
		#20;

	end

	always begin

		C = ~C;
		#30;

	end

	always begin

		D = ~D;
		#40;

	end

endmodule
