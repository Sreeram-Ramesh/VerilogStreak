`timescale 1ns / 1ns
`include "Problem22.v"

module top_module_tb;

	reg [7:0] Din;
	reg [1:0] Sel;
	reg Clk;
	output [7:0] Qout;

	top_module uut(Clk, Din, Sel, Qout);

	initial begin

		$dumpfile("Problem22_tb.vcd");
		$dumpvars(0, top_module_tb);

		Clk = 1'b0;

		Din = 8'b01001010;
		Sel = 2'b11;
		#20;

		Din = 8'b11011010;
		Sel = 2'b11;
		#20;

		Din = 8'b11101010;
		Sel = 2'b11;
		#20;

		Din = 8'b11101111;
		Sel = 2'b11;
		#20;

		Din = 8'b11111010;
		Sel = 2'b11;
		#20;

		Din = 8'b11011010;
		Sel = 2'b00;
		#20;

		$display("Simulations complete, results are ready.");
		$finish;

	end

	always begin

		#5;
		Clk = ~Clk;

	end

endmodule