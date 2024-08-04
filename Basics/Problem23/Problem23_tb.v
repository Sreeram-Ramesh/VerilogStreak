`timescale 1ns / 1ns
`include "Problem23.v"

module top_module_tb;

	reg [3:0] A, B;
	reg cin;
	wire cout;
	wire [3:0] sum;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.cin(cin),
		.sum(sum),
		.cout(cout)
	);

	initial begin

	$dumpfile("Problem23_tb.vcd");
	$dumpvars(0, top_module_tb);

	A = 4'b0001;
	B = 4'b1011;
	cin = 1'b0;
	#20;

	A = 4'b1101;
	B = 4'b1110;
	cin = 1'b0;
	#20;

	A = 4'b1010;
	B = 4'b1101;
	cin = 1'b1;
	#20;

	A = 4'b0010;
	B = 4'b0011;
	#20;

	$display("Simulation complete, results are ready");
	$finish;

	end

endmodule
