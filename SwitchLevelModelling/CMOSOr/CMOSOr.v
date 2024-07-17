// CMOS OR Gate

module CMOSOr( in_1, in_2, out );

	// Declaring the ports
	input in_1, in_2;
	output out;

	// Power supply declaration
	supply1 vdd;
	supply0 gnd;

	// Interconnects
	wire connect1, nor_out;

	// Or Gate Body
	nmos n1(nor_out, vdd, in_1);
	nmos n2(nor_out, vdd, in_2);
	nmos n3(out, vdd, nor_out);

	pmos p1(nor_out, connect1, in_1);
	pmos p2(connect1, gnd, in_2);
	pmos p3(out, gnd, nor_out);
	
endmodule
