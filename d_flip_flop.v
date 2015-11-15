module d_flip_flop
	(output reg	Q,
	 input		D,
	 input		reset, set, clock);

	supply0 ground;
	supply1 vcc;

	always @ (posedge clock, posedge reset, posedge set) begin
		if (reset) Q <= ground;
		else if (set) Q <= vcc;
		else Q <= D;
	end

endmodule