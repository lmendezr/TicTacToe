module d_flip_flop
	(output reg	Q,
	 input		D,
	 input		reset, set, clock);

	supply0 ground;

	always @ (posedge clock, reset) begin
		if (reset) Q = ground;
		else if (!set) begin 
			Q = D;
			// $display("Q = %b, D = %b, reset = %b, set = %b, clock = %b, time = %1d", Q, D, reset, set, clock, $time);
		end
		else Q = Q;
	end
endmodule