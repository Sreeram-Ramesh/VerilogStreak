`timescale 1ns / 1ns
`include "Problem9.v"

module top_module_tb;

	reg [2:0] A;
	wire [2:0] Out_v;
	wire Out_0, Out_1, Out_2;

	top_module uut(

		.vec(A),
		.out_v(Out_v),
		.out_0(Out_0),
		.out_1(Out_1),
		.out_2(Out_2)
	);

	initial begin

		$dumpfile("Problem9_tb.vcd");
		$dumpvars(0, top_module_tb);
		
		A <= 3'b000;
		#160;

		$display("Simulation complete, results are ready");
		$finish;
	
	end

	always begin

		#20;
		A = A + 3'b001;

	end

endmodule
