// Modelling an EXNOR gate.

module top_module(in_1, in_2, out_1);

	input in_1, in_2;
	output out_1;

	assign out_1 = (in_1 & in_2) + (~in_1 & ~in_2);

endmodule
