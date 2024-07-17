// CMOS EXOR Gate

module CMOSExor(in_1, in_2, out);
	
	// Declaring the ports
	input in_1, in_2;
	output out;

	// Power supply declaration
	supply1 vdd;
	supply0 gnd;

	// Interconnects
	wire connect1, connect2, connect3, connect4, inv_out1, inv_out2;

	// EXOR Gate Body
	
	// Inverter 1
	pmos p1(inv_out1, vdd, in_1);
	nmos n1(inv_out1, gnd, in_1);

	// Inverter 2
	pmos p2(inv_out2, vdd, in_2);
	nmos n2(inv_out2, gnd, in_2);

	// Pmos body
	pmos p3(connect1, vdd, inv_out2);
	pmos p4(out, connect1, in_1);
	pmos p5(connect2, vdd, in_2);
	pmos p6(out, connect2, inv_out1);

	// Nmos body
	nmos n3(out, connect3, in_1);
	nmos n4(connect3, gnd, in_2);
	nmos n5(out, connect4, inv_out1);
	nmos n6(connect4, gnd, inv_out2);

endmodule
