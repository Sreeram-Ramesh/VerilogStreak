`timescale 1ns / 1ns
`include "Problem19.v"

module top_module_tb;

	reg [3:0] A;
	wire Out_1, Out_2;

	top_module uut(A, Out_1, Out_2);

	initial begin

		$dumpfile("Problem19_tb.vcd");
		$dumpvars(0, top_module_tb);

		A = 4'b0000;
		#20;

		A = 4'b1010;
		#20;

		A = 4'b1101;
		#20;

		A = 4'b1111;
		#20;

		$display("Simulations complete, results are ready");
		$finish;

	end

endmodule