// Modelling a 7458 ic

module top_module(p1_a, p2_a, p2_b, p2_c, p2_d, p1_c, p1_b, p1_f, p1_e, p1_d, p1_y, p2_y);

	input p1_a, p1_b, p1_c, p1_d, p1_e, p1_f;
	input p2_a, p2_b, p2_c, p2_d;
	output p1_y, p2_y;

	wire and1_res, and2_res, and3_res, and4_res;

	assign and1_res = p2_a & p2_b;
	assign and2_res = p2_c & p2_d;
	assign and3_res = p1_a & p1_b & p1_c;
	assign and4_res = p1_f & p1_e & p1_d;
	assign p1_y = and3_res | and4_res;
	assign p2_y = and1_res | and2_res;

endmodule
