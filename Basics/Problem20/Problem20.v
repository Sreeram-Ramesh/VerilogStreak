// Modelling 4-input OR and And gate as a module, instantiating it in another module.

module or_gate(in_1, out_1, out_2);

	input [3:0] in_1;
	output out_1, out_2;

	assign out_1 = in_1[3] | in_1[2] | in_1[1] | in_1[0];
	assign out_2 = in_1[3] & in_1[2] & in_1[1] & in_1[0];

endmodule

module top_module(in_1, out_1, out_2);
	
	input [3:0] in_1;
	output out_1, out_2;

	or_gate uut(

		.in_1(in_1), 
		.out_1(out_1), 
		.out_2(out_2)
	);

endmodule

