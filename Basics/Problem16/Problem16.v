// Modelling based on replicating operator.

module top_module(in_1, out_1);

	input [7:0] in_1;
	output [31:0] out_1;

	assign out_1 = {{24{in_1[7]}}, in_1};

endmodule
