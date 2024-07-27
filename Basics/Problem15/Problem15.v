// Modelling a vector reversal using concatenation in verilog.

module top_module(in_1, out_1);

	input [7:0] in_1;
	output [7:0] out_1;

	assign out_1 = {in_1[0], in_1[1], in_1[2], in_1[3], in_1[4], in_1[5], in_1[6], in_1[7]};

endmodule
