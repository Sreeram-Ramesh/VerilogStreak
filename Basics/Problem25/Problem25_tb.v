`timescale 1ns / 1ns
`include "Problem25.v"

module top_module_tb;

	reg [31:0] A, B;
	wire [31:0] sum;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.out_1(sum)
	);

	initial begin

	$dumpfile("Problem25_tb.vcd");
	$dumpvars(0, top_module_tb);

	A = 32'had3ef0;
	B = 32'he78ff5;
	#20;

	A = 32'h60df26;
	B = 32'h7efed3;
	#20;

	A = 32'hddedf9;
	B = 32'hfedef8;
	#20;

	A = 32'h68efad;
	B = 32'hef123d;
	#20;

	$display("Simulation complete, results are ready");
	$finish;

	end

endmodule
