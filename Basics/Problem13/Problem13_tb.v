`timescale 1ns / 1ns
`include "Problem13.v"

module top_module_tb;

	reg [3:0] A;
	wire Out_and, Out_or, Out_xor;

	top_module uut(

		.in(A),
		.out_and(Out_and),
		.out_or(Out_or),
		.out_xor(Out_xor)
	);

	initial begin
		
		$dumpfile("Problem13_tb.vcd");
		$dumpvars(0, top_module_tb);
		A = 4'h0;
		#320;
		$display("Simulation complete, results are ready.");
		$finish;
	end

	always begin

		#20;
		A = A + 4'h1;
	end

endmodule
