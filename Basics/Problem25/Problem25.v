//Modelling carry-select adder

module add1 ( in_1, in_2, cin, sum, cout );

	input in_1, in_2, cin;
	output sum, cout;

	assign sum = in_1 ^ in_2 ^ cin;
	assign cout = in_1 & in_2 | in_2 & cin | in_1 & cin;

endmodule

module add16 ( in_1, in_2, cin, sum, cout);

	input [15:0] in_1, in_2;
	input cin;
	output [15:0] sum;
	output cout;

	wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;

	add1 a0( in_1[0], in_2[0], cin, sum[0], w0 );
	add1 a1( in_1[1], in_2[1], w0, sum[1], w1 );
	add1 a2( in_1[2], in_2[2], w1, sum[2], w2 );
	add1 a3( in_1[3], in_2[3], w2, sum[3], w3 );
	add1 a4( in_1[4], in_2[4], w3, sum[4], w4 );
	add1 a5( in_1[5], in_2[5], w4, sum[5], w5 );
	add1 a6( in_1[6], in_2[6], w5, sum[6], w6 );
	add1 a7( in_1[7], in_2[7], w6, sum[7], w7 );
	add1 a8( in_1[8], in_2[8], w7, sum[8], w8 );
	add1 a9( in_1[9], in_2[9], w8, sum[9], w9 );
	add1 a10( in_1[10], in_2[10], w9, sum[10], w10 );
	add1 a11( in_1[11], in_2[11], w10, sum[11], w11 );
	add1 a12( in_1[12], in_2[12], w11, sum[12], w12 );
	add1 a13( in_1[13], in_2[13], w12, sum[13], w13 );
	add1 a14( in_1[14], in_2[14], w13, sum[14], w14 );
	add1 a15( in_1[15], in_2[15], w14, sum[15], cout );

endmodule

module top_module(in_1, in_2, out_1);

	input [31:0] in_1, in_2;
	output [31:0] out_1;

	wire cout;
	wire [15:0] cout0, cout1;

	add16 add0( .in_1(in_1[15:0]), .in_2(in_2[15:0]), .cin(0), .sum(out_1[15:0]), .cout(cout) );
	add16 add1( .in_1(in_1[31:15]), .in_2(in_2[31:16]), .cin(0), .sum(cout0) );
	add16 add2( .in_1(in_1[31:15]), .in_2(in_2[31:16]), .cin(1), .sum(cout1) );

	always @(cout) begin

		case(cout)

			1'b0: out_1[31:16] = cout0;
			1'b1: out_1[31:16] = cout1;

		endcase

	end

endmodule
