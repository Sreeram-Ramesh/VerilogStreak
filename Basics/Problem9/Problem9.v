// Modelling a bus

module top_module(vec, out_v, out_0, out_1, out_2);

	input wire [2:0] vec;
	output wire [2:0] out_v;
	output wire out_0, out_1, out_2;

	assign out_v = vec;
	assign out_0 = vec[0];
	assign out_1 = vec[1];
	assign out_2 = vec[2];

endmodule
