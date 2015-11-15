module d_flip_flop #(parameter N=32)
	(output reg	[N-1:0]	Q,
	 input		[N-1:0]	D,
	 input				clear, enable, clock);

	always @ (posedge clock, clear) begin
		if (clear) Q <= 1'b0;
		else if (enable) Q <= D;
		else Q <= Q;
	end
endmodule