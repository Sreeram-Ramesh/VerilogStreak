`timescale 1ns / 1ns
`include "Problem17.v"

module top_module_tb;

	reg A, B, C, D, E;
	wire [24:0] Out_1;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.in_3(C),
		.in_4(D),
		.in_5(E),
		.out_1(Out_1)
	);

	initial begin

		$dumpfile("Problem17_tb.vcd");
		$dumpvars(0, top_module_tb);

		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;

		#320;

		$display("Simulations complete, results are ready");
		$finish;

	end

	always begin

		#20;
		A = ~A;

	end

	always begin

		#30;
		B = ~B;

	end

	always begin

		#40;
		C = ~C;
	
	end

	always begin

		#50;
		D = ~D;

	end

	always begin

		#60;
		E = ~E;

	end

endmodule
