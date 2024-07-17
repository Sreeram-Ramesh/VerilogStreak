`timescale 1ns / 1ns
`include "CMOSAnd.v"

module CMOSAnd_tb;
	// Declaring inputs
	reg A, B;
	wire Out;

	// Instantiating a uut
	CMOSAnd uut(
		.in_1(A),
		.in_2(B),
		.out(Out)
	);

	reg clk, rst;

	initial begin
		// Formalities for using iverilog
		$dumpfile("CMOSAnd_tb.vcd");
		$dumpvars(0, CMOSAnd_tb);

		clk <= 0;
		rst <= 0;
		#20;
		rst <= 1;
	
	end

	always begin
		clk = ~clk;
		#10;
	end

	always@(posedge clk, posedge rst) begin
		
		A <= 0;
		B <= 0;
		#20;

		B <= 1;
		#20;

		A <= 1;
		B <= 0;
		#20;
		
		B <= 1;
		#20;

		$display("Simulation complete, results are available.");
		$finish;

	end

	always@(negedge rst) begin
		A <= 0;
		B <= 0;
	end

endmodule
