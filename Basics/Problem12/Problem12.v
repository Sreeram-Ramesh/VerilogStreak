// Modelling vector logic gates

module top_module(in_1, in_2, out_bitw, out_logic, out_not);

	input [2:0] in_1;
	input [2:0] in_2;
	output [2:0] out_bitw;
	output out_logic;
	output [5:0] out_not;

	assign out_bitw = in_1 | in_2;
	assign out_logic = in_1 || in_2;
	assign out_not[5:3] = ~in_2;
	assign out_not[2:0] = ~in_1;

endmodule
