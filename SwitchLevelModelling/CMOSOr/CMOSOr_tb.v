`timescale 1ns / 1ns
`include "CMOSOr.v"

// Testbench module

module CMOSOr_tb;
	
	reg A, B, clk, rst;
	wire Out;

	CMOSOr uut(
		.in_1(A),
		.in_2(B),
		.out(Out)
	);

	initial begin

		$dumpfile("CMOSOr_tb.vcd");
		$dumpvars(0, CMOSOr_tb);

		clk <= 0;
		A <= 0;
		B <= 0;
		rst <= 0;
		#10;
		rst <= 1;
		#35;
		rst <= 0;
	end

	always begin

		clk = ~clk;
		#10;
	end

	always@( posedge clk, posedge rst ) begin

		if (rst) begin
			A <= 0;
			B <= 0;
		end

		else begin
			A <= 0;
			B <= 0;
			#10;
			
			B <= 1;
			#10;

			A <= 1;
			B <= 0;
			#10;

			B <= 1;
			#10;

			$display("Simulations done, results are ready.");
			$finish;
		end
	end

	always@(negedge rst) begin

		A <= 0;
		B <= 0;
	end

endmodule

