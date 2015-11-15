module d_flip_flop
	(output reg	Q,
	 input		D,
	 input		reset, set, clock);

	supply0 ground;

	always @ (posedge clock, reset) begin
		if (clock) begin
			Q <= D;
		end else begin		
			Q <= ground;
		end
	end
		
	
endmodule