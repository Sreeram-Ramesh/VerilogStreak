// CMOS Nand Gate

module CMOSNand(in_1, in_2, out);

	// Declaring the inputs
	input in_1, in_2;
	output out;

	// Power supply declaration
	supply1 vdd;
	supply0 gnd;

	// Interconnects
	wire connect1;

	// Nand Gate Body
	pmos p1(out, vdd, in_1);
	pmos p2(out, vdd, in_2);
	
	nmos n1(out, connect1, in_1);
	nmos n2(connect1, gnd, in_2);

endmodule
