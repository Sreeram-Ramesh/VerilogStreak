// CMOS And Gate

module CMOSAnd(in_1, in_2, out);
	
	// Declaring the inputs
	input in_1, in_2;
	output out;

	// Power supply declaration
	supply1 vdd;
	supply0 gnd;

	// Interconnects
	wire nand_out, connector;

	// And Gate Body
	pmos p1(nand_out, vdd, in_1);
	pmos p2(nand_out, vdd, in_2);
	pmos p3(out, vdd, nand_out);

	nmos n1(nand_out, connector, in_1);
	nmos n2(connector, gnd, in_2);
	nmos n3(out, gnd, nand_out);

endmodule

