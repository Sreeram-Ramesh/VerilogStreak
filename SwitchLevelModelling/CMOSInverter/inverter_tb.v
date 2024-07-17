`timescale 1ns / 1ns
`include "inverter.v"

module inverter_tb;

	// Declare the inputs and outputs resp
	reg in;
	wire out;

	// Design or Unit Under Test - create an instance of the main verilog file
	// Similar to C/C++
	inverter uut(
		.x(in),
		.f(out)
	);

	reg clk, rst;

	initial begin

		// Some formalities to create specific files required for processing
		$dumpfile("inverter_tb.vcd");
		$dumpvars(0, inverter_tb);

		clk = 0;
		rst = 1;
		#70
		rst = 0;
		#20;
		rst = 1;
	end

	always begin
		// Switch clock signals every 10 ns
		clk = ~clk;
		#10;
	end

	always@(negedge rst) begin
		in = 0;
	end

	always@(posedge clk, posedge rst) begin

		in = 1;
		#20;
		in = 0;
		#20;
		in = 1;
		#20;
		in = 0;
		#20;
		$display("Simulation complete, results are ready.");
		$finish;
		
	end
endmodule


