`timescale 1ns / 1ns
`include "CMOSExor.v"

module CMOSExor_tb;

	reg A, B, clk, rst;
	wire Out;

	CMOSExor uut(
		.in_1(A), 
		.in_2(B),
		.out(Out)
	);

	initial begin

		$dumpfile("CMOSExor_tb.vcd");
		$dumpvars(0, CMOSExor_tb);

		clk <= 0;
		rst <= 0;
		A <= 0;
		B <= 0;
		#20;
		rst <= 1;
	
	end

	always begin
		clk = ~clk;
		#10;
	end

	always@(posedge clk, posedge rst) begin

		if(!rst) begin
			A <= 0;
			B <= 0;
		end

		else begin
			
			B <= 1;
			#10;

			A <= 1;
			B <= 0;
			#10;

			B <= 1;
			#10;

			$display("Simulations done, results are ready!");
			$finish;
		end
	end

endmodule

