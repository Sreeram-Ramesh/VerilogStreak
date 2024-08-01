// Modelling a shift register of length 3 using D Flip-Flops.

module d_ff(clk, d, q);

	input clk, d;
	output reg q;

	always @(posedge clk) begin

		q <= d;

	end

endmodule

module shift_register(clk, d, q);

	input clk, d;
	output q;
	
	wire w1, w2;

	d_ff mydff1(clk, d, w1);
	d_ff mydff2(clk, w1, w2);
	d_ff mydff3(clk, w2, q);

endmodule
