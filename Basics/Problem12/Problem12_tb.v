`timescale 1ns / 1ns
`include "Problem12.v"

module top_module_tb;

	reg [2:0] A;
	reg [2:0] B;
	wire [2:0] Out_bitw;
	wire Out_logic;
	wire [5:0] Out_not;

	top_module uut(
		.in_1(A),
		.in_2(B),
		.out_bitw(Out_bitw),
		.out_logic(Out_logic),
		.out_not(Out_not)
	);

	initial begin

		$dumpfile("Problem12_tb.vcd");
		$dumpvars(0, top_module_tb);
		
		A = 3'b000;
		B = 3'b000;
		#20;

		B = 3'b111;
		#180;

		$display("Simulations complete, results are ready.");
		$finish;

	end

	always begin

		#20;
		A = A + 3'b001;

	end

endmodule
