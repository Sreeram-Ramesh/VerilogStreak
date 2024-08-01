`timescale 1ns/1ns
`include "Problem21.v"

module shift_register_tb;

	reg D, clk;
	wire Q;

	shift_register uut(
		.d(D),
		.clk(clk),
		.q(Q)
	);

	initial begin

		$monitor($time, " D = %b, Q = %b", D, Q);

	end

	initial begin

		$dumpfile("Problem21_tb.vcd");
		$dumpvars(0, shift_register_tb);

		clk = 1'b1;
		#60;

		D = 1'b1;
		#20;

		D = 1'b0;
		#10;

		D = 1'b1;
		#10;

		D = 1'b0;
		#40;

		D = 1'b1;
		#10;

		D = 1'b0;
		#40;

		D = 1'b1;
		#10;
		
		$display("Simulations done, results are ready.");
		$finish;

	end

	always begin

		clk = ~clk;
		#5;

	end

endmodule
