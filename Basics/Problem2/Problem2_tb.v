`timescale 1ns / 1ns
`include "Problem2.v"

module top_module_tb;

    reg A, B, C;
    wire W, X, Y, Z;

    top_module uut(

       .a(A),
	   .b(B),
	   .c(C),
	   .w(W),
	   .x(X),
	   .y(Y),
	   .z(Z)

    );

    initial begin
        
        $dumpfile("Problem2_tb.vcd");
        $dumpvars(0, top_module_tb);

        A <= 1;
		B <= 1;
		C <= 1;
        #20;
		A <= 0;
		B <= 0;
		C <= 0;
        #20;

        $display("Simulation complete, results are available.");
		$finish;
    end

endmodule

