`timescale 1ns / 1ns
`include "Problem10.v"

module top_module_tb;

	reg [15:0] A;
	wire [7:0] Out_hi;
	wire [7:0] Out_lo;

	top_module uut(

		.in(A),
		.out_hi(Out_hi),
		.out_lo(Out_lo)
	);

	initial begin

		$dumpfile("Problem10_tb.vcd");
		$dumpvars(0, top_module_tb);

		A = 16'b0101010010100100;
		#160;

		$display("Simulation complete, results are ready.");
		$finish;

	end

endmodule
