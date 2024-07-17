// CMOS Inverter

module inverter(x, f);
	input x;
	output f;

	// Internal declaration
	supply1 vdd;
	supply0 gnd;

	// Not gate body
	pmos p1(f, vdd, x);
	nmos n1(f, gnd, x);
endmodule

