module d_flip_flop
	(output reg	Q,
	 input		D,
	 input		reset, set, clock);

	always @ (posedge clock, reset) begin
		if (reset) Q <= 1'b0;
		else if (set) Q <= D;
		else Q <= Q;
	end
endmodule