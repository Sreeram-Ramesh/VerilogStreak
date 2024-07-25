// Modelling a 4-input gate to give outputs of AND, OR and XOR

module top_module(in, out_and, out_or, out_xor);

	input [3:0] in;
	output out_and, out_or, out_xor;

	assign out_and = in[3] & in[2] & in[1] & in[0];
	assign out_or = in[3] | in[2] | in[1] | in[0];
	assign out_xor = in[3] ^ in[2] ^ in[1] ^ in[0];

endmodule
