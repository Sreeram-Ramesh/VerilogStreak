// Modelling a submodule to be used inside a module

module sub_module( in_1, in_2, sum);

	input in_1, in_2;
	output sum;

	assign sum = in_1 ^ in_2;

endmodule

module top_module(in_1, in_2, sum, carry);

	input in_1, in_2;
	output sum, carry;

	sub_module summer(in_1, in_2, sum);
	assign carry = in_1 & in_2;

endmodule
