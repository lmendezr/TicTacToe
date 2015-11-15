`include "d_flip_flop.v"

module switch
	(output switch_out, p1_out, p2_out,
	 input button, p1_profile, p2_profile, reset);

	wire button_ff_out;

	d_flip_flop button_ff(button_ff_out, 1'b1, reset, 1'b0, button);
	d_flip_flop p1_ff(p1_out, p1_profile, reset, 1'b0, button_ff_out);
	d_flip_flop p2_ff(p2_out, p2_profile, reset, 1'b0, button_ff_out);

	xor(switch_out, p1_out, p2_out);
	
endmodule