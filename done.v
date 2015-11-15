// `include "d_flip_flop.v"

module done 
	(output player1_win_indicate, player2_win_indicate,
	input player1_win, player2_win, reset);
	
	supply0 ground;
	wire out1, out2;

	d_flip_flop d1(player1_win_indicate, !player2_win_indicate, reset, ground, player1_win);
	// not(out1, player1_win_indicate); //q negado a d2
	d_flip_flop d2(player2_win_indicate, !player1_win_indicate, reset, ground, player2_win);
	// not(out2, player2_win_indicate); 

	// always @(*) begin
	// 	$display("player1_win_indicate = %b, player2_win_indicate = %b, player1_win = %b, player2_win = %b, reset = %b, time: %1d",
	// 				player1_win_indicate, player2_win_indicate, player1_win, player2_win, reset, $time);
	// end
		
endmodule