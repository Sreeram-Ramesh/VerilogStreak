// Modelling a 4-bit adder from 1-bit full adders.

module full_adder(in_1, in_2, cin, sum, cout);

	input wire in_1, in_2, cin;
	output wire sum, cout;

	assign sum = in_1 ^ in_2 ^ cin;
	assign cout = in_1&in_2 | in_2&cin | in_1&cin;

endmodule

module top_module(in_1, in_2, cin, sum, cout);

	input wire [3:0] in_1, in_2;
	input wire cin, w1, w2, w3;
	output wire cout;
	output wire [3:0] sum;

	full_adder fa1(.in_1(in_1[0]), .in_2(in_2[0]), .cin(cin), .sum(sum[0]), .cout(w1));
	full_adder fa2(.in_1(in_1[1]), .in_2(in_2[1]), .cin(w1), .sum(sum[1]), .cout(w2));
	full_adder fa3(.in_1(in_1[2]), .in_2(in_2[2]), .cin(w2), .sum(sum[2]), .cout(w3));
	full_adder fa4(.in_1(in_1[3]), .in_2(in_2[3]), .cin(w3), .sum(sum[3]), .cout(cout));

endmodule
