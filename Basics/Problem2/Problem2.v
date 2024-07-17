// Modelling multiple wire inputs

module top_module(a, b, c, w, x, y, z);

	input a, b, c;
	output w, x, y, z;

	assign {w, x, y, z} = {a, b, b, c};

endmodule
