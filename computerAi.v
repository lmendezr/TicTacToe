//`include "d_flip_flop.v"

module computerAi (
	input computerButton, player1, reset,    
	output output_d2
	);
wire output_d1;
wire output_d2;
supply1  vcc;
supply0  gnd;
// initial begin
// 	$display("computerAi %d", computerButton);
// end

	

d_flip_flop d1(output_d1, vcc, reset, gnd, computerButton);
d_flip_flop d2(output_d2, player1, reset, gnd, output_d1);


// always @(*) begin
// 		$display(" outputAI = %b, time: %1d", output_d2, $time);
// 	end

endmodule