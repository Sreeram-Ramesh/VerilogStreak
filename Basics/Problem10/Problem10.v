// Modelling a vector to divide it into segments

module top_module(in, out_hi, out_lo);

	input wire [15:0] in;
	output wire [7:0] out_hi;
	output wire [7:0] out_lo;

	assign out_hi = in [15:8];
	assign out_lo = in [7:0];

endmodule
