`timescale 1ns / 1ns
`include "Problem1.v"

module top_module_tb;

    reg A;
    wire Out;

    top_module uut(

        .in_1(A),
        .out_1(Out)
    );

    initial begin
        
        $dumpfile("Problem1_tb.vcd");
        $dumpvars(0, top_module_tb);

        A <= 1;
        #20;
        A <= 0;
        #20;

        $display("Simulation complete, results are available.");
		$finish;
    end

endmodule