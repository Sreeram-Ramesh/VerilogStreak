`timescale 1ns / 1ns
`include "Problem16.v"

module top_module_tb;

	reg [7:0] A;
	wire [31:0] Out_1;

	top_module uut(
		.in_1(A),
		.out_1(Out_1)
	);

	initial begin

		$dumpfile("Problem16_tb.vcd");
		$dumpvars(0, top_module_tb);

			A = 8'b11111101;
			#20;

			A = 8'b00000101;
			#20;

			A = 8'b11110001;
			#20;

			A = 8'b00001111;
			#20;

		$display("Simulations complete, results are ready.");
		$finish;

	end

endmodule
