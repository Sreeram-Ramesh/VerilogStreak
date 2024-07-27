`timescale 1ns / 1ns
`include "Problem15.v"

module top_module_tb;

	reg [7:0] A;
	wire [7:0] Out_1;

	top_module uut(

		.in_1(A),
		.out_1(Out_1)
	);

	initial begin

		$dumpfile("Problem15_tb.vcd");
		$dumpvars(0, top_module_tb);
		
		A = 8'h0A;
		#120;

		$display("Simulations complete, results are ready.");
		$finish;

	end

	always begin

		#20
		A = A + 8'h01;

	end

endmodule
