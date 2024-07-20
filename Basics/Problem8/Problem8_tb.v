`timescale 1ns / 1ns
`include "Problem8.v"

module top_module_tb;

	reg A1, B1, C1, D1, E1, F1;
	reg A2, B2, C2, D2;
	wire Y1, Y2;

	top_module uut(

		.p1_a(A1),
		.p1_b(B1),
		.p1_c(C1),
		.p1_d(D1),
		.p1_e(E1),
		.p1_f(F1),
		.p2_a(A2),
		.p2_b(B2),
		.p2_c(C2),
		.p2_d(D2),
		.p1_y(Y1),
		.p2_y(Y2)
	);

	initial begin

		$dumpfile("Problem8_tb.vcd");
		$dumpvars(0, top_module_tb);

		A1 = 0;
		B1 = 0;
		C1 = 0;
		D1 = 0;
		E1 = 0;
		F1 = 0;
		A2 = 1;
		B2 = 1;
		C2 = 1;
		D2 = 1;

		#640;

		$display("Simulation complete, results are ready.");
		$finish;

	end

	always begin

		A1 = ~A1;
		#10;
	
	end

	always begin

		B1 = ~B1;
		#20;

	end

	always begin

		C1 = ~C1;
		#30;

	end

	always begin

		D1 = ~D1;
		#40;
	
	end

	always begin

		E1 = ~E1;
		#50;
	
	end

	always begin

		F1 = ~F1;
		#60;

	end

	always begin

		A2 = ~A2;
		#70;

	end

	always begin

		B2 = ~B2;
		#80;

	end

	always begin

		C2 = ~C2;
		#90;
	
	end

	always begin

		D2 = ~D2;
		#100;

	end

endmodule
