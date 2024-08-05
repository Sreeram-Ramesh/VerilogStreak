`timescale 1ns / 1ns
`include "Problem24.v"

module top_module_tb;

	reg [31:0] A, B;
	reg cin;
	wire cout;
	wire [31:0] sum;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.cin(cin),
		.sum(sum),
		.cout(cout)
	);

	initial begin

	$dumpfile("Problem24_tb.vcd");
	$dumpvars(0, top_module_tb);

	A = 32'had30;
	B = 32'heff5;
	cin = 1'b0;
	#20;

	A = 32'hdf26;
	B = 32'hfed3;
	cin = 1'b0;
	#20;

	A = 32'hedf9;
	B = 32'hdef8;
	cin = 1'b1;
	#20;

	A = 32'hefad;
	B = 32'h123d;
	#20;

	$display("Simulation complete, results are ready");
	$finish;

	end

endmodule

