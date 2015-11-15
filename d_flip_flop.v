module d_flip_flop
	(output reg	Q,
	 input		D,
	 input		reset, set, clock);

	supply0 ground;

	always @ (posedge clock, reset) begin
		if (reset) Q <= ground;
		else if (set) Q <= D;
		else Q <= Q;
	end
endmodule