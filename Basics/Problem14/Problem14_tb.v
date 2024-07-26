`timescale 1ns / 1ns
`include "Problem14.v"

module top_module_tb;

	reg [4,0] A, B, C, D, E, F;
	wire [7,0] Out_1, Out_2, Out_3, Out_4;

	top_module uut(

		.in_1(A),
		.in_2(B),
		.in_3(C),
		.in_4(D),
		.in_5(E),
		.in_6(F),
		.out_1(Out_1),
		.out_2(Out_2),
		.out_3(Out_3),
		.out_4(Out_4)
	);

	initial begin

		$dumpfile("Problem14_tb.vcd");
		$dumpvars(0, top_module_tb);

		A = 5'b00000;
		B = 5'b00001;
		C = 5'b00011;
		D = 5'b00111;
		E = 5'b01111;
		F = 5'b11111;
		#120;

		$display("Simulations complete, results are ready.");
		$finish;

	end

	always begin
		
		A = A + 5'b00001;
		#40;

	end

	always begin

		B = B + 5'b00110;
		#20;

	end

	always begin

		C = C + 5'b00101;
		#30;
	
	end

	always begin

		D = D + 5'b00001;
		#20;

	end

	always begin

		E = E + 5'b00001;
		#60;

	end

endmodule
