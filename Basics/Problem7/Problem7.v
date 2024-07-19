// Utilizing multiple wires.

module top_module(in_1, in_2, in_3, in_4, out_1, out_2);

	input in_1, in_2, in_3, in_4;
	output out_1, out_2;

	wire and1_res, and2_res, or_res;

	assign and1_res = in_1 & in_2;
	assign and2_res = in_3 & in_4;
	assign or_res = and1_res | and2_res;
	assign out_1 = or_res;
	assign out_2 = ~or_res;

endmodule
