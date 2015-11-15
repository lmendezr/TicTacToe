// `include "d_flip_flop.v"

module switch
	(output switch_out, p1_out, p2_out,
	 input button, p1_profile, p2_profile, reset);

	supply0 ground;
	supply1 vcc;
	wire button_ff_out;

	d_flip_flop button_ff(button_ff_out, vcc, reset, ground, button);
	d_flip_flop p1_ff(p1_out, p1_profile, reset, ground, button_ff_out);
	d_flip_flop p2_ff(p2_out, p2_profile, reset, ground, button_ff_out);

	xor(switch_out, p1_out, p2_out);

	// always @(*) begin
	// 	$display("switch_out = %b, p1_out = %b, p2_out = %b, button = %b, p1_profile = %b, p2_profile = %b, reset = %b, time: %1d", 
	// 				switch_out, p1_out, p2_out, button, p1_profile, p2_profile, reset, $time);
	// end
	
endmodule