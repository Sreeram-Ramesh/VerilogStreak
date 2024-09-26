// Module: 1 bit full adder

module full_adder(in_1, in_2, c_in, sum, c_out);

    input in_1, in_2, c_in;
    output sum, c_out;

    assign sum = in_1 ^ in_2 ^ c_in;
    assign c_out = in_1 & in_2 | in_1 & c_in | in_2 & c_in;

endmodule