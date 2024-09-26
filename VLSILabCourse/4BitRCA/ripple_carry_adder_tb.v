`timescale 1ns / 1ns
`include "ripple_carry_adder.v"

module ripple_carry_adder_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    ripple_carry_adder uut(

        .in_1(A),
        .in_2(B),
        .c_in(Cin),
        .sum(Sum),
        .c_out(Cout)
    );

    initial begin

        $dumpfile("ripple_carry_adder_tb.vcd");
        $dumpvars(0, ripple_carry_adder_tb);

        A = 4'b0001; B = 4'b1111; Cin = 1'b1; #25;
        A = 4'b0101; B = 4'b1101; Cin = 1'b0; #25;
        A = 4'b1001; B = 4'b1011; Cin = 1'b1; #25;
        A = 4'b0101; B = 4'b1000; Cin = 1'b1; #25;
        A = 4'b0011; B = 4'b1110; Cin = 1'b0; #25;
        A = 4'b1001; B = 4'b1100; Cin = 1'b0; #25;
        A = 4'b0111; B = 4'b1011; Cin = 1'b1; #25;
        A = 4'b1111; B = 4'b0001; Cin = 1'b1; #25;
        A = 4'b0011; B = 4'b1001; Cin = 1'b1; #25;
        A = 4'b1001; B = 4'b1101; Cin = 1'b0; #25;
        A = 4'b0101; B = 4'b0011; Cin = 1'b1; #25;
        A = 4'b1001; B = 4'b1010; Cin = 1'b1; #25;
        A = 4'b0010; B = 4'b1000; Cin = 1'b1; #25;
        A = 4'b0011; B = 4'b1101; Cin = 1'b0; #25;
        A = 4'b1000; B = 4'b0100; Cin = 1'b1; #25;

        $display("Simulations complete, results are ready.");
        $finish;
    
    end

endmodule