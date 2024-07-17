`timescale 1ns / 1ns
`include "CMOSNor.v"

module CMOSNor_tb;

	reg A, B, clk, rst;
	wire Out;

	CMOSNor uut(
		.in_1(A),
		.in_2(B),
		.out(Out)
	);

	initial begin
		$dumpfile("CMOSNor_tb.vcd");
		$dumpvars(0, CMOSNor_tb);

		clk <= 0;
		rst <= 0;
		A <= 0;
		B <= 0;
		#10;
		rst <= 1;
		#120;
		rst <= 0;
	end

	always begin
		clk = ~clk;
		#10;
	end

	always@(posedge clk, posedge rst) begin
		
		if (rst) begin
			A <= 0;
			B <= 0;
		end

		else begin
			A <= 0;
			B <= 1;
			#20;

			A <= 1;
			B <= 0;
			#20;

			B <= 1;
			#20;

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

			$display("Simulation complete, results are ready.");
			$finish;
		end

	end

	always@(negedge rst) begin
		A <= 0;
		B <= 0;
	end

endmodule
