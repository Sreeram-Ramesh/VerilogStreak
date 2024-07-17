// CMOS Nor Gate

module CMOSNor(in_1, in_2, out);

	// Declaring the ports
	input in_1, in_2;
	output out;

	// Declaring the power supply
	supply1 vdd;
	supply0 gnd;

	// Interconnects
	wire connect1;

	// Nor Gate Body
	nmos n1(out, gnd, in_1);
	nmos n2(out, gnd, in_2);

	pmos p1(out, connect1, in_1);
	pmos p2(connect1, vdd, in_2);

endmodule

