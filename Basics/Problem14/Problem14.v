// Modelling vector concatenation in verilog.

module top_module(in_1, in_2, in_3, in_4, in_5, in_6, out_1, out_2, out_3, out_4);

	input [4:0] in_1, in_2, in_3, in_4, in_5, in_6;
	output [7:0] out_1, out_2, out_3, out_4;

	assign {out_1, out_2, out_3, out_4} = {in_1, in_2, in_3, in_4, in_5, in_6, 2'b11};

endmodule
