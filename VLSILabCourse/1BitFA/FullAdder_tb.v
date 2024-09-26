`timescale 1ns / 1ns
`include "FullAdder.v"

module full_adder_tb;

    reg A, B, Cin;
    wire Sum, Wire;

    full_adder uut(
        .in_1(A),
        .in_2(B),
        .c_in(Cin),
        .sum(Sum),
        .c_out(Cout)
    );

    initial begin

        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

        A = 1'b0; B = 1'b0; Cin = 1'b0;
        #200;

        $display("Simulations complete, results are ready");
        $finish;

    end

    always begin

        #25; A = ~A;

    end

    always begin

        #50; B = ~B;

    end

    always begin

        #75; Cin = ~Cin;

    end


endmodule