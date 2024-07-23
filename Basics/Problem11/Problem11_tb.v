`timescale 1ns / 1ns
`include "Problem11.v"

module top_module_tb;

	reg [31:0] A;
	wire [31:0] Out;

	top_module uut(

		.in(A),
		.out(Out)
	);

	initial begin

		$dumpfile("Problem11_tb.vcd");
		$dumpvars(0, top_module_tb);
		
		A = 16'hb1f05663;
		#20;
		
		A = 16'hc0895e81;
		#20;
		
		A = 16'h46df998d;
		#20;

		A = 16'h8484d609;
		#20;

		$display("Simulations complete, results are ready.");
		$finish;

	end

endmodule
