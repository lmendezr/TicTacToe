module d_flip_flop #(parameter N=32)
	(output reg	[N-1:0]	Q,
	 input		[N-1:0]	D,
	 input				reset, set, clock);

	always @ (posedge clock, reset) begin
		if (reset) Q <= 1'b0;
		else if (set) Q <= D;
		else Q <= Q;
	end
endmodule