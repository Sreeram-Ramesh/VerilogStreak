// Module: 4-bit ripple carry adder
`include "full_adder.v"

module ripple_carry_adder(in_1, in_2, c_in, sum, c_out);

    input [3:0] in_1;
    input [3:0] in_2;
    input c_in;

    output [3:0] sum;
    output c_out;

    wire c1, c2, c3;

    full_adder fa1(.in_1(in_1[0]), .in_2(in_2[0]), .c_in(c_in), .sum(sum[0]), .c_out(c1));
    full_adder fa2(.in_1(in_1[1]), .in_2(in_2[1]), .c_in(c1), .sum(sum[1]), .c_out(c2));
    full_adder fa3(.in_1(in_1[2]), .in_2(in_2[2]), .c_in(c2), .sum(sum[2]), .c_out(c3));
    full_adder fa4(.in_1(in_1[3]), .in_2(in_2[3]), .c_in(c3), .sum(sum[3]), .c_out(c_out));

endmodule