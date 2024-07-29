// Modelling a 25 bit pair wise comparison using concatenation and replication
// operators

module top_module(in_1, in_2, in_3, in_4, in_5, out_1);

	input in_1, in_2, in_3, in_4, in_5;
	output [24:0] out_1;

	assign out_1 = ~{5{in_1, in_2, in_3, in_4, in_5}} ^ {{5{in_1}}, {5{in_2}}, {5{in_3}}, {5{in_4}}, {5{in_5}}};

endmodule
